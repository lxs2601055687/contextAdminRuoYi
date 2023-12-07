package com.ruoyi.contest.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.PageQuery;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.ruoyi.contest.domain.TeamInfo;
import com.ruoyi.contest.mapper.TeamInfoMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.ruoyi.contest.domain.bo.UserBo;
import com.ruoyi.contest.domain.vo.UserVo;
import com.ruoyi.contest.domain.User;
import com.ruoyi.contest.mapper.UserMapper;
import com.ruoyi.contest.service.IUserService;
import org.springframework.util.DigestUtils;

import java.util.List;
import java.util.Map;
import java.util.Collection;

/**
 * 学生管理Service业务层处理
 *
 * @author 李祥生
 * @date 2023-04-14
 */
@RequiredArgsConstructor
@Service
public class UserServiceImpl implements IUserService {

    private final UserMapper baseMapper;
    private final TeamInfoMapper teamInfoMapper;

    /**
     * 查询学生管理
     */
    @Override
    public UserVo queryById(Long id){
        return baseMapper.selectVoById(id);
    }

    /**
     * 查询学生管理列表
     */
    @Override
    public TableDataInfo<UserVo> queryPageList(UserBo bo, PageQuery pageQuery) {
        LambdaQueryWrapper<User> lqw = buildQueryWrapper(bo);
        Page<UserVo> result = baseMapper.selectVoPage(pageQuery.build(), lqw);
        return TableDataInfo.build(result);
    }

    /**
     * 查询学生管理列表
     */
    @Override
    public List<UserVo> queryList(UserBo bo) {
        LambdaQueryWrapper<User> lqw = buildQueryWrapper(bo);
        return baseMapper.selectVoList(lqw);
    }

    private LambdaQueryWrapper<User> buildQueryWrapper(UserBo bo) {
        Map<String, Object> params = bo.getParams();
        LambdaQueryWrapper<User> lqw = Wrappers.lambdaQuery();
        lqw.like(StringUtils.isNotBlank(bo.getUid()), User::getUid, bo.getUid());
        lqw.like(StringUtils.isNotBlank(bo.getName()), User::getName, bo.getName());
        lqw.like(StringUtils.isNotBlank(bo.getAcademy()), User::getAcademy, bo.getAcademy());
        lqw.eq(StringUtils.isNotBlank(bo.getStudentClass()), User::getStudentClass, bo.getStudentClass());
        lqw.eq(StringUtils.isNotBlank(bo.getGrade()), User::getGrade, bo.getGrade());
        lqw.eq(StringUtils.isNotBlank(bo.getSpecializedSubject()), User::getSpecializedSubject, bo.getSpecializedSubject());
        lqw.eq(StringUtils.isNotBlank(bo.getPhone()), User::getPhone, bo.getPhone());
        return lqw;
    }

    /**
     * 新增学生管理
     */
    @Override
    public Boolean insertByBo(UserBo bo) {
        User add = BeanUtil.toBean(bo, User.class);
        validEntityBeforeSave(add);
        boolean flag = baseMapper.insert(add) > 0;
        if (flag) {
            bo.setId(add.getId());
        }
        return flag;
    }

    /**
     * 修改学生管理
     */
    @Override
    public Boolean updateByBo(UserBo bo) {
        User update = BeanUtil.toBean(bo, User.class);
        validEntityBeforeSave(update);
        return baseMapper.updateById(update) > 0;
    }

    /**
     * 保存前的数据校验
     */
    private void validEntityBeforeSave(User entity){
        //TODO 做一些数据校验,如唯一约束
    }

    /**
     * 批量删除学生管理
     */
    @Override
    public Boolean deleteWithValidByIds(Collection<Long> ids, Boolean isValid) {
        if(isValid){
            //TODO 做一些业务上的校验,判断是否需要校验
        }
        return baseMapper.deleteBatchIds(ids) > 0;
    }

    @Override
    public boolean resetById(Long ids) {
        String newPassword = DigestUtils.md5DigestAsHex("123456".getBytes());
        User user = new User();
        user.setPassword(newPassword);
        user.setId(ids);
        int i = baseMapper.updateById(user);
        return i==1;
    }

    @Override
    public User searchOne(String uid) {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("uid", uid);
        return baseMapper.selectOne(queryWrapper);
    }

    @Override
    public List searchList(String teamId) {
        QueryWrapper<TeamInfo> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("team_id", teamId);
        return teamInfoMapper.selectList(queryWrapper);
    }
}
