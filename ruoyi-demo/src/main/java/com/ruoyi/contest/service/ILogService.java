package com.ruoyi.contest.service;

import com.ruoyi.contest.domain.Log;
import com.ruoyi.contest.domain.vo.LogVo;
import com.ruoyi.contest.domain.bo.LogBo;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 公告管理Service接口
 *
 * @author 李祥生
 * @date 2023-04-15
 */
public interface ILogService {

    /**
     * 查询公告管理
     */
    LogVo queryById(Long id);

    /**
     * 查询公告管理列表
     */
    TableDataInfo<LogVo> queryPageList(LogBo bo, PageQuery pageQuery);

    /**
     * 查询公告管理列表
     */
    List<LogVo> queryList(LogBo bo);

    /**
     * 新增公告管理
     */
    Boolean insertByBo(LogBo bo);

    /**
     * 修改公告管理
     */
    Boolean updateByBo(LogBo bo);

    /**
     * 校验并批量删除公告管理信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
