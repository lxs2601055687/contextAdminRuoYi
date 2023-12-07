package com.ruoyi.contest.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ruoyi.common.annotation.ExcelDictFormat;
import com.ruoyi.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;



/**
 * 项目管理视图对象 project
 *
 * @author 李祥生
 * @date 2023-05-12
 */
@Data
@ExcelIgnoreUnannotated
public class ProjectVo {

    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     */
    @ExcelProperty(value = "主键id")
    private Long id;

    /**
     * 项目名称
     */
    @ExcelProperty(value = "项目名称")
    private String projectName;

    /**
     * 项目ID
     */
    @ExcelProperty(value = "项目ID")
    private String projectId;

    /**
     * 团队id
     */
    @ExcelProperty(value = "团队id")
    private String teamId;

    /**
     * 团队名
     */
    @ExcelProperty(value = "团队名")
    private String teamName;

    /**
     * 晋级状态
     */
    @ExcelProperty(value = "晋级状态")
    private String status;


}
