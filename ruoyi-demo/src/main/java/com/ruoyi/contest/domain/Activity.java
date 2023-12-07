package com.ruoyi.contest.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 竞赛管理对象 activity
 *
 * @author 李祥生
 * @date 2023-04-14
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("activity")
public class Activity extends BaseEntity {

    private static final long serialVersionUID=1L;

    /**
     * 竞赛ID
     */
    private String activityId;
    /**
     * 主键ID
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;
    /**
     * 竞赛名称
     */
    private String name;
    /**
     * 开始时间
     */
    private String startTime;
    /**
     * 结束时间
     */
    private String endTime;
    /**
     *
     */
    private Integer deleted;
    /**
     * 负责人
     */
    private String owner;
    /**
     * 状态
     */
    private Long status;
    /**
     *
     */
    private Date publishTime;
    /**
     * 网站
     */
    private String website;
    /**
     * 类型
     */
    private String type;
    /**
     * 描述
     */
    private String description;
    /**
     *
     */
    private String img;

}
