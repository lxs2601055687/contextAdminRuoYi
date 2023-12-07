package com.ruoyi.project.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ruoyi.project.model.entity.IndividualRegistration;

import java.util.List;

/**
* @author 26010
* @description 针对表【individual_registration】的数据库操作Service
* @createDate 2023-05-13 18:48:09
*/
public interface IndividualRegistrationClientService extends IService<IndividualRegistration> {

    List<IndividualRegistration> searchByUid(String uid);


    Boolean addIndividual(String activity, String academy, String uid, String grade, String name, String specializedSubject);

}
