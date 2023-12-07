package com.ruoyi.project.controller;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ruoyi.project.common.BaseResponse;
import com.ruoyi.project.common.ErrorCode;
import com.ruoyi.project.common.ResultUtils;
import com.ruoyi.project.exception.BusinessException;
import com.ruoyi.project.mapper.UserClientMapper;
import com.ruoyi.project.model.dto.student.*;
import com.ruoyi.project.model.entity.Permission;
import com.ruoyi.project.model.entity.Token;
import com.ruoyi.project.model.entity.User;
import com.ruoyi.project.model.vo.StudentVo;
import com.ruoyi.project.model.vo.TeamRegisterVO;
import com.ruoyi.project.service.UserClientService;
import com.ruoyi.project.utils.JWTUtils;
import com.ruoyi.project.utils.RegexUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;

import static com.ruoyi.project.constant.RedisConstants.LOGIN_CODE_KEY;

/**
 * 用户接口
 *
 * @author yupi
 */
@RestController
public class UserClientController {

    @Resource
    private UserClientService service;

    // region 登录相关
    @Resource
    Permission permission;

    @Resource
    UserClientMapper userClientMapper;
    @Resource
    StringRedisTemplate stringRedisTemplate;
    @PostMapping("/api/user/selectByInvitation")
    public BaseResponse<TeamRegisterVO> selectByInvitation(@RequestBody UserSelectByInvitationRequest userSelectByInvitationRequest){
        String invitation = userSelectByInvitationRequest.getInvitation();
        User user = service.selectByInvitation(invitation);
        TeamRegisterVO teamRegisterVO = new TeamRegisterVO();
        teamRegisterVO.setName(user.getName());
        teamRegisterVO.setAcademy(user.getAcademy());
        teamRegisterVO.setUid(user.getUid());
        teamRegisterVO.setGrade(user.getGrade());
        return ResultUtils.success(teamRegisterVO);
    }
    @PostMapping("/api/account/sms")
    public BaseResponse<String> sendCode(@RequestBody USerShotMessageRequest uSerShotMessageRequest){
        String mobile = uSerShotMessageRequest.getMobile();
        return ResultUtils.success(service.sendCode(mobile));
    }
    @PostMapping("/api/account/sms2")
    public BaseResponse<String> sendCode2(@RequestBody USerShotMessageRequest uSerShotMessageRequest){
        String mobile = uSerShotMessageRequest.getMobile();
        return ResultUtils.success(service.sendCode2(mobile));
    }

    @PostMapping("/api/auth/register")
    public BaseResponse<String> userRegister(@RequestBody UserRegisterRequest userRegisterRequest) {

        if (userRegisterRequest == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR);
        }
        String userAccount = userRegisterRequest.getUid();
        String userPassword = userRegisterRequest.getPassword();
        String name=userRegisterRequest.getUsername();
        if (StringUtils.isAnyBlank(userAccount, userPassword)) {
            return null;
        }
       String uid = service.userRegister(userAccount, userPassword,name);
        return ResultUtils.success(uid);
    }

    /**
     * 验证用户名和密码
     * @param userRegisterRequest
     * @return
     */
    @PostMapping("/api/user/verification")
    public BaseResponse<String> userVerification(@RequestBody UserRegisterRequest userRegisterRequest){
        String userAccount = userRegisterRequest.getUid();
        String userPassword = userRegisterRequest.getPassword();
        String name=userRegisterRequest.getUsername();
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uid", userAccount);
        queryWrapper.eq("name", name);
        User user = userClientMapper.selectOne(queryWrapper);
        QueryWrapper<User> queryWrapper1 = new QueryWrapper<>();
        queryWrapper1.eq("uid",userAccount);
        User user1 = userClientMapper.selectOne(queryWrapper1);
        if (user!=null||user1!=null) {
            return ResultUtils.success("false");
        }
        return ResultUtils.success("true");
    }


    @GetMapping("/api/user/nav")
      public String getUserNav(HttpServletRequest request){
        String header = request.getHeader("Access-Token");
        User loginUser = service.getLoginUser(header);
        if(Objects.equals(loginUser.getRole(), "user")){
            return permission.getAdminPermission();
        }else
            return permission.getUserPermission();
    }
    /**
     * 用户登录
     * @param userLoginRequest
     * @param request
     * @return
     */
    @PostMapping("/api/auth/login")
    public BaseResponse<Token> userLogin(@RequestBody UserLoginRequest userLoginRequest, HttpServletRequest request) {
      Token token=new Token();
        System.out.println(userLoginRequest.toString());
        if (userLoginRequest.getPassword() == null&&userLoginRequest.getUsername()==null&&userLoginRequest.getMobile()==null&&userLoginRequest.getCaptcha()==null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR);
        }
        if(userLoginRequest.getUsername()==null&&userLoginRequest.getPassword()==null){
            String phone = userLoginRequest.getMobile();
            if (RegexUtils.isPhoneInvalid(phone)) {
                // 2.如果不符合，返回错误信息
                return ResultUtils.error(405,"手机号格式错误！");
            }
            // 3.从redis获取验证码并校验
            String cacheCode = stringRedisTemplate.opsForValue().get(LOGIN_CODE_KEY + phone);
            String code = userLoginRequest.getCaptcha();
            if (cacheCode == null || !cacheCode.equals(code)) {
                // 不一致，报错
                throw new BusinessException(ErrorCode.FORBIDDEN_ERROR);
            }
            // 4.一致，根据手机号查询用户 select * from tb_user where phone = ?
            QueryWrapper<User> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("phone",phone);
            User user = userClientMapper.selectOne(queryWrapper);
            // 5.判断用户是否存在
            if (user == null) {
                throw new BusinessException(ErrorCode.FORBIDDEN_ERROR);
            }
            else {
                Long id = Long.valueOf(user.getUid());
                String JWTToken = JWTUtils.createToken(id);
                token.setToken(JWTToken);
            }
        }else{
            String uid = userLoginRequest.getUsername();
            String userPassword = userLoginRequest.getPassword();
            if (StringUtils.isAnyBlank(uid, userPassword)) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR);
            }
            User user = service.userLogin(uid,userPassword,request);
            if(user == null){
                throw new BusinessException(ErrorCode.FORBIDDEN_ERROR);
            }
            else {
                Long id = Long.valueOf(user.getUid());
                String JWTToken = JWTUtils.createToken(id);
                token.setToken(JWTToken);
            }
        }


      return ResultUtils.success(token);
    }

    @GetMapping("/api/user/info")
    public BaseResponse<StudentVo> getCurrentUserInfo(@RequestHeader("AccessToken") Map<String,String>Access_Token ,HttpServletRequest request){
        String header = request.getHeader("Access-Token");
        User loginUser = service.getLoginUser(header);
        //脱敏过滤掉不能展示给前端的信息
        //Optional类用于解决项目中可能出现的空指针异常ofNullable（）
        // 方法传入一个参数如果该对象不为null，则将其封装为Optional对象并返回；如果该对象为null，则返回一个空的Optional对象。
        StudentVo studentVo = Optional.ofNullable(loginUser)
                .map(user -> {
                    StudentVo vo = new StudentVo();
                    vo.setEmail(user.getEmail());
                    vo.setAcademy(user.getAcademy());
                    vo.setUid(user.getUid());
                    vo.setName(user.getName());
                    vo.setRole(user.getRole());
                    vo.setSpecializedSubject(user.getSpecializedSubject());
                    String phone = user.getPhone();
                    vo.setPhone(phone);
                    vo.setGrade(user.getGrade());
                    vo.setProfile(user.getProfile());
                    vo.setInvitation(user.getInvitation());
                    return vo;
                }).orElse(null);
        return ResultUtils.success(studentVo);
    }

    /**
     * 用户注销
     *
     * @param request
     * @return
     */
    @PostMapping("/api/auth/logout")
    public BaseResponse<Boolean> userLogout(HttpServletRequest request) {
        if (request == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR);
        }
        String header = request.getHeader("Access-Token");
        boolean result = service.userLogout(request);
        return ResultUtils.success(result);
    }


    @PostMapping("/api/user/update")
    public BaseResponse<String> userUpdate(@RequestBody UserUpdateRequest userUpdateRequest) {
        String academy = userUpdateRequest.getAcademy();
        String email = userUpdateRequest.getEmail();
        String grade = userUpdateRequest.getGrade();
        String phone = userUpdateRequest.getPhone();
        String profile = userUpdateRequest.getProfile();
        String specializedSubject = userUpdateRequest.getSpecializedSubject();
        String uid = userUpdateRequest.getUid();
        String name = userUpdateRequest.getName();
        User updateUser =  new User();
        updateUser.setUid(uid);
        updateUser.setSpecializedSubject(specializedSubject);
        updateUser.setPhone(phone);
        updateUser.setAcademy(academy);
        updateUser.setProfile(profile);
        updateUser.setName(name);
        updateUser.setEmail(email);
        updateUser.setGrade(grade);
        int i = userClientMapper.updateById(updateUser);
        if(i!=1){
           return ResultUtils.success("更改失败");
        }
        return ResultUtils.success(uid);
    }
    @PostMapping("/api/user/passwordUpdate")
    public BaseResponse<String> passwordUpdate(@RequestBody PasswordUpdateRequest passwordUpdateRequest){
        String uid=passwordUpdateRequest.getUid();
        String oldPassword=passwordUpdateRequest.getOldPassword();
        String newPassword=passwordUpdateRequest.getNewPassword();
        if (StringUtils.isAnyBlank(oldPassword,newPassword)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR,"输入栏不能为空!");
        }
        User user = service.passwordUpdate(uid,oldPassword,newPassword);
        if (user==null){
            throw new BusinessException(ErrorCode.PARAMS_ERROR,"旧密码错误!");
        }
        return ResultUtils.success(newPassword);

    }


    @PostMapping("/api/user/phoneUpdate")
    public BaseResponse<Boolean> phoneUpdate(@RequestBody PhoneUpdateRequest phoneUpdateRequest){
        String uid=phoneUpdateRequest.getUid();
        String phone=phoneUpdateRequest.getPhone();
        String code=phoneUpdateRequest.getCode();
        if(phone==null){
            throw new BusinessException(ErrorCode.PARAMS_ERROR,"手机号不能为空!");
        }
        if(code==null){
            throw new BusinessException(ErrorCode.PARAMS_ERROR,"验证码不能为空!");
        }
        if (RegexUtils.isPhoneInvalid(phone)) {
            return ResultUtils.error(405,"手机号格式错误！");
        }
        User user=service.phoneUpdate(uid,phone,code);
        if(user==null){
            throw new BusinessException(ErrorCode.PARAMS_ERROR,"验证码错误!");
        }
        return ResultUtils.success(true);
    }
}
