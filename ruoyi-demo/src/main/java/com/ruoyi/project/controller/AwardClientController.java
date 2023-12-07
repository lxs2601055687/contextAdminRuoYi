package com.ruoyi.project.controller;

import com.ruoyi.project.common.BaseResponse;
import com.ruoyi.project.common.ResultUtils;
import com.ruoyi.project.model.dto.award.AwardAddRequest;
import com.ruoyi.project.model.dto.award.AwardUrlRequest;
import com.ruoyi.project.model.dto.award.SearchAwardRequest;
import com.ruoyi.project.model.dto.fileInfo.ProjectFileUrlAddRequest;
import com.ruoyi.project.model.dto.fileInfo.TeamFileUrlRequest;
import com.ruoyi.project.model.dto.project.ProjectSearchRequest;
import com.ruoyi.project.model.entity.Award;
import com.ruoyi.project.model.entity.FileInfo;
import com.ruoyi.project.model.entity.Project;
import com.ruoyi.project.service.AwardClientService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;
import java.util.stream.Collectors;

@RestController
public class AwardClientController {
    @Resource
    AwardClientService  awardClientService;
    @PostMapping("/api/award/pdf")
    public BaseResponse<String> addProjectUrl (@RequestBody AwardUrlRequest awardUrlRequest){
        String teamName = awardUrlRequest.getTeamName();
        String activityName = awardUrlRequest.getActivityName();
        Long ossId = awardUrlRequest.getOssId();
        String teamId = awardUrlRequest.getTeamId();
        String status = awardUrlRequest.getStatus();

        Boolean result = awardClientService.addAwardUrl(teamId,teamName, activityName,ossId,status);
        if(result){
            return ResultUtils.success("成功");
        }else{
            return ResultUtils.success("失败");
        }
    }
    @PostMapping("/api/downLoad/pdf")
    public BaseResponse<List<Long>> searchTeamUrl (@RequestBody SearchAwardRequest searchAwardRequest) {
        String teamId = searchAwardRequest.getTeamId();
        List<Award> result = awardClientService.searchTeamUrl(teamId);
        if (result==null) {
            return ResultUtils.success(null);
        } else {
            List<Long> ossIds = result.stream()
                .mapToLong(Award::getOssId)
                .boxed()
                .collect(Collectors.toList());
            return ResultUtils.success(ossIds);
        }
    }
    @PostMapping("/api/award/update")
    public BaseResponse<Boolean> searchProject(@RequestBody AwardAddRequest awardAddRequest) {
        String teamId = awardAddRequest.getTeamId();
        String teamName = awardAddRequest.getTeamName();
        String activityName = awardAddRequest.getActivityName();
        String status = awardAddRequest.getStatus();
        Boolean result =  awardClientService.updateAward(teamId,teamName,activityName,status);
        if( result == null) {
            return  ResultUtils.success(null);
        } else {
            return ResultUtils.success(result);
        }
    }

}
