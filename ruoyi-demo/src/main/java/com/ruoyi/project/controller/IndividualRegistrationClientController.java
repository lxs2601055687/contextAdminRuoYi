package com.ruoyi.project.controller;

import com.ruoyi.project.common.BaseResponse;
import com.ruoyi.project.common.ResultUtils;
import com.ruoyi.project.model.dto.individual.IndividualAddRequest;
import com.ruoyi.project.model.entity.IndividualRegistration;
import com.ruoyi.project.service.IndividualRegistrationClientService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
public class IndividualRegistrationClientController {
    @Resource
    IndividualRegistrationClientService individualRegistrationClientService;
    @GetMapping("/api/activity/alone")
    public BaseResponse<List<IndividualRegistration>> searchIndividualRegistration (@RequestParam("uid") String uid) {
          List<IndividualRegistration> individualRegistrationList = individualRegistrationClientService.searchByUid(uid);
          return ResultUtils.success(individualRegistrationList);
    }
    @PostMapping("/api/add/Individual")
    public BaseResponse<Boolean> insertIndividualRegistration (@RequestBody IndividualAddRequest individualAddRequest) {
        String academy = individualAddRequest.getAcademy();
        String grade = individualAddRequest.getGrade();
        String name = individualAddRequest.getName();
        String uid = individualAddRequest.getUid();
        String specializedSubject = individualAddRequest.getSpecializedSubject();
        String activity = individualAddRequest.getActivity();
         Boolean result = individualRegistrationClientService.addIndividual(activity,academy,uid,grade,name,specializedSubject);
         if (result) {
             return ResultUtils.success(true);
         } else {
             return ResultUtils.success(null);
         }
    }
}
