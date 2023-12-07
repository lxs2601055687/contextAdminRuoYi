package com.ruoyi.contest.domain.bo;

import com.ruoyi.common.core.validate.AddGroup;
import com.ruoyi.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.util.Date;

import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 学生管理业务对象 user
 *
 * @author 李祥生
 * @date 2023-04-14
 */

@Data
@EqualsAndHashCode(callSuper = true)
public class UserBo extends BaseEntity {

    /**
     * 学号
     */
    @NotBlank(message = "学号不能为空", groups = { AddGroup.class, EditGroup.class })
    private String uid;

    /**
     * 姓名
     */
    @NotBlank(message = "姓名不能为空", groups = { AddGroup.class, EditGroup.class })
    private String name;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 学院
     */
    @NotBlank(message = "学院不能为空", groups = { AddGroup.class, EditGroup.class })
    private String academy;

    /**
     * 性别
     */
    private Integer gender;

    /**
     * 身份证号
     */
    private String iDNumber;

    /**
     * 班级
     */
    @NotBlank(message = "班级不能为空", groups = { AddGroup.class, EditGroup.class })
    private String studentClass;

    /**
     * 年级
     */
    private String grade;

    /**
     * 专业
     */
    @NotBlank(message = "专业不能为空", groups = { AddGroup.class, EditGroup.class })
    private String specializedSubject;

    /**
     * 手机号
     */
    private String phone;

    /**
     * ID
     */
    @NotNull(message = "ID不能为空", groups = { EditGroup.class })
    private Long id;


}
