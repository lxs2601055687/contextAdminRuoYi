package com.ruoyi.project.model.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 *
 * @TableName student
 */
@TableName(value ="user")
@Data
public class User implements Serializable {
    /**
     *
     */
    @TableId
    private String uid;

    /**
     *
     */
    private String name;

    /**
     * 邀请码
     */
    private String invitation;
    /**
     * 邮箱
     */
    private String email;

    /**
     *
     */
    private String academy;

    /**
     *
     */
    @TableLogic
    private Integer deleted;

    /**
     *
     */
    private Integer gender;

    /**
     * 身份
     */
    private String role;

    /**
     *
     */
    private String number;

    /**
     *
     */
    private String studentClass;

    /**
     *
     */
    private String grade;

    /**
     *
     */
    private String specializedSubject;
    private String password;

    private String phone;
    private String profile;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    public User(String uid) {
        this.uid = uid;
    }
    public User (){

    }
}
