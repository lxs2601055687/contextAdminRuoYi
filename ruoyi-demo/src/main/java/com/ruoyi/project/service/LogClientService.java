package com.ruoyi.project.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ruoyi.project.model.entity.Log;

import java.util.List;

/**
* @author 26010
* @description 针对表【log】的数据库操作Service
* @createDate 2023-04-15 19:28:50
*/
public interface LogClientService extends IService<Log> {
  public List<Log> selectLog();
}
