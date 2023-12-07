package com.ruoyi.contest.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 个人竞赛对象 individual_registration
 *
 * @author 李祥生
 * @date 2023-05-06
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("individual_registration")
public class IndividualRegistration extends BaseEntity {

    private static final long serialVersionUID=1L;

    /**
     * 姓名
     */
    private String name;
    /**
     * 学号
     */
    private String uid;
    /**
     * 主键id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;
    /**
     * 学院
     */
    private String academy;
    /**
     * 专业
     */
    private String specializedSubject;
    /**
     * 竞赛ID
     */
    private String activityId;
    /**
     * 竞赛名称
     */
    private String activityName;

}
