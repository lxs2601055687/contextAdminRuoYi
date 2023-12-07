package com.ruoyi.contest.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 学生管理对象 user
 *
 * @author 李祥生
 * @date 2023-04-14
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("user")
public class User extends BaseEntity {

    private String Invitation;
    private static final long serialVersionUID=1L;

    /**
     * 学号
     */
    private String uid;
    /**
     * 姓名
     */
    private String name;
    /**
     * 邮箱
     */
    private String email;
    /**
     * 学院
     */
    private String academy;
    /**
     *
     */
    private Integer deleted;
    /**
     * 性别
     */
    private Integer gender;
    /**
     *
     */
    private String role;
    /**
     * 身份证号
     */
    private String number;
    /**
     * 班级
     */
    private String studentClass;
    /**
     * 年级
     */
    private String grade;
    /**
     * 专业
     */
    private String specializedSubject;
    /**
     * 密码
     */
    private String password;
    /**
     * 手机号
     */
    private String phone;
    /**
     * ID
     */
    @TableId(value = "id",type = IdType.AUTO)
    private Long id;


}
