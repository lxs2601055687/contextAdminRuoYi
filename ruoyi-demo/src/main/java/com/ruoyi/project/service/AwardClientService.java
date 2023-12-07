package com.ruoyi.project.service;

import com.ruoyi.project.model.entity.Award;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
* @author 26010
* @description 针对表【award】的数据库操作Service
* @createDate 2023-05-14 22:38:59
*/
public interface AwardClientService extends IService<Award> {

    Boolean addAwardUrl(String teamId, String teamName, String activityName, Long ossId, String status);

    List<Award> searchTeamUrl(String teamId);

    Boolean updateAward(String teamId, String teamName, String activityName, String status);

}
