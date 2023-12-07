package com.ruoyi.project.model.entity;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @TableName activity
 */
@TableName(value ="activity")
@Data
public class Activity implements Serializable {

    /*private List<team> teamList;*/
    /**
     *
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 活动名称
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
     * 逻辑删除
     */
    @TableLogic
    private Integer deleted;

    /**
     * 负责人
     */
    private String owner;

    /**
     * 0未开始报名 1正在报名 2报名结束 3等待结果
     */
    private Integer status;
    /**
     * 文件路径
     */

    private String activityId;
    /**
     * 状态
     */
    private Date publishTime;

    private String description;

    /**
     * 网站
     */
    private String website;

    /**
     * 类型
     */
    private String type;
    /**
     * 图片
     */
    private String img;
    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}
