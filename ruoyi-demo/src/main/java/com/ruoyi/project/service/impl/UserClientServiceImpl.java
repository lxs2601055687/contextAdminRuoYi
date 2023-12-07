package com.ruoyi.project.service.impl;

import cn.hutool.core.util.RandomUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.project.common.ErrorCode;
import com.ruoyi.project.exception.BusinessException;
import com.ruoyi.project.mapper.UserClientMapper;
import com.ruoyi.project.model.entity.User;
import com.ruoyi.project.service.UserClientService;
import com.ruoyi.project.utils.JWTUtils;
import com.ruoyi.project.utils.RegexUtils;
import com.ruoyi.project.utils.ShortMessageUtils;
import com.ruoyi.project.utils.UUIDUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

import static com.ruoyi.project.constant.RedisConstants.*;
import static com.ruoyi.project.constant.UserConstant.USER_LOGIN_STATE;

/**
* @author 26010
* @description 针对表【User】的数据库操作Service实现
* @createDate 2023-02-25 16:15:56
*/
@Service
public class UserClientServiceImpl extends ServiceImpl<UserClientMapper, User>
    implements UserClientService {
    @Resource
    UserClientMapper userClientMapper;
    @Resource
    StringRedisTemplate stringRedisTemplate;

    @Override
    public String userRegister(String userAccount, String userPassword,String name) {

          User newUser=new User();
          String encryptPassword = DigestUtils.md5DigestAsHex(userPassword.getBytes());
          newUser.setUid(userAccount);
          newUser.setRole("user");
          newUser.setPassword(encryptPassword);
          newUser.setName(name);
          newUser.setInvitation( UUIDUtils.getUUID());
            int insert = userClientMapper.insert(newUser);
            if(insert==1){
             return userAccount;
            }
        return userAccount;
    }

    @Override
    public User userLogin(String uid, String password, HttpServletRequest request) {
        if (StringUtils.isAnyBlank(uid, password)) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "参数为空");
        }
        if (uid.length() <4) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "账号错误");
        }
        if (password.length() <3) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "密码错误");
        }
        // 2. 加密
        String encryptPassword = DigestUtils.md5DigestAsHex(password.getBytes());
        // 查询用户是否存在
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uid", uid);
        queryWrapper.eq("password",encryptPassword);
        User user = userClientMapper.selectOne(queryWrapper);
        // 用户不存在
        if (user == null) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "用户不存在或密码错误");
        }
        // 3. 记录用户的登录态
        request.getSession().setAttribute(USER_LOGIN_STATE, user);
        return user;

    }

    @Override
    public User getLoginUser(String token) {
        if(token==null){
            throw new BusinessException(ErrorCode.TOKEN_ERROR);
        }
        Map<String, Object> map = JWTUtils.checkToken(token);
        String uid = String.valueOf(map.get("uid"));
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uid", uid);
        return userClientMapper.selectOne(queryWrapper);
    }

    @Override
    public boolean isAdmin(HttpServletRequest request) {
        return false;
    }

    @Override
    public boolean userLogout(HttpServletRequest request) {
        return false;
    }


    @Override
    public String sendCode(String phone) {
        // 1.校验手机号
        if (RegexUtils.isPhoneInvalid(phone)) {
            // 2.如果不符合，返回错误信息
            return "手机号格式错误";
        }
        // 3.符合，生成验证码
        String code = RandomUtil.randomNumbers(6);
        ShortMessageUtils.setShotMessage(phone,code);
        stringRedisTemplate.opsForValue().set(LOGIN_CODE_KEY + phone, code, LOGIN_CODE_TTL, TimeUnit.MINUTES);
        // 5.发送验证码
        // 返回ok
        return "成功";
    }

    @Override
    public User selectByInvitation(String invitation) {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("Invitation",invitation);
        return userClientMapper.selectOne(queryWrapper);
    }

    @Override
    public String sendCode2(String phone) {
        // 1.校验手机号
        System.out.println(phone);
        if (RegexUtils.isPhoneInvalid(phone)) {
            // 2.如果不符合，返回错误信息
            return "手机号格式错误";
        }
        // 3.符合，生成验证码
        String code = RandomUtil.randomNumbers(6);
        ShortMessageUtils.setShotMessage(phone,code);
        stringRedisTemplate.opsForValue().set(UPDATE_CODE_KEY + phone, code, LOGIN_CODE_TTL, TimeUnit.MINUTES);
        // 5.发送验证码
        // 返回ok
        return "成功";
    }

    @Override
    public User passwordUpdate(String uid,String oldPassword,String newPassword){
        String encryptOldPassword = DigestUtils.md5DigestAsHex(oldPassword.getBytes());
        String encryptNewPassword = DigestUtils.md5DigestAsHex(newPassword.getBytes());
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uid", uid);
        User user = userClientMapper.selectOne(queryWrapper);
        if(!Objects.equals(user.getPassword(), encryptOldPassword)){
            return null;
        }
        user.setPassword(encryptNewPassword);
        int update=userClientMapper.updateById(user);
        return user;
    }

    @Override
    public User phoneUpdate(String uid,String phone,String code){
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uid", uid);
        User user = userClientMapper.selectOne(queryWrapper);
        String cacheCode = stringRedisTemplate.opsForValue().get(UPDATE_CODE_KEY + phone);
        if (cacheCode == null || !cacheCode.equals(code)) {
            return null;
        }
        user.setPhone(phone);
        int update=userClientMapper.updateById(user);
        return user;
    }
}




