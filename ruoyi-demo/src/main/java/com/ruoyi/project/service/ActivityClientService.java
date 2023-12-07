package com.ruoyi.project.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ruoyi.project.model.dto.activity.ActivityAddRequest;
import com.ruoyi.project.model.entity.Activity;
import org.apache.ibatis.annotations.Param;

import java.io.IOException;
import java.util.List;

/**
* @author 26010
* @description 针对表【activity】的数据库操作Service
* @createDate 2023-03-24 18:00:39
*/
public interface ActivityClientService extends IService<Activity> {
 /**
  * 活动添加
  * @param activityAddRequest
  * @return
  */
 public Integer activityAdd(ActivityAddRequest activityAddRequest) throws IOException;

 /**
  * 活动查询
  * 分页查询
  * @return
  */
 List<Activity> selectActivityList(@Param("pageNum") int pageNum, @Param("pageSize") int pageSize);



 List<Activity> selectActivityAll();


 boolean updateActivity(String activityId,Activity activity);

 boolean deleteActivity(String activityId);


List<String> selectActivityName ();

List<Activity> selectActivityByName(String name);


 List<Activity> selectActivityByStatus(int status);

 List<Activity> selectActivityListByType(int pageNum, int pageSize, String type);
}
