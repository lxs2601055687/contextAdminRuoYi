package com.ruoyi.contest.domain.bo;

import com.ruoyi.common.core.validate.AddGroup;
import com.ruoyi.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.util.Date;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 竞赛管理业务对象 activity
 *
 * @author 李祥生
 * @date 2023-04-14
 */

@Data
@EqualsAndHashCode(callSuper = true)
public class ActivityBo extends BaseEntity {

    /**
     * 竞赛ID
     */
    private String activityId;

    /**
     * 主键ID
     */
    @NotNull(message = "主键ID不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 竞赛名称
     */
    @NotBlank(message = "竞赛名称不能为空", groups = { AddGroup.class, EditGroup.class })
    private String name;

    /**
     * 开始时间
     */
    @NotBlank(message = "开始时间不能为空", groups = { AddGroup.class, EditGroup.class })
    private String startTime;

    /**
     * 结束时间
     */
    @NotBlank(message = "结束时间不能为空", groups = { AddGroup.class, EditGroup.class })
    private String endTime;

    /**
     * 负责人
     */
    @NotBlank(message = "负责人不能为空", groups = { AddGroup.class, EditGroup.class })
    private String owner;

    /**
     * 网站
     */
    private String website;

    /**
     * 类型
     */
    @NotBlank(message = "类型不能为空", groups = { AddGroup.class, EditGroup.class })
    private String type;

    /**
     * 描述
     */
    private String description;

    private int status;


}
