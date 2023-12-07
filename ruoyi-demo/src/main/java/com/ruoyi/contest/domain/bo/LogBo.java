package com.ruoyi.contest.domain.bo;

import com.ruoyi.common.core.validate.AddGroup;
import com.ruoyi.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.util.Date;

import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 公告管理业务对象 log
 *
 * @author 李祥生
 * @date 2023-04-15
 */

@Data
@EqualsAndHashCode(callSuper = true)
public class LogBo extends BaseEntity {

    /**
     * ID
     */
    @NotNull(message = "ID不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 公告
     */
    @NotBlank(message = "公告不能为空", groups = { AddGroup.class, EditGroup.class })
    private String log;


}
