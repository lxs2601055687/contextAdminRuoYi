package com.ruoyi.contest.service;

import com.ruoyi.contest.domain.TeamInfo;
import com.ruoyi.contest.domain.vo.TeamInfoVo;
import com.ruoyi.contest.domain.bo.TeamInfoBo;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 团队管理Service接口
 *
 * @author 李祥生
 * @date 2023-04-19
 */
public interface ITeamInfoService {

    /**
     * 查询团队管理
     */
    TeamInfoVo queryById(Long id);

    /**
     * 查询团队管理列表
     */
    TableDataInfo<TeamInfoVo> queryPageList(TeamInfoBo bo, PageQuery pageQuery);

    /**
     * 查询团队管理列表
     */
    List<TeamInfoVo> queryList(TeamInfoBo bo);

    /**
     * 新增团队管理
     */
    Boolean insertByBo(TeamInfoBo bo);

    /**
     * 修改团队管理
     */
    Boolean updateByBo(TeamInfoBo bo);

    /**
     * 校验并批量删除团队管理信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
