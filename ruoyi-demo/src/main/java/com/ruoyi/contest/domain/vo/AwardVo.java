package com.ruoyi.contest.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ruoyi.common.annotation.ExcelDictFormat;
import com.ruoyi.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;



/**
 * 获奖管理视图对象 award
 *
 * @author 李祥生
 * @date 2023-05-14
 */
@Data
@ExcelIgnoreUnannotated
public class AwardVo {

    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     */
    @ExcelProperty(value = "主键id")
    private Integer id;

    /**
     * 晋级状态
     */
    @ExcelProperty(value = "晋级状态")
    private String status;

    /**
     * 团队id
     */
    @ExcelProperty(value = "团队id")
    private String teamId;

    /**
     * 团队名称
     */
    @ExcelProperty(value = "团队名称")
    private String teamName;

    /**
     * 竞赛名称
     */
    @ExcelProperty(value = "竞赛名称")
    private String activityName;

    /**
     * ossId
     */
    @ExcelProperty(value = "ossId")
    private Long ossId;

    /**
     * 竞赛id
     */
    @ExcelProperty(value = "竞赛id")
    private String activityId;


}
