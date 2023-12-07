package com.ruoyi.project.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.project.mapper.OssMapper;
import com.ruoyi.project.model.entity.Award;
import com.ruoyi.project.service.AwardClientService;
import com.ruoyi.project.mapper.AwardClientMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
* @author 26010
* @description 针对表【award】的数据库操作Service实现
* @createDate 2023-05-14 22:38:59
*/
@Service
public class AwardClientServiceImpl extends ServiceImpl<AwardClientMapper, Award>
    implements AwardClientService {
@Resource
AwardClientMapper awardClientMapper;
@Resource
    OssMapper ossMapper;
    @Override
    public Boolean addAwardUrl(String teamId, String teamName, String activityName, Long ossId, String status) {
        QueryWrapper<Award> wrapper = new QueryWrapper<>();
        wrapper.eq("team_id", teamId);
        Award award = awardClientMapper.selectOne(wrapper);
        Long deletedOssId = null;
        if(award != null) {
            deletedOssId  = Long.valueOf(award.getOssId());
            ossMapper.deleteById(deletedOssId);
            awardClientMapper.delete(wrapper);
        }
        // insert new data
       Award award1 =new Award();
        award1.setActivityName(activityName);
        award1.setOssId(ossId);
        award1.setStatus(status);
        award1.setTeamName(teamName);
        award1.setTeamId(teamId);
        int insert = awardClientMapper.insert(award1);

        // return true if new data was inserted
        return insert == 1;
    }

    @Override
    public List<Award> searchTeamUrl(String teamId) {
        QueryWrapper<Award> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("team_id", teamId);
        return awardClientMapper.selectList(queryWrapper);
    }

    @Override
    public Boolean updateAward(String teamId, String teamName, String activityName, String status) {
        // Check if project with the given teamId already exists
        Award award = awardClientMapper.selectOne(new QueryWrapper<Award>().eq("team_id", teamId));
        if (award == null) {
            award= new Award();
            award.setTeamName(teamName);
            award.setActivityName(activityName);
            award.setTeamId(teamId);
            award.setStatus(status);
            // If project doesn't exist, insert a new record
            int result = awardClientMapper.insert(award);

            return result > 0;
        } else {
            // If project already exists, update the existing record
            award.setTeamName(teamName);
            award.setActivityName(activityName);
            award.setTeamId(teamId);
            award.setStatus(status);
            int result = awardClientMapper.updateById(award);

            return result > 0;
        }
    }
}




