package com.ruoyi.project.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.project.mapper.ActivityClientMapper;
import com.ruoyi.project.model.dto.activity.ActivityAddRequest;
import com.ruoyi.project.model.entity.Activity;
import com.ruoyi.project.service.ActivityClientService;
import com.ruoyi.project.utils.RandomImageUtils;
import com.ruoyi.project.utils.RandomUtil;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

/**
* @author 26010
* @description 针对表【activity】的数据库操作Service实现
* @createDate 2023-03-24 18:00:39
*/
@Service
@Transactional(rollbackFor = Exception.class)
public class ActivityClientServiceImpl extends ServiceImpl<ActivityClientMapper, Activity>
    implements ActivityClientService {
    @Resource
    ActivityClientMapper activityClientMapper;
    @Override
    public Integer activityAdd(ActivityAddRequest activityAddRequest) throws IOException {
        System.out.println(activityAddRequest.toString());
        Activity activity =new Activity();
        activity.setDescription(activityAddRequest.getDescribe());
        activity.setName(activityAddRequest.getName());
        activity.setOwner(activityAddRequest.getOwner());
        activity.setStartTime(activityAddRequest.getStartTime());
        activity.setStatus(0);
        activity.setWebsite(activityAddRequest.getWebsite());
        activity.setStartTime(activityAddRequest.getStartTime());
        activity.setEndTime(activityAddRequest.getEndTime());
        activity.setActivityId(String.valueOf(RandomUtil.generate()));
        activity.setImg(RandomImageUtils.getRandomImageUrl());
        activity.setType(activityAddRequest.getType());
        System.out.println(activity.toString());
        int insert = activityClientMapper.insert(activity);
        if(insert==1){
            System.out.println(activity.getId());
            return activity.getId();
        }
        return null;
    }

    @Override
    public List<Activity> selectActivityList(int pageNum, int pageSize) {
       QueryWrapper<Activity>wrapper = new QueryWrapper<>();
        wrapper.orderByDesc("id"); // 按照id字段倒序排列
        Page<Activity> page = activityClientMapper.selectPage(new Page<>(pageNum, pageSize), wrapper);
        return page.getRecords();
    }

    @Override
    public List<Activity> selectActivityAll() {
       return activityClientMapper.selectList(null);
    }

    @Override
    public boolean updateActivity(String activityId,Activity activity) {
        QueryWrapper<Activity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("activityId",activityId);
        Activity oldActivity = activityClientMapper.selectOne(queryWrapper);
        int result = 0;
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            LocalDateTime oldTime = LocalDateTime.parse(oldActivity.getEndTime(), formatter);
            LocalDateTime newTime = LocalDateTime.parse(activity.getEndTime(), formatter);
            if (oldTime.isBefore(newTime)) {
                oldActivity.setStatus(0);
            }
            oldActivity.setOwner(activity.getOwner());
            oldActivity.setStartTime(activity.getStartTime());
            oldActivity.setEndTime(activity.getEndTime());
            oldActivity.setName(activity.getName());
            oldActivity.setDescription(activity.getDescription());
            oldActivity.setType(activity.getType());
            oldActivity.setWebsite(activity.getWebsite());
               result = activityClientMapper.updateById(oldActivity);

        return result == 1;
    }

    @Override
    public boolean deleteActivity(String activityId) {
        QueryWrapper<Activity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("activityId", activityId);
        int result = activityClientMapper.delete(queryWrapper);
        return result == 1;
    }

    @Override
    public List<String> selectActivityName() {
        QueryWrapper<Activity> queryWrapper = new QueryWrapper<>();
        queryWrapper.select("name");
        List<Activity> activities = activityClientMapper.selectList(queryWrapper);
        List<String> activityNames = new ArrayList<>();
        for (Activity activity : activities) {
            activityNames.add(activity.getName());
        }
        return activityNames;
    }

    @Override
    public List<Activity> selectActivityByName(String name) {
        QueryWrapper<Activity> wrapper = new QueryWrapper<>();
        wrapper.eq("name", name);
        return activityClientMapper.selectList(wrapper);
    }

    @Override
    public List<Activity> selectActivityByStatus(int status) {
        QueryWrapper<Activity> wrapper = new QueryWrapper<>();
        wrapper.eq("status", status);
        return activityClientMapper.selectList(wrapper);
    }

    @Override
    public List<Activity> selectActivityListByType(int pageNum, int pageSize, String type) {
        QueryWrapper<Activity>wrapper = new QueryWrapper<>();
        wrapper.orderByDesc("id"); // 按照id字段倒序排列
        wrapper.eq("type",type);
        Page<Activity> page = activityClientMapper.selectPage(new Page<>(pageNum, pageSize), wrapper);
        return page.getRecords();
    }
}





