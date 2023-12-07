package com.ruoyi.contest.domain.bo;

import com.ruoyi.common.core.validate.AddGroup;
import com.ruoyi.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.util.Date;

import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 项目管理业务对象 project
 *
 * @author 李祥生
 * @date 2023-05-12
 */

@Data
@EqualsAndHashCode(callSuper = true)
public class ProjectBo extends BaseEntity {

    /**
     * 主键id
     */
    @NotNull(message = "主键id不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 网址
     */
    private String web;

    /**
     * 作品描述
     */
    private String description;

    /**
     * 项目名称
     */
    @NotBlank(message = "项目名称不能为空", groups = { AddGroup.class, EditGroup.class })
    private String projectName;

    /**
     * 项目ID
     */
    private String projectId;

    /**
     * 项目url
     */
    private String zipUrl;

    /**
     * 网盘链接
     */
    private String disk;

    /**
     * 团队id
     */
    @NotBlank(message = "团队id不能为空", groups = { AddGroup.class, EditGroup.class })
    private String teamId;

    /**
     * 团队名
     */
    @NotBlank(message = "团队名不能为空", groups = { AddGroup.class, EditGroup.class })
    private String teamName;

    /**
     * 晋级状态
     */
    @NotNull(message = "晋级状态不能为空", groups = { AddGroup.class, EditGroup.class })
    private String status;


}
