package com.ruoyi.project.model.dto.student;

import lombok.Data;

@Data
public class PasswordUpdateRequest {
    private String uid;
    private String oldPassword;
    private String newPassword;
}
