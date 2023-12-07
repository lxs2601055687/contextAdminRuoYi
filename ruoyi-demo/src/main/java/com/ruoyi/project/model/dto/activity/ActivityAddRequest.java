package com.ruoyi.project.model.dto.activity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
@Data
public class ActivityAddRequest implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * 活动名称
     */
    private String name;
    /**
     * 描述
     */
    private String describe;

    /**
     * 开始时间
     */
    private String startTime;

    /**
     * 结束时间
     */
    private String endTime;

    /**
     * 负责人
     */
    private String owner;

    /**
     * 0未开始报名 1正在报名 2报名结束 3等待结果
     */
    private Integer status;

    /**
     * 状态
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

}
