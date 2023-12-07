package com.ruoyi.project.model.dto.student;

import lombok.Data;

@Data
public class UserUpdateRequest {


    private String uid;

    /**
     *
     */
    private String name;

    /**
     *
     */
    private String email;

    /**
     *
     */
    private String academy;

    /**
     *
     */
    private String role;

    private String phone;

    private String specializedSubject;

    private String grade;
    private String profile;

    public UserUpdateRequest() {

    }
}
