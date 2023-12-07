package com.ruoyi.project.model.dto.fileInfo;

import lombok.Data;

@Data
public class ActivityFileUrlAddRequest {
   private Long ossId;
   private String url;
   private String activityId;

}
