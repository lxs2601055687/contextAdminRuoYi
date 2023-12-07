package com.ruoyi.project.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ruoyi.project.model.entity.Activity;
import com.ruoyi.contest.domain.TeamInfo;
import com.ruoyi.project.model.entity.TeamClientInfo;
import com.ruoyi.project.model.entity.TeamMember;

import java.util.List;

/**
* @author 26010
* @description 针对表【team_info】的数据库操作Service
* @createDate 2023-04-19 19:50:28
*/
public interface TeamInfoClientService extends IService<TeamClientInfo> {

    List<TeamInfo> teamRegistration(String uid ,String teamName, String track, String teamLeaderName, String teacher, String teacherNumber, String activityName, List<TeamMember> teamMemberList);

     List<TeamInfo> searchTeam(String user);

    List<Activity> searchTeamByName(String user);

    List<TeamInfo> searchTeamById(String teamId);

    List<TeamInfo> getTeams(String uid);
}
