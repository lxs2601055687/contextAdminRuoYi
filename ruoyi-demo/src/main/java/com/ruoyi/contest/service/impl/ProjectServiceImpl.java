package com.ruoyi.contest.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.PageQuery;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.ruoyi.contest.Utils.RandomUtil;
import com.ruoyi.project.mapper.FileInfoMapper;
import com.ruoyi.project.model.entity.FileInfo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.ruoyi.contest.domain.bo.ProjectBo;
import com.ruoyi.contest.domain.vo.ProjectVo;
import com.ruoyi.contest.domain.Project;
import com.ruoyi.contest.mapper.ProjectMapper;
import com.ruoyi.contest.service.IProjectService;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 项目管理Service业务层处理
 *
 * @author 李祥生
 * @date 2023-05-12
 */
@RequiredArgsConstructor
@Service
public class ProjectServiceImpl implements IProjectService {

    private final ProjectMapper baseMapper;
    private final FileInfoMapper fileInfoMapper;

    /**
     * 查询项目管理
     */
    @Override
    public ProjectVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询项目管理列表
     */
    @Override
    public TableDataInfo<ProjectVo> queryPageList(ProjectBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<Project> lqw = buildQueryWrapper(bo);
        Page<ProjectVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询项目管理列表
     */
    @Override
    public List<ProjectVo> queryList(ProjectBo bo) {
        LambdaQueryWrapper<Project> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<Project> buildQueryWrapper(ProjectBo bo) {
        Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<Project> lqw = Wrappers.lambdaQuery();
        lqw.like(StringUtils.isNotBlank(bo.getProjectName()), Project::getProjectName, bo.getProjectName());
        lqw.eq(StringUtils.isNotBlank(bo.getProjectId()), Project::getProjectId, bo.getProjectId());
        lqw.eq(StringUtils.isNotBlank(bo.getTeamId()), Project::getTeamId, bo.getTeamId());
        lqw.like(StringUtils.isNotBlank(bo.getTeamName()), Project::getTeamName, bo.getTeamName());
        lqw.eq(bo.getStatus() != null, Project::getStatus, bo.getStatus());
        return lqw;
    }

    /**
     * 新增项目管理
     */
    @Override
    public Boolean insertByBo(ProjectBo bo) {
        Project add = BeanUtil.toBean(bo, Project.class);
        validEntityBeforeSave(add);
        add.setProjectId(String.valueOf(RandomUtil.generate()));
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改项目管理
     */
    @Override
    public Boolean updateByBo(ProjectBo bo) {
        Project update = BeanUtil.toBean(bo, Project.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(Project entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除项目管理
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }

    @Override
    public Long getProject(String teamId) {
        QueryWrapper<FileInfo> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("team_id", teamId);
        FileInfo fileInfo = fileInfoMapper.selectOne(queryWrapper);
        if(fileInfo == null) {
            return null;
        }else {
            return fileInfo.getOssId();
        }
    }
}
