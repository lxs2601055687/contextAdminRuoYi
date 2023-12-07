package com.ruoyi.contest.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ruoyi.common.annotation.ExcelDictFormat;
import com.ruoyi.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;



/**
 * 个人竞赛视图对象 individual_registration
 *
 * @author 李祥生
 * @date 2023-05-06
 */
@Data
@ExcelIgnoreUnannotated
public class IndividualRegistrationVo {

    private static final long serialVersionUID = 1L;

    /**
     * 姓名
     */
    @ExcelProperty(value = "姓名")
    private String name;

    /**
     * 学号
     */
    @ExcelProperty(value = "学号")
    private String uid;

    /**
     * 主键id
     */
    @ExcelProperty(value = "主键id")
    private Long id;

    /**
     * 学院
     */
    @ExcelProperty(value = "学院")
    private String academy;

    /**
     * 专业
     */
    @ExcelProperty(value = "专业")
    private String specializedSubject;

    /**
     * 竞赛ID
     */
    @ExcelProperty(value = "竞赛ID")
    private String activityId;

    /**
     * 竞赛名称
     */
    @ExcelProperty(value = "竞赛名称")
    private String activityName;


}
