package com.ruoyi.project.controller;

import com.ruoyi.common.core.domain.R;
import com.ruoyi.contest.service.IProjectService;
import com.ruoyi.project.common.BaseResponse;
import com.ruoyi.project.common.ResultUtils;
import com.ruoyi.project.model.dto.project.ProjectAddRequest;
import com.ruoyi.project.model.dto.project.ProjectSearchRequest;
import com.ruoyi.project.model.entity.Project;
import com.ruoyi.project.service.ProjectClientService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
public class ProjectClientController {
    @Resource
    ProjectClientService projectClientService;
    @Resource
    IProjectService iProjectService;

    @PostMapping("/api/add/project")
    public BaseResponse<Boolean> updateProject(@RequestBody ProjectAddRequest projectAddRequest) {
        String projectName = projectAddRequest.getProjectName();
        String description = projectAddRequest.getDescription();
        String web = projectAddRequest.getWeb();
        String disk = projectAddRequest.getDisk();
        String teamId = projectAddRequest.getTeamId();
        String teamName = projectAddRequest.getTeamName();
         Boolean result =  projectClientService.updateProject(projectName,description,web,disk,teamName,teamId);
         if(result) {
             return ResultUtils.success(true);
         }
         else{
             return ResultUtils.success(false);
         }

    }
    @PostMapping("/api/search/project")
    public BaseResponse<Project> searchProject(@RequestBody ProjectSearchRequest projectSearchRequest) {
        String teamId = projectSearchRequest.getTeamId();
        com.ruoyi.project.model.entity.Project result =  projectClientService.searchProject(teamId);
        if( result == null) {
            return  ResultUtils.success(null);
        } else {
            return ResultUtils.success(result);
        }
    }
    @PostMapping("/api/project/good")
    public BaseResponse<List> getGoodProject () {
        List<Project> goodProjectList = projectClientService.getGoodProject();
        return ResultUtils.success(goodProjectList);
    }
    @GetMapping("/api/contest/project/download/{teamId}")
    public R<Long> getProject (@PathVariable String teamId){
        Long ossId = iProjectService.getProject(teamId);
        return R.ok(ossId);
    }
}
