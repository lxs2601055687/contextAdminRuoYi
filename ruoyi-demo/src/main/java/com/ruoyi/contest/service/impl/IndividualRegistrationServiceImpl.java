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
import com.ruoyi.contest.domain.bo.IndividualRegistrationBo;
import com.ruoyi.contest.domain.vo.IndividualRegistrationVo;
import com.ruoyi.contest.domain.IndividualRegistration;
import com.ruoyi.contest.mapper.IndividualRegistrationMapper;
import com.ruoyi.contest.service.IIndividualRegistrationService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 个人竞赛Service业务层处理
 *
 * @author 李祥生
 * @date 2023-05-06
 */
@RequiredArgsConstructor
@Service
public class IndividualRegistrationServiceImpl implements IIndividualRegistrationService {

    private final IndividualRegistrationMapper baseMapper;

    /**
     * 查询个人竞赛
     */
    @Override
    public IndividualRegistrationVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询个人竞赛列表
     */
    @Override
    public TableDataInfo<IndividualRegistrationVo> queryPageList(IndividualRegistrationBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<IndividualRegistration> lqw = buildQueryWrapper(bo);
        Page<IndividualRegistrationVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询个人竞赛列表
     */
    @Override
    public List<IndividualRegistrationVo> queryList(IndividualRegistrationBo bo) {
        LambdaQueryWrapper<IndividualRegistration> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<IndividualRegistration> buildQueryWrapper(IndividualRegistrationBo bo) {
        Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<IndividualRegistration> lqw = Wrappers.lambdaQuery();
        lqw.like(StringUtils.isNotBlank(bo.getName()), IndividualRegistration::getName, bo.getName());
        lqw.eq(StringUtils.isNotBlank(bo.getUid()), IndividualRegistration::getUid, bo.getUid());
        lqw.eq(StringUtils.isNotBlank(bo.getAcademy()), IndividualRegistration::getAcademy, bo.getAcademy());
        lqw.eq(StringUtils.isNotBlank(bo.getSpecializedSubject()), IndividualRegistration::getSpecializedSubject, bo.getSpecializedSubject());
        lqw.eq(StringUtils.isNotBlank(bo.getActivityId()), IndividualRegistration::getActivityId, bo.getActivityId());
        lqw.like(StringUtils.isNotBlank(bo.getActivityName()), IndividualRegistration::getActivityName, bo.getActivityName());
        return lqw;
    }

    /**
     * 新增个人竞赛
     */
    @Override
    public Boolean insertByBo(IndividualRegistrationBo bo) {
        IndividualRegistration add = BeanUtil.toBean(bo, IndividualRegistration.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改个人竞赛
     */
    @Override
    public Boolean updateByBo(IndividualRegistrationBo bo) {
        IndividualRegistration update = BeanUtil.toBean(bo, IndividualRegistration.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(IndividualRegistration entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除个人竞赛
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
