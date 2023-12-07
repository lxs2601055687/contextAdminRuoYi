package com.ruoyi.contest.domain.bo;

import com.ruoyi.common.core.validate.AddGroup;
import com.ruoyi.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.util.Date;

import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 团队管理业务对象 team_info
 *
 * @author 李祥生
 * @date 2023-04-19
 */

@Data
@EqualsAndHashCode(callSuper = true)
public class TeamInfoBo extends BaseEntity {

    /**
     * 主键id
     */
    @NotNull(message = "主键id不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 队名
     */
    @NotBlank(message = "队名不能为空", groups = { AddGroup.class, EditGroup.class })
    private String teamName;

    /**
     * 队长姓名
     */
    @NotBlank(message = "队长姓名不能为空", groups = { AddGroup.class, EditGroup.class })
    private String teamLeaderName;

    /**
     * 赛道
     */
    private String track;

    /**
     * 参加竞赛名称
     */
    @NotBlank(message = "参加竞赛名称不能为空", groups = { AddGroup.class, EditGroup.class })
    private String activityName;

    /**
     * 指导教师
     */
    private String teacher;

    /**
     * 教工号
     */
    private String teacherMember;

    /**
     * 队员
     */
    @NotBlank(message = "队员不能为空", groups = { AddGroup.class, EditGroup.class })
    private String teamMemberName;

    /**
     * 队员学号
     */
    @NotBlank(message = "队员学号不能为空", groups = { AddGroup.class, EditGroup.class })
    private String teamMemberId;


}
