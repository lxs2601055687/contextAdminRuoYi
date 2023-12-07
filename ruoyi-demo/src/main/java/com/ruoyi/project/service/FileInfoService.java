package com.ruoyi.project.service;

import com.ruoyi.project.model.entity.FileInfo;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
* @author 26010
* @description 针对表【file_info】的数据库操作Service
* @createDate 2023-05-06 20:39:25
*/
public interface FileInfoService extends IService<FileInfo> {


    Boolean addActivityUrl(String activityId, String url, Long ossId);

    List<FileInfo> searchActivityUrl(String activityId);

    Boolean addProjectUrl(String projectId, String url, Long ossId);

    List<FileInfo> searchTeamUrl(String teamId);
}
