package com.ruoyi.project.model.dto.individual;

import lombok.Data;

@Data
public class IndividualAddRequest {
    private String name;
    private String uid;
    private String grade;
    private String specializedSubject;
    private String academy;
    private String activity;
}
