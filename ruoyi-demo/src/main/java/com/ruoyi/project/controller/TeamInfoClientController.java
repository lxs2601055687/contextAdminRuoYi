package com.ruoyi.project.controller;

import com.ruoyi.contest.domain.TeamInfo;
import com.ruoyi.project.common.BaseResponse;
import com.ruoyi.project.common.ResultUtils;
import com.ruoyi.project.model.dto.team.TeamRegistrationRequest;
import com.ruoyi.project.model.dto.team.TeamSearchRequest;
import com.ruoyi.project.model.entity.Activity;
import com.ruoyi.project.model.entity.TeamMember;
import com.ruoyi.project.service.TeamInfoClientService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/api")
public class TeamInfoClientController  {
    @Resource
    TeamInfoClientService teamInfoClientService;
    @PostMapping("/user/teamRegistration")
    public BaseResponse<List<TeamInfo>> registerTeam(@RequestBody TeamRegistrationRequest teamRegistrationRequest) {
        System.out.println(teamRegistrationRequest);
        String teamName = teamRegistrationRequest.getTeamName();
        String track = teamRegistrationRequest.getTrack();
        String uid =teamRegistrationRequest.getTeamLeaderUid();
        String teamLeaderName = teamRegistrationRequest.getTeamLeaderName();
        String teacher = teamRegistrationRequest.getTeacher();
        String teacherNumber = teamRegistrationRequest.getTeacherNumber();
        String activityName = teamRegistrationRequest.getActivityName();
        List<TeamMember> teamMemberList = teamRegistrationRequest.getTeamMember();
        List<TeamInfo> teamInfo = teamInfoClientService.teamRegistration(uid,teamName, track, teamLeaderName, teacher, teacherNumber, activityName, teamMemberList);
        return ResultUtils.success(teamInfo);
    }

    @PostMapping("/team/searchById")
    public BaseResponse<List<TeamInfo>> getTeamById (@RequestBody TeamSearchRequest teamSearchRequest){
        String teamId = teamSearchRequest.getTeamId();
        List<TeamInfo> teamInfoList = teamInfoClientService.searchTeamById(teamId);
        return ResultUtils.success(teamInfoList);
    }
    @PostMapping("/team/search")
    public BaseResponse<List<TeamInfo>> getTeams (@RequestBody TeamSearchRequest teamSearchRequest){
        String user = teamSearchRequest.getUser();
        List<TeamInfo> teamInfoList = teamInfoClientService.searchTeam(user);
        return ResultUtils.success(teamInfoList);
    }
    @PostMapping("/team/searchByName")
    public BaseResponse<List<Activity>> getActivityByTeam (@RequestBody TeamSearchRequest teamSearchRequest) {
        String user = teamSearchRequest.getUser();
        List<com.ruoyi.project.model.entity.Activity> activities = teamInfoClientService.searchTeamByName(user);
        return ResultUtils.success(activities);
    }
    @GetMapping("/api/workplace/teams")
    public BaseResponse<List<TeamInfo>> getTeams (@RequestParam("uid") String uid) {

            List<TeamInfo> teamInfoList =  teamInfoClientService.getTeams(uid);
            return ResultUtils.success(teamInfoList);
    }
}
