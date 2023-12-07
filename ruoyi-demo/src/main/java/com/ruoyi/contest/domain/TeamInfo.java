package com.ruoyi.contest.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 团队管理对象 team_info
 *
 * @author 李祥生
 * @date 2023-04-19
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("team_info")
public class TeamInfo extends BaseEntity {

    private static final long serialVersionUID=1L;

    /**
     * 主键id
     */
    @TableId(value = "id",type = IdType.AUTO)
    private Long id;
    /**
     * 队名
     */
    private String teamName;
    /**
     * 队长姓名
     */
    private String teamLeaderName;
    /**
     * 逻辑删除
     */
    private Integer deleted;
    /**
     * 赛道
     */
    private String track;
    /**
     * 参加竞赛名称
     */
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
    private String teamMemberName;
    /**
     * 队员学号
     */
    private String teamMemberId;
    /**
     * 团队ID
     */
    private String teamId;

}
