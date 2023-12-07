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
import com.ruoyi.contest.domain.bo.LogBo;
import com.ruoyi.contest.domain.vo.LogVo;
import com.ruoyi.contest.domain.Log;
import com.ruoyi.contest.mapper.LogMapper;
import com.ruoyi.contest.service.ILogService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 公告管理Service业务层处理
 *
 * @author 李祥生
 * @date 2023-04-15
 */
@RequiredArgsConstructor
@Service
public class LogServiceImpl implements ILogService {

    private final LogMapper baseMapper;

    /**
     * 查询公告管理
     */
    @Override
    public LogVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询公告管理列表
     */
    @Override
    public TableDataInfo<LogVo> queryPageList(LogBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<Log> lqw = buildQueryWrapper(bo);
        Page<LogVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询公告管理列表
     */
    @Override
    public List<LogVo> queryList(LogBo bo) {
        LambdaQueryWrapper<Log> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<Log> buildQueryWrapper(LogBo bo) {
        Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<Log> lqw = Wrappers.lambdaQuery();
        lqw.eq(StringUtils.isNotBlank(bo.getLog()), Log::getLog, bo.getLog());
        return lqw;
    }

    /**
     * 新增公告管理
     */
    @Override
    public Boolean insertByBo(LogBo bo) {
        Log add = BeanUtil.toBean(bo, Log.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改公告管理
     */
    @Override
    public Boolean updateByBo(LogBo bo) {
        Log update = BeanUtil.toBean(bo, Log.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(Log entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除公告管理
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }
}
