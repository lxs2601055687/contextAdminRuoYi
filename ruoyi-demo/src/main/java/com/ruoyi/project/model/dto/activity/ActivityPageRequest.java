package com.ruoyi.project.model.dto.activity;

import lombok.Data;

@Data
public class ActivityPageRequest {
    private int pageNum;
    private int PageSize;
    private String type;
}
