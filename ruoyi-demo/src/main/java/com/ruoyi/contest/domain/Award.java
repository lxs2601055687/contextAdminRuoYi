package com.ruoyi.contest.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 获奖管理对象 award
 *
 * @author 李祥生
 * @date 2023-05-14
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("award")
public class Award extends BaseEntity {

    private static final long serialVersionUID=1L;

    /**
     * 主键id
     */
    @TableId(value = "id",type = IdType.AUTO)
    private Integer id;
    /**
     * 晋级状态
     */
    private String status;
    /**
     * 团队id
     */
    private String teamId;
    /**
     * 团队名称
     */
    private String teamName;
    /**
     * 竞赛名称
     */
    private String activityName;
    /**
     * ossId
     */
    private Long ossId;
    /**
     * 竞赛id
     */
    private String activityId;

}
