package com.ruoyi.contest.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ruoyi.common.annotation.ExcelDictFormat;
import com.ruoyi.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;



/**
 * 团队管理视图对象 team_info
 *
 * @author 李祥生
 * @date 2023-04-19
 */
@Data
@ExcelIgnoreUnannotated
public class TeamInfoVo {

    private static final long serialVersionUID = 1L;

    /**
     * 主键id
     */
    @ExcelProperty(value = "主键id")
    private Long id;

    /**
     * 队名
     */
    @ExcelProperty(value = "队名")
    private String teamName;

    /**
     * 队长姓名
     */
    @ExcelProperty(value = "队长姓名")
    private String teamLeaderName;

    /**
     * 赛道
     */
    @ExcelProperty(value = "赛道")
    private String track;

    /**
     * 参加竞赛名称
     */
    @ExcelProperty(value = "参加竞赛名称")
    private String activityName;

    /**
     * 指导教师
     */
    @ExcelProperty(value = "指导教师")
    private String teacher;

    /**
     * 队员
     */
    @ExcelProperty(value = "队员")
    private String teamMemberName;

    /**
     * 队员学号
     */
    @ExcelProperty(value = "队员学号")
    private String teamMemberId;


}
