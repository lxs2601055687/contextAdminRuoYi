package com.ruoyi.contest.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ruoyi.common.annotation.ExcelDictFormat;
import com.ruoyi.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;



/**
 * 学生管理视图对象 user
 *
 * @author 李祥生
 * @date 2023-04-14
 */
@Data
@ExcelIgnoreUnannotated
public class UserVo {

    private static final long serialVersionUID = 1L;

    /**
     * 学号
     */
    @ExcelProperty(value = "学号")
    private String uid;

    /**
     * 姓名
     */
    @ExcelProperty(value = "姓名")
    private String name;

    /**
     * 邮箱
     */
    @ExcelProperty(value = "邮箱")
    private String email;

    /**
     * 学院
     */
    @ExcelProperty(value = "学院")
    private String academy;

    /**
     * 身份证号
     */
    @ExcelProperty(value = "身份证号")
    private String iDNumber;

    /**
     * 班级
     */
    @ExcelProperty(value = "班级")
    private String studentClass;

    /**
     * 年级
     */
    @ExcelProperty(value = "年级")
    private String grade;

    /**
     * 专业
     */
    @ExcelProperty(value = "专业")
    private String specializedSubject;

    /**
     * 手机号
     */
    @ExcelProperty(value = "手机号")
    private String phone;

    /**
     * ID
     */
    @ExcelProperty(value = "ID")
    private Long id;


}
