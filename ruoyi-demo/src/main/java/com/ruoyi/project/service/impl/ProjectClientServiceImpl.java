package com.ruoyi.project.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.contest.Utils.RandomUtil;
import com.ruoyi.project.mapper.OssMapper;
import com.ruoyi.project.mapper.ProjectClientMapper;
import com.ruoyi.project.model.entity.Project;
import com.ruoyi.project.service.ProjectClientService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
* @author 26010
* @description 针对表【project】的数据库操作Service实现
* @createDate 2023-05-13 13:13:20
*/
@Service
public class ProjectClientServiceImpl extends ServiceImpl<ProjectClientMapper, Project>
    implements ProjectClientService {

    @Resource
    ProjectClientMapper projectClientMapper;


    public Boolean updateProject(String projectName, String description, String web, String disk, String teamName, String teamId) {
        // Check if project with the given teamId already exists
        Project project = projectClientMapper.selectOne(new QueryWrapper<Project>().eq("team_id", teamId));

        if (project == null) {
            // If project doesn't exist, insert a new record
            project = new Project();
            project.setProjectName(projectName);
            project.setDescription(description);
            project.setWeb(web);
            project.setDisk(disk);
            project.setTeamName(teamName);
            project.setTeamId(teamId);
            project.setProjectId(String.valueOf(RandomUtil.generate()));
            project.setStatus("暂未设置");
            int result = projectClientMapper.insert(project);

            return result > 0;
        } else {
            // If project already exists, update the existing record
            project.setProjectName(projectName);
            project.setDescription(description);
            project.setWeb(web);
            project.setDisk(disk);
            project.setTeamName(teamName);
            int result = projectClientMapper.updateById(project);

            return result > 0;
        }
    }

    @Override
    public Project searchProject(String teamId) {
       QueryWrapper<Project> queryWrapper = new QueryWrapper<>();
       queryWrapper.eq("team_id", teamId);
        return projectClientMapper.selectOne(queryWrapper);
    }

    @Override
    public List<Project> getGoodProject() {
        QueryWrapper<Project> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("status", "国家级");
        return projectClientMapper.selectList(queryWrapper);
    }
}




