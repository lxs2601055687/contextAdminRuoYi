package com.ruoyi.contest.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ruoyi.common.annotation.ExcelDictFormat;
import com.ruoyi.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;



/**
 * 公告管理视图对象 log
 *
 * @author 李祥生
 * @date 2023-04-15
 */
@Data
@ExcelIgnoreUnannotated
public class LogVo {

    private static final long serialVersionUID = 1L;

    /**
     * ID
     */
    @ExcelProperty(value = "ID")
    private Long id;

    /**
     * 公告
     */
    @ExcelProperty(value = "公告")
    private String log;


}
