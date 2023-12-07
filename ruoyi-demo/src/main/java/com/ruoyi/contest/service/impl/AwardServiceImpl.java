package com.ruoyi.contest.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.PageQuery;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.ruoyi.contest.domain.bo.AwardBo;
import com.ruoyi.contest.domain.vo.AwardVo;
import com.ruoyi.contest.domain.Award;
import com.ruoyi.contest.mapper.AwardMapper;
import com.ruoyi.contest.service.IAwardService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 获奖管理Service业务层处理
 *
 * @author 李祥生
 * @date 2023-05-14
 */
@RequiredArgsConstructor
@Service
public class AwardServiceImpl implements IAwardService {

    private final AwardMapper baseMapper;

    /**
     * 查询获奖管理
     */
    @Override
    public AwardVo queryById(Integer id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询获奖管理列表
     */
    @Override
    public TableDataInfo<AwardVo> queryPageList(AwardBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<Award> lqw = buildQueryWrapper(bo);
        Page<AwardVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询获奖管理列表
     */
    @Override
    public List<AwardVo> queryList(AwardBo bo) {
        LambdaQueryWrapper<Award> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<Award> buildQueryWrapper(AwardBo bo) {
        Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<Award> lqw = Wrappers.lambdaQuery();
        lqw.eq(StringUtils.isNotBlank(bo.getStatus()), Award::getStatus, bo.getStatus());
        lqw.eq(StringUtils.isNotBlank(bo.getTeamId()), Award::getTeamId, bo.getTeamId());
        lqw.like(StringUtils.isNotBlank(bo.getTeamName()), Award::getTeamName, bo.getTeamName());
        lqw.like(StringUtils.isNotBlank(bo.getActivityName()), Award::getActivityName, bo.getActivityName());
        lqw.eq(bo.getOssId() != null, Award::getOssId, bo.getOssId());
        lqw.eq(StringUtils.isNotBlank(bo.getActivityId()), Award::getActivityId, bo.getActivityId());
        return lqw;
    }

    /**
     * 新增获奖管理
     */
    @Override
    public Boolean insertByBo(AwardBo bo) {
        Award add = BeanUtil.toBean(bo, Award.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改获奖管理
     */
    @Override
    public Boolean updateByBo(AwardBo bo) {
        Award update = BeanUtil.toBean(bo, Award.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(Award entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除获奖管理
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Integer> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
