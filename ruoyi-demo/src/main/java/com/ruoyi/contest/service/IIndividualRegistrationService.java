package com.ruoyi.contest.service;

import com.ruoyi.contest.domain.IndividualRegistration;
import com.ruoyi.contest.domain.vo.IndividualRegistrationVo;
import com.ruoyi.contest.domain.bo.IndividualRegistrationBo;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 个人竞赛Service接口
 *
 * @author 李祥生
 * @date 2023-05-06
 */
public interface IIndividualRegistrationService {

    /**
     * 查询个人竞赛
     */
    IndividualRegistrationVo queryById(Long id);

    /**
     * 查询个人竞赛列表
     */
    TableDataInfo<IndividualRegistrationVo> queryPageList(IndividualRegistrationBo bo, PageQuery pageQuery);

    /**
     * 查询个人竞赛列表
     */
    List<IndividualRegistrationVo> queryList(IndividualRegistrationBo bo);

    /**
     * 新增个人竞赛
     */
    Boolean insertByBo(IndividualRegistrationBo bo);

    /**
     * 修改个人竞赛
     */
    Boolean updateByBo(IndividualRegistrationBo bo);

    /**
     * 校验并批量删除个人竞赛信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);
}
