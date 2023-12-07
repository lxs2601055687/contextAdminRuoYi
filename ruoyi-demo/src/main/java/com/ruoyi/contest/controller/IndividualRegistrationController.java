package com.ruoyi.contest.controller;

import java.util.List;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;

import lombok.RequiredArgsConstructor;
import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.*;
import cn.dev33.satoken.annotation.SaCheckPermission;
import org.springframework.web.bind.annotation.*;
import org.springframework.validation.annotation.Validated;
import com.ruoyi.common.annotation.RepeatSubmit;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.PageQuery;
import com.ruoyi.common.core.domain.R;
import com.ruoyi.common.core.validate.AddGroup;
import com.ruoyi.common.core.validate.EditGroup;
import com.ruoyi.common.core.validate.QueryGroup;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.contest.domain.vo.IndividualRegistrationVo;
import com.ruoyi.contest.domain.bo.IndividualRegistrationBo;
import com.ruoyi.contest.service.IIndividualRegistrationService;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 个人竞赛
 *
 * @author 李祥生
 * @date 2023-05-06
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/contest/registration")
public class IndividualRegistrationController extends BaseController {

    private final IIndividualRegistrationService iIndividualRegistrationService;

    /**
     * 查询个人竞赛列表
     */
    @SaCheckPermission("contest:registration:list")
    @GetMapping("/list")
    public TableDataInfo<IndividualRegistrationVo> list(IndividualRegistrationBo bo, PageQuery pageQuery) {
        return iIndividualRegistrationService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出个人竞赛列表
     */
    @SaCheckPermission("contest:registration:export")
    @Log(title = "个人竞赛", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(IndividualRegistrationBo bo, HttpServletResponse response) {
        List<IndividualRegistrationVo> list = iIndividualRegistrationService.queryList(bo);
        ExcelUtil.exportExcel(list, "个人竞赛", IndividualRegistrationVo.class, response);
    }

    /**
     * 获取个人竞赛详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("contest:registration:query")
    @GetMapping("/{id}")
    public R<IndividualRegistrationVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iIndividualRegistrationService.queryById(id));
    }

    /**
     * 新增个人竞赛
     */
    @SaCheckPermission("contest:registration:add")
    @Log(title = "个人竞赛", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody IndividualRegistrationBo bo) {
        return toAjax(iIndividualRegistrationService.insertByBo(bo));
    }

    /**
     * 修改个人竞赛
     */
    @SaCheckPermission("contest:registration:edit")
    @Log(title = "个人竞赛", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody IndividualRegistrationBo bo) {
        return toAjax(iIndividualRegistrationService.updateByBo(bo));
    }

    /**
     * 删除个人竞赛
     *
     * @param ids 主键串
     */
    @SaCheckPermission("contest:registration:remove")
    @Log(title = "个人竞赛", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iIndividualRegistrationService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
