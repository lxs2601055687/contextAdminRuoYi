package com.ruoyi.project.model.dto.student;

import lombok.Data;

import java.io.Serializable;

/**
 * 用户登录请求体
 * @author  lxs
 */
@Data
public class UserLoginRequest implements Serializable {
    private static final long serialVersionUID = 3191241716373120793L;
    private String username;

    private String password;

    private String mobile;

    private String captcha;
}
