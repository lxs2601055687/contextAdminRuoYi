package com.ruoyi.project.model.dto.award;

import lombok.Data;

@Data
public class AwardUrlRequest {
    private String teamName;
    private String teamId;
    private Long ossId;
    private String activityName;
    private String status;
}
