package com.ruoyi.project.model.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 *
 *
 */
@Data
public class TeamMember {
    private String name;
    private String academy;
    private String uid;
    private String grade;
}
