package com.ruoyi.contest.service;

import com.ruoyi.contest.domain.Award;
import com.ruoyi.contest.domain.vo.AwardVo;
import com.ruoyi.contest.domain.bo.AwardBo;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 获奖管理Service接口
 *
 * @author 李祥生
 * @date 2023-05-14
 */
public interface IAwardService {

    /**
     * 查询获奖管理
     */
    AwardVo queryById(Integer id);

    /**
     * 查询获奖管理列表
     */
    TableDataInfo<AwardVo> queryPageList(AwardBo bo, PageQuery pageQuery);

    /**
     * 查询获奖管理列表
     */
    List<AwardVo> queryList(AwardBo bo);

    /**
     * 新增获奖管理
     */
    Boolean insertByBo(AwardBo bo);

    /**
     * 修改获奖管理
     */
    Boolean updateByBo(AwardBo bo);

    /**
     * 校验并批量删除获奖管理信息
     */
    Boolean deleteWithValidByIds(Collection<Integer> ids, Boolean isValid);
}
