package com.ruoyi.project.model.dto.project;

import lombok.Data;

@Data
public class ProjectAddRequest {
    private String web;
    private String disk;
    private String projectName;
    private String description;
    private String teamId;
    private String teamName;
}
