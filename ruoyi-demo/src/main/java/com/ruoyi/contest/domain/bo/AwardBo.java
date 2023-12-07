package com.ruoyi.contest.domain.bo;

import com.ruoyi.common.core.validate.AddGroup;
import com.ruoyi.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.util.Date;

import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 获奖管理业务对象 award
 *
 * @author 李祥生
 * @date 2023-05-14
 */

@Data
@EqualsAndHashCode(callSuper = true)
public class AwardBo extends BaseEntity {

    /**
     * 主键id
     */
    @NotNull(message = "主键id不能为空", groups = { EditGroup.class })
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
