package com.ruoyi.contest.service;

import com.ruoyi.contest.domain.Project;
import com.ruoyi.contest.domain.vo.ProjectVo;
import com.ruoyi.contest.domain.bo.ProjectBo;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.PageQuery;

import java.util.Collection;
import java.util.List;

/**
 * 项目管理Service接口
 *
 * @author 李祥生
 * @date 2023-05-12
 */
public interface IProjectService {

    /**
     * 查询项目管理
     */
    ProjectVo queryById(Long id);

    /**
     * 查询项目管理列表
     */
    TableDataInfo<ProjectVo> queryPageList(ProjectBo bo, PageQuery pageQuery);

    /**
     * 查询项目管理列表
     */
    List<ProjectVo> queryList(ProjectBo bo);

    /**
     * 新增项目管理
     */
    Boolean insertByBo(ProjectBo bo);

    /**
     * 修改项目管理
     */
    Boolean updateByBo(ProjectBo bo);

    /**
     * 校验并批量删除项目管理信息
     */
    Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid);

    Long getProject(String projectId);
}
