package com.ruoyi.project.model.dto.award;

import lombok.Data;

@Data
public class AwardAddRequest {
    private String teamId;
    private String activityName;
    private String teamName;
    private String status;
}
