package com.ruoyi.contest.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.PageQuery;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.ruoyi.contest.Utils.RandomImageUtils;
import com.ruoyi.contest.Utils.RandomUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.ruoyi.contest.domain.bo.ActivityBo;
import com.ruoyi.contest.domain.vo.ActivityVo;
import com.ruoyi.contest.domain.Activity;
import com.ruoyi.contest.mapper.ActivityMapper;
import com.ruoyi.contest.service.IActivityService;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 竞赛管理Service业务层处理
 *
 * @author 李祥生
 * @date 2023-04-14
 */
@RequiredArgsConstructor
@Service
public class ActivityServiceImpl implements IActivityService {

    private final ActivityMapper baseMapper;

    /**
     * 查询竞赛管理
     */
    @Override
    public ActivityVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询竞赛管理列表
     */
    @Override
    public TableDataInfo<ActivityVo> queryPageList(ActivityBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<Activity> lqw = buildQueryWrapper(bo);
        Page<ActivityVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询竞赛管理列表
     */
    @Override
    public List<ActivityVo> queryList(ActivityBo bo) {
        LambdaQueryWrapper<Activity> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<Activity> buildQueryWrapper(ActivityBo bo) {
        Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<Activity> lqw = Wrappers.lambdaQuery();
        lqw.like(StringUtils.isNotBlank(bo.getActivityId()), Activity::getActivityId, bo.getActivityId());
        lqw.like(StringUtils.isNotBlank(bo.getName()), Activity::getName, bo.getName());
        lqw.eq(StringUtils.isNotBlank(bo.getOwner()), Activity::getOwner, bo.getOwner());
        lqw.eq(StringUtils.isNotBlank(bo.getType()), Activity::getType, bo.getType());
        return lqw;
    }

    /**
     * 新增竞赛管理
     */
    @Override
    public Boolean insertByBo(ActivityBo bo) throws IOException {
        Activity add = BeanUtil.toBean(bo, Activity.class);
        validEntityBeforeSave(add);
        add.setActivityId(String.valueOf(RandomUtil.generate()));
        add.setImg(RandomImageUtils.getRandomImageUrl());
        add.setStatus(0L);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改竞赛管理
     */
    @Override
    public Boolean updateByBo(ActivityBo bo) {
        Activity update = BeanUtil.toBean(bo, Activity.class);
        String activityId = update.getActivityId();
        QueryWrapper<Activity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("activity_id",activityId);
        Activity oldActivity = baseMapper.selectOne(queryWrapper);
        int result = 0;
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        LocalDateTime oldTime = LocalDateTime.parse(oldActivity.getEndTime(), formatter);
        LocalDateTime newTime = LocalDateTime.parse(bo.getEndTime(), formatter);
        if (oldTime.isBefore(newTime)) {
            update.setStatus(0L);
        }else {
            update.setStatus(1L);
        }
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(Activity entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除竞赛管理
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
