package com.ruoyi.contest.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 项目管理对象 project
 *
 * @author 李祥生
 * @date 2023-05-12
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("project")
public class Project extends BaseEntity {

    private static final long serialVersionUID=1L;

    /**
     * 主键id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;
    /**
     * 网址
     */
    private String web;
    /**
     * 作品描述
     */
    private String description;
    /**
     * 项目名称
     */
    private String projectName;
    /**
     * 项目ID
     */
    private String projectId;
    /**
     * 项目url
     */
    private String zipUrl;
    /**
     * 网盘链接
     */
    private String disk;
    /**
     * 团队id
     */
    private String teamId;
    /**
     * 团队名
     */
    private String teamName;
    /**
     * 晋级状态
     */
    private String status;

}
