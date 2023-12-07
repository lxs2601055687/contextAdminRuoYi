package com.ruoyi.project.model.dto.team;

import com.ruoyi.project.model.entity.TeamMember;
import lombok.Data;

import java.util.List;
@Data
public class TeamRegistrationRequest {
    private String teamName;
    private String teamLeaderName;
    private String track;
    private String teacher;
    private String teamLeaderUid;
    private List<TeamMember> teamMember;
    private String teacherNumber;
    private String activityName;
}
