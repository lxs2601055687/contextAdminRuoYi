package com.ruoyi.project.controller;

import com.ruoyi.project.common.BaseResponse;
import com.ruoyi.project.common.ResultUtils;
import com.ruoyi.project.model.dto.fileInfo.ActivityFileUrlAddRequest;
import com.ruoyi.project.model.dto.fileInfo.ActivityFileUrlSearchRequest;
import com.ruoyi.project.model.dto.fileInfo.ProjectFileUrlAddRequest;
import com.ruoyi.project.model.dto.fileInfo.TeamFileUrlRequest;
import com.ruoyi.project.model.entity.FileInfo;
import com.ruoyi.project.service.FileInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.stream.Collectors;

@RestController
public class FileInfoController {
    @Resource
    FileInfoService fileInfoService;
    @PostMapping("/contest/activity/fileUrl")
    public BaseResponse<String> addActivityUrl (@RequestBody ActivityFileUrlAddRequest activityFileUrlAddRequest){
        String activityId = activityFileUrlAddRequest.getActivityId();
        String url = activityFileUrlAddRequest.getUrl();
        Long ossId = activityFileUrlAddRequest.getOssId();
      Boolean result = fileInfoService.addActivityUrl(activityId,url,ossId);
      if(result){
          return ResultUtils.success("成功");
      }else{
          return ResultUtils.success("失败");
      }
    }
    @PostMapping("/api/activity/fileUrl")
    public BaseResponse<String> addProjectUrl (@RequestBody ProjectFileUrlAddRequest projectFileUrlAddRequest){
        String projectId = projectFileUrlAddRequest.getTeamId();
        String url = projectFileUrlAddRequest.getUrl();
        Long ossId = projectFileUrlAddRequest.getOssId();
        Boolean result = fileInfoService.addProjectUrl(projectId,url,ossId);
        if(result){
            return ResultUtils.success("成功");
        }else{
            return ResultUtils.success("失败");
        }
    }
    @PostMapping("/api/activity/file")
    public BaseResponse<List<Long>> searchActivityUrl (@RequestBody ActivityFileUrlSearchRequest activityFileUrlSearchRequest){
        String activityId = activityFileUrlSearchRequest.getActivityId();
        List<FileInfo> result = fileInfoService.searchActivityUrl(activityId);
        if (result==null) {
            return ResultUtils.success(null);
        } else {
            List<Long> ossIds = result.stream()
                .map(FileInfo::getOssId)
                .collect(Collectors.toList());
            return ResultUtils.success(ossIds);
        }
    }
    @PostMapping("/api/downLoad/zip")
    public BaseResponse<List<Long>> searchTeamUrl (@RequestBody TeamFileUrlRequest teamFileUrlRequest){
        String teamId = teamFileUrlRequest.getTeamId();
        List<FileInfo> result = fileInfoService.searchTeamUrl(teamId);
        if (result==null) {
            return ResultUtils.success(null);
        } else {
            List<Long> ossIds = result.stream()
                .map(FileInfo::getOssId)
                .collect(Collectors.toList());
            return ResultUtils.success(ossIds);
        }
    }
}
