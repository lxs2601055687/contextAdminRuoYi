package com.ruoyi.project.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.contest.Utils.RandomUtil;
import com.ruoyi.project.mapper.ActivityClientMapper;
import com.ruoyi.project.model.entity.Activity;
import com.ruoyi.project.service.IndividualRegistrationClientService;
import org.springframework.stereotype.Service;
import com.ruoyi.project.model.entity.IndividualRegistration;
import com.ruoyi.project.mapper.IndividualRegistrationClientMapper;

import javax.annotation.Resource;
import java.util.List;


/**
* @author 26010
* @description 针对表【individual_registration】的数据库操作Service实现
* @createDate 2023-05-13 18:48:09
*/
@Service
public class IndividualRegistrationClientServiceImpl extends ServiceImpl<IndividualRegistrationClientMapper, IndividualRegistration>
    implements IndividualRegistrationClientService {
    @Resource
    IndividualRegistrationClientMapper individualRegistrationClientMapper;
    @Resource
    ActivityClientMapper activityClientMapper;
    @Override
    public List<IndividualRegistration> searchByUid(String uid) {
        QueryWrapper<IndividualRegistration> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uid", uid);
        return individualRegistrationClientMapper.selectList(queryWrapper);
    }

    @Override
    public Boolean addIndividual(String activity, String academy, String uid, String grade, String name, String specializedSubject) {
        IndividualRegistration individualRegistration = new IndividualRegistration();
        individualRegistration.setAcademy(academy);
        individualRegistration.setActivityName(activity);
        individualRegistration.setUid(uid);
        individualRegistration.setName(name);
        individualRegistration.setSpecializedSubject(specializedSubject);
        QueryWrapper<Activity> wrapper = new QueryWrapper<>();
        wrapper.eq("name", activity);
        Activity activity1 = activityClientMapper.selectOne(wrapper);
        String activityId = activity1.getActivityId();
        individualRegistration.setActivityId(activityId);
        QueryWrapper<IndividualRegistration> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("name", name);
        queryWrapper.eq("activity_id", activityId);
        IndividualRegistration individualRegistration1 = individualRegistrationClientMapper.selectOne(queryWrapper);
        if (individualRegistration1 == null) {
            int insert = individualRegistrationClientMapper.insert(individualRegistration);
            return insert ==1;
        } else {
            return false;
        }

    }
}




