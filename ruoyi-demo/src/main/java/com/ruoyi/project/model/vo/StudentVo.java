package com.ruoyi.project.model.vo;

import lombok.Data;

@Data
public class StudentVo {

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
    private String invitation;
    private String grade;
    private String profile;
}
