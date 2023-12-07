package com.ruoyi.contest.service;

import com.ruoyi.contest.domain.Activity;
import com.ruoyi.contest.domain.vo.ActivityVo;
import com.ruoyi.contest.domain.bo.ActivityBo;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.PageQuery;

import java.io.IOException;
import java.util.Collection;
import java.util.List;

/**
 * 竞赛管理Service接口
 *
 * @author 李祥生
 * @date 2023-04-14
 */
public interface IActivityService {

    /**
     * 查询竞赛管理
     */
    ActivityVo queryById(Long id);

    /**
     * 查询竞赛管理列表
     */
    TableDataInfo<ActivityVo> queryPageList(ActivityBo bo, PageQuery pageQuery);

    /**
     * 查询竞赛管理列表
     */
    List<ActivityVo> queryList(ActivityBo bo);

    /**
     * 新增竞赛管理
     */
    Boolean insertByBo(ActivityBo bo) throws IOException;

    /**
     * 修改竞赛管理
     */
    Boolean updateByBo(ActivityBo bo);

    /**
     * 校验并批量删除竞赛管理信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
