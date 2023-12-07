package com.ruoyi.contest.service;

import com.ruoyi.contest.domain.User;
import com.ruoyi.contest.domain.vo.UserVo;
import com.ruoyi.contest.domain.bo.UserBo;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 学生管理Service接口
 *
 * @author 李祥生
 * @date 2023-04-14
 */
public interface IUserService {

    /**
     * 查询学生管理
     */
    UserVo queryById(Long id);

    /**
     * 查询学生管理列表
     */
    TableDataInfo<UserVo> queryPageList(UserBo bo, PageQuery pageQuery);

    /**
     * 查询学生管理列表
     */
    List<UserVo> queryList(UserBo bo);

    /**
     * 新增学生管理
     */
    Boolean insertByBo(UserBo bo);

    /**
     * 修改学生管理
     */
    Boolean updateByBo(UserBo bo);

    /**
     * 校验并批量删除学生管理信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);

    boolean resetById(Long ids);

    User searchOne(String uid);

    List searchList(String teamId);
}
