package com.ruoyi.contest.domain.vo;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ruoyi.common.annotation.ExcelDictFormat;
import com.ruoyi.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;



/**
 * 竞赛管理视图对象 activity
 *
 * @author 李祥生
 * @date 2023-04-14
 */
@Data
@ExcelIgnoreUnannotated
public class ActivityVo {

    private static final long serialVersionUID = 1L;

    /**
     * 竞赛ID
     */
    @ExcelProperty(value = "竞赛ID")
    private String activityId;

    /**
     * 主键ID
     */
    @ExcelProperty(value = "主键ID")
    private Long id;

    /**
     * 竞赛名称
     */
    @ExcelProperty(value = "竞赛名称")
    private String name;

    /**
     * 开始时间
     */
    @ExcelProperty(value = "开始时间")
    private String startTime;

    /**
     * 结束时间
     */
    @ExcelProperty(value = "结束时间")
    private String endTime;

    /**
     * 负责人
     */
    @ExcelProperty(value = "负责人")
    private String owner;

    /**
     * 状态
     */
    @ExcelProperty(value = "状态")
    private Long status;

    /**
     * 网站
     */
    @ExcelProperty(value = "网站")
    private String website;

    /**
     * 类型
     */
    @ExcelProperty(value = "类型")
    private String type;

    /**
     * 描述
     */
    @ExcelProperty(value = "描述")
    private String description;


}
