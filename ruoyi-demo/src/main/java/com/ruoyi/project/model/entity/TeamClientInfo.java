package com.ruoyi.project.model.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @TableName team_info
 */
@TableName(value ="team_info")
@Data
public class TeamClientInfo implements Serializable {
    /**
     * 主键id
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 队名
     */
    private String teamName;

    /**
     * 队长学号
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
    private Integer teamId;

    /**
     *
     */
    private String createBy;

    /**
     *
     */
    private Date createTime;

    /**
     *
     */
    private String updateBy;

    /**
     *
     */
    private Date updateTime;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        TeamClientInfo other = (TeamClientInfo) that;
        return (this.getId() == null ? other.getId() == null : this.getId().equals(other.getId()))
            && (this.getTeamName() == null ? other.getTeamName() == null : this.getTeamName().equals(other.getTeamName()))
            && (this.getTeamLeaderName() == null ? other.getTeamLeaderName() == null : this.getTeamLeaderName().equals(other.getTeamLeaderName()))
            && (this.getDeleted() == null ? other.getDeleted() == null : this.getDeleted().equals(other.getDeleted()))
            && (this.getTrack() == null ? other.getTrack() == null : this.getTrack().equals(other.getTrack()))
            && (this.getActivityName() == null ? other.getActivityName() == null : this.getActivityName().equals(other.getActivityName()))
            && (this.getTeacher() == null ? other.getTeacher() == null : this.getTeacher().equals(other.getTeacher()))
            && (this.getTeacherMember() == null ? other.getTeacherMember() == null : this.getTeacherMember().equals(other.getTeacherMember()))
            && (this.getTeamMemberName() == null ? other.getTeamMemberName() == null : this.getTeamMemberName().equals(other.getTeamMemberName()))
            && (this.getTeamMemberId() == null ? other.getTeamMemberId() == null : this.getTeamMemberId().equals(other.getTeamMemberId()))
            && (this.getTeamId() == null ? other.getTeamId() == null : this.getTeamId().equals(other.getTeamId()))
            && (this.getCreateBy() == null ? other.getCreateBy() == null : this.getCreateBy().equals(other.getCreateBy()))
            && (this.getCreateTime() == null ? other.getCreateTime() == null : this.getCreateTime().equals(other.getCreateTime()))
            && (this.getUpdateBy() == null ? other.getUpdateBy() == null : this.getUpdateBy().equals(other.getUpdateBy()))
            && (this.getUpdateTime() == null ? other.getUpdateTime() == null : this.getUpdateTime().equals(other.getUpdateTime()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getId() == null) ? 0 : getId().hashCode());
        result = prime * result + ((getTeamName() == null) ? 0 : getTeamName().hashCode());
        result = prime * result + ((getTeamLeaderName() == null) ? 0 : getTeamLeaderName().hashCode());
        result = prime * result + ((getDeleted() == null) ? 0 : getDeleted().hashCode());
        result = prime * result + ((getTrack() == null) ? 0 : getTrack().hashCode());
        result = prime * result + ((getActivityName() == null) ? 0 : getActivityName().hashCode());
        result = prime * result + ((getTeacher() == null) ? 0 : getTeacher().hashCode());
        result = prime * result + ((getTeacherMember() == null) ? 0 : getTeacherMember().hashCode());
        result = prime * result + ((getTeamMemberName() == null) ? 0 : getTeamMemberName().hashCode());
        result = prime * result + ((getTeamMemberId() == null) ? 0 : getTeamMemberId().hashCode());
        result = prime * result + ((getTeamId() == null) ? 0 : getTeamId().hashCode());
        result = prime * result + ((getCreateBy() == null) ? 0 : getCreateBy().hashCode());
        result = prime * result + ((getCreateTime() == null) ? 0 : getCreateTime().hashCode());
        result = prime * result + ((getUpdateBy() == null) ? 0 : getUpdateBy().hashCode());
        result = prime * result + ((getUpdateTime() == null) ? 0 : getUpdateTime().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", teamName=").append(teamName);
        sb.append(", teamLeaderName=").append(teamLeaderName);
        sb.append(", deleted=").append(deleted);
        sb.append(", track=").append(track);
        sb.append(", activityName=").append(activityName);
        sb.append(", teacher=").append(teacher);
        sb.append(", teacherMember=").append(teacherMember);
        sb.append(", teamMemberName=").append(teamMemberName);
        sb.append(", teamMemberId=").append(teamMemberId);
        sb.append(", teamId=").append(teamId);
        sb.append(", createBy=").append(createBy);
        sb.append(", createTime=").append(createTime);
        sb.append(", updateBy=").append(updateBy);
        sb.append(", updateTime=").append(updateTime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}
