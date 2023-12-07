package com.ruoyi.project.model.dto.fileInfo;

import lombok.Data;

@Data
public class ProjectFileUrlAddRequest {
   private Long ossId;
   private String url;
   private String teamId;

}
