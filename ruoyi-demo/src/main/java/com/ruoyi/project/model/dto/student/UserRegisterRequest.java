package com.ruoyi.project.model.dto.student;

import lombok.Data;

@Data
public class UserRegisterRequest {
    private static final long serialVersionUID = 3191241716373120793L;
    private String username;

    private String password;

    private String uid;

    public UserRegisterRequest() {
    }
}
