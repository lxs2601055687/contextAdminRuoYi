package com.ruoyi.project.service;

import com.ruoyi.project.model.entity.Project;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
* @author 26010
* @description 针对表【project】的数据库操作Service
* @createDate 2023-05-13 13:13:20
*/
public interface ProjectClientService extends IService<Project> {

    Boolean updateProject(String projectName, String description, String web, String disk, String teamName, String teamId);

    Project searchProject(String teamId);

    List<Project> getGoodProject();
}
