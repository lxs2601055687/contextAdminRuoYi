package com.ruoyi.project.service.impl;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ruoyi.project.model.entity.Log;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import com.ruoyi.project.service.LogClientService;
import com.ruoyi.project.mapper.LogClientMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
* @author 26010
* @description 针对表【log】的数据库操作Service实现
* @createDate 2023-04-15 19:28:50
*/
@Service
public class LogClientServiceImpl extends ServiceImpl<LogClientMapper, Log>
    implements LogClientService {
    @Resource
    LogClientMapper logClientMapper;

    public List<Log> selectLog() {
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.orderByDesc("id");
        return   logClientMapper.selectList(queryWrapper);
    }


}




