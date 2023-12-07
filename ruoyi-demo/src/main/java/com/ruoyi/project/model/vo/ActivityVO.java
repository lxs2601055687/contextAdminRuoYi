package com.ruoyi.project.model.vo;

import lombok.Data;

@Data
public class ActivityVO {
    private String title;
    private String description;
    private String owner;
    private String startAt;
    private String endAt;
    private Integer id;
    private String avatar;
    private String website;
    private String activityId;
    private String status;
    private String type;
}

