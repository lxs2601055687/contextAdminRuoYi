package com.ruoyi.project.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.contest.Utils.RandomUtil;
import com.ruoyi.project.model.entity.Activity;
import com.ruoyi.contest.domain.TeamInfo;
import com.ruoyi.contest.mapper.TeamInfoMapper;
import com.ruoyi.project.exception.BusinessException;
import com.ruoyi.project.mapper.ActivityClientMapper;
import com.ruoyi.project.mapper.TeamInfoClientMapper;
import com.ruoyi.project.model.entity.TeamClientInfo;
import com.ruoyi.project.model.entity.TeamMember;
import com.ruoyi.project.service.TeamInfoClientService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.stream.Collectors;

/**
* @author 26010
* @description 针对表【team_info】的数据库操作Service实现
* @createDate 2023-04-19 19:50:28
*/
@Service
public class TeamInfoClientServiceImpl extends ServiceImpl<TeamInfoClientMapper, TeamClientInfo>
    implements TeamInfoClientService {
    @Resource
    TeamInfoMapper teamInfoMapper;
    @Resource
    ActivityClientMapper activityClientMapper;
    @Override
    public List<TeamInfo> teamRegistration(String uid, String teamName, String track, String teamLeaderName, String teacher, String teacherNumber, String activityName, List<TeamMember> teamMemberList) {
        long generate = RandomUtil.generate();
        QueryWrapper wrapper = new QueryWrapper();
        System.out.println(teamName);
        wrapper.eq("team_name",teamName);
        List<TeamInfo>teamInfoList = teamInfoMapper.selectList(wrapper);
        System.out.println(teamInfoList);
        if (!teamInfoList.isEmpty()) {
            throw new BusinessException(500,"该团队名已被占用，请换一个");
        } else {
            TeamInfo teamLeaderInfo = new TeamInfo();
            teamLeaderInfo.setTeamName(teamName);
            teamLeaderInfo.setTeamId(String.valueOf(generate));
            teamLeaderInfo.setActivityName(activityName);
            teamLeaderInfo.setTeacher(teacher);
            teamLeaderInfo.setTeacherMember(teacherNumber);
            teamLeaderInfo.setTrack(track);
            teamLeaderInfo.setTeamMemberId(uid);
            teamLeaderInfo.setTeamMemberName(teamLeaderName);
            teamLeaderInfo.setTeamLeaderName(teamLeaderName);
            teamInfoMapper.insert(teamLeaderInfo);
            for (TeamMember member : teamMemberList) {
                TeamInfo teamInfo = new TeamInfo();
                teamInfo.setTeamName(teamName);
                teamInfo.setTeamId(String.valueOf(generate));
                teamInfo.setActivityName(activityName);
                teamInfo.setTeacher(teacher);
                teamInfo.setTeacherMember(teacherNumber);
                teamInfo.setTrack(track);
                teamInfo.setTeamMemberId(member.getUid());
                teamInfo.setTeamMemberName(member.getName());
                teamInfo.setTeamLeaderName(teamLeaderName);
                teamInfoMapper.insert(teamInfo);
            }
        }
            QueryWrapper<TeamInfo> queryWrapper =new QueryWrapper<>();
            queryWrapper.eq("team_id",generate);
        return teamInfoMapper.selectList(queryWrapper);
    }

    @Override
    public List<TeamInfo> searchTeam(String user) {
        QueryWrapper queryWrapper =new QueryWrapper();
        queryWrapper.eq("team_member_name", user);
        return teamInfoMapper.selectList(queryWrapper);
    }

    @Override
    public List<Activity> searchTeamByName(String user) {
        QueryWrapper queryWrapper =new QueryWrapper();
        queryWrapper.eq("team_member_name", user);
        List<TeamInfo> teamInfoList = teamInfoMapper.selectList(queryWrapper);
        List<String> activityNames = teamInfoList.stream()
            .map(TeamInfo::getActivityName)
            .collect(Collectors.toList());

        List<Activity> activityList = activityClientMapper.selectList(
            new QueryWrapper<Activity>()
                .in("name", activityNames)
        );
        return activityList;
    }

    @Override
    public List<TeamInfo> searchTeamById(String teamId) {
        QueryWrapper queryWrapper =new QueryWrapper();
        queryWrapper.eq("team_id", teamId);
        return teamInfoMapper.selectList(queryWrapper);
    }

    @Override
    public List<TeamInfo> getTeams(String uid) {
        QueryWrapper<TeamInfo> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("team_member_id", uid);
        return teamInfoMapper.selectList(queryWrapper);

    }
}




