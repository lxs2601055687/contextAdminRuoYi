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
import com.ruoyi.contest.domain.bo.TeamInfoBo;
import com.ruoyi.contest.domain.vo.TeamInfoVo;
import com.ruoyi.contest.domain.TeamInfo;
import com.ruoyi.contest.mapper.TeamInfoMapper;
import com.ruoyi.contest.service.ITeamInfoService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 团队管理Service业务层处理
 *
 * @author 李祥生
 * @date 2023-04-19
 */
@RequiredArgsConstructor
@Service
public class TeamInfoServiceImpl implements ITeamInfoService {

    private final TeamInfoMapper baseMapper;

    /**
     * 查询团队管理
     */
    @Override
    public TeamInfoVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询团队管理列表
     */
    @Override
    public TableDataInfo<TeamInfoVo> queryPageList(TeamInfoBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<TeamInfo> lqw = buildQueryWrapper(bo);
        Page<TeamInfoVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询团队管理列表
     */
    @Override
    public List<TeamInfoVo> queryList(TeamInfoBo bo) {
        LambdaQueryWrapper<TeamInfo> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<TeamInfo> buildQueryWrapper(TeamInfoBo bo) {
        Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<TeamInfo> lqw = Wrappers.lambdaQuery();
        lqw.like(StringUtils.isNotBlank(bo.getTeamName()), TeamInfo::getTeamName, bo.getTeamName());
        lqw.like(StringUtils.isNotBlank(bo.getTeamLeaderName()), TeamInfo::getTeamLeaderName, bo.getTeamLeaderName());
        lqw.eq(StringUtils.isNotBlank(bo.getTrack()), TeamInfo::getTrack, bo.getTrack());
        lqw.like(StringUtils.isNotBlank(bo.getActivityName()), TeamInfo::getActivityName, bo.getActivityName());
        lqw.eq(StringUtils.isNotBlank(bo.getTeacher()), TeamInfo::getTeacher, bo.getTeacher());
        lqw.like(StringUtils.isNotBlank(bo.getTeamMemberName()), TeamInfo::getTeamMemberName, bo.getTeamMemberName());
        lqw.eq(StringUtils.isNotBlank(bo.getTeamMemberId()), TeamInfo::getTeamMemberId, bo.getTeamMemberId());
        return lqw;
    }

    /**
     * 新增团队管理
     */
    @Override
    public Boolean insertByBo(TeamInfoBo bo) {
        TeamInfo add = BeanUtil.toBean(bo, TeamInfo.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改团队管理
     */
    @Override
    public Boolean updateByBo(TeamInfoBo bo) {
        TeamInfo update = BeanUtil.toBean(bo, TeamInfo.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(TeamInfo entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除团队管理
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
