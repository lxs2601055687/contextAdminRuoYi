package com.ruoyi.contest.domain.bo;

import com.ruoyi.common.core.validate.AddGroup;
import com.ruoyi.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.util.Date;

import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 个人竞赛业务对象 individual_registration
 *
 * @author 李祥生
 * @date 2023-05-06
 */

@Data
@EqualsAndHashCode(callSuper = true)
public class IndividualRegistrationBo extends BaseEntity {

    /**
     * 姓名
     */
    @NotBlank(message = "姓名不能为空", groups = { AddGroup.class, EditGroup.class })
    private String name;

    /**
     * 学号
     */
    @NotBlank(message = "学号不能为空", groups = { AddGroup.class, EditGroup.class })
    private String uid;

    /**
     * 主键id
     */
    @NotNull(message = "主键id不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 学院
     */
    private String academy;

    /**
     * 专业
     */
    private String specializedSubject;

    /**
     * 竞赛ID
     */
    @NotBlank(message = "竞赛ID不能为空", groups = { AddGroup.class, EditGroup.class })
    private String activityId;

    /**
     * 竞赛名称
     */
    @NotBlank(message = "竞赛名称不能为空", groups = { AddGroup.class, EditGroup.class })
    private String activityName;


}
