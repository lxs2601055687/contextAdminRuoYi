package com.ruoyi.project.controller;

import com.ruoyi.project.common.BaseResponse;
import com.ruoyi.project.common.ResultUtils;
import com.ruoyi.project.model.dto.activity.ActivityPageRequest;
import com.ruoyi.project.model.entity.Log;
import com.ruoyi.project.model.vo.ActivityVO;
import com.ruoyi.project.service.LogClientService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/api")
public class LogClientController {
    @Resource
    LogClientService logClientService;
    @PostMapping("/log")
    public BaseResponse<List<Log>> selectLog() {
        List<Log> logs = logClientService.selectLog();
        return ResultUtils.success(logs);
    }
}
