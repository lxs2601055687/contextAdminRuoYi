package com.ruoyi.project.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ruoyi.project.model.entity.User;

import javax.servlet.http.HttpServletRequest;

/**
* @author 26010
* @description 针对表【student】的数据库操作Service
* @createDate 2023-02-25 16:15:56
*/
public interface UserClientService extends IService<User> {
    /**
     * 用户注册
     *
     * @param userAccount   用户账户
     * @param userPassword  用户密码
     *
     * @return 新用户 id
     */
    String userRegister(String userAccount, String userPassword, String name);

    /**
     * 发送验证码
     * @param phone
     *
     * @return
     */
    public String sendCode(String phone);

    /**
     * 用户登录
     *
     * @param uid  用户账户
     * @param Password 用户密码
     * @param request
     * @return 脱敏后的用户信息
     */
     User userLogin(String uid, String Password, HttpServletRequest request);

    /**
     * 获取当前登录用户
     *
     * @param token
     * @return
     */
     User getLoginUser(String token);

    /**
     * 是否为管理员
     *
     * @param request
     * @return
     */
    boolean isAdmin(HttpServletRequest request);

    /**
     * 用户注销
     *
     * @param request
     * @return
     */
    boolean userLogout(HttpServletRequest request);

    User selectByInvitation(String invitation);

     String sendCode2(String mobile);

    User phoneUpdate(String uid, String phone, String code);

    User passwordUpdate(String uid, String oldPassword, String newPassword);
}
