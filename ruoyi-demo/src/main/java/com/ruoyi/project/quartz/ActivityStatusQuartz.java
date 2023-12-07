package com.ruoyi.project.quartz;
import com.ruoyi.project.mapper.ActivityClientMapper;
import com.ruoyi.project.model.entity.Activity;
import com.ruoyi.project.service.ActivityClientService;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Component
public class ActivityStatusQuartz {
    @Resource
    ActivityClientService activityClientService;
    @Resource
    ActivityClientMapper activityClientMapper;
    @Scheduled(cron = "0 0 0/12 * * ?")
    /*cron = "0 0 0/12 * * ?"*/
    public void StatusUpdateTask (){
        System.out.println("定时任务执行了");
        List<Activity> activityList = activityClientService.selectActivityAll();
            LocalDateTime currentTime = LocalDateTime.now();
            // 定义日期格式化器
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            // 使用Stream API遍历每条Activity数据，并根据startTime属性判断是否需要更新状态
            activityList.stream().forEach(activity -> {
                LocalDateTime startTime = LocalDateTime.parse(activity.getEndTime(), formatter);
                if (startTime.isBefore(currentTime)) {
                    activity.setStatus(1);
                    activityClientMapper.updateById(activity);
                }
            });
    }
}
