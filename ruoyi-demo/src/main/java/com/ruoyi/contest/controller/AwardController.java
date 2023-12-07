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
import com.ruoyi.contest.domain.vo.AwardVo;
import com.ruoyi.contest.domain.bo.AwardBo;
import com.ruoyi.contest.service.IAwardService;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 获奖管理
 *
 * @author 李祥生
 * @date 2023-05-14
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/contest/award")
public class AwardController extends BaseController {

    private final IAwardService iAwardService;

    /**
     * 查询获奖管理列表
     */
    @SaCheckPermission("contest:award:list")
    @GetMapping("/list")
    public TableDataInfo<AwardVo> list(AwardBo bo, PageQuery pageQuery) {
        return iAwardService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出获奖管理列表
     */
    @SaCheckPermission("contest:award:export")
    @Log(title = "获奖管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(AwardBo bo, HttpServletResponse response) {
        List<AwardVo> list = iAwardService.queryList(bo);
        ExcelUtil.exportExcel(list, "获奖管理", AwardVo.class, response);
    }

    /**
     * 获取获奖管理详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("contest:award:query")
    @GetMapping("/{id}")
    public R<AwardVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Integer id) {
        return R.ok(iAwardService.queryById(id));
    }

    /**
     * 新增获奖管理
     */
    @SaCheckPermission("contest:award:add")
    @Log(title = "获奖管理", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody AwardBo bo) {
        return toAjax(iAwardService.insertByBo(bo));
    }

    /**
     * 修改获奖管理
     */
    @SaCheckPermission("contest:award:edit")
    @Log(title = "获奖管理", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody AwardBo bo) {
        return toAjax(iAwardService.updateByBo(bo));
    }

    /**
     * 删除获奖管理
     *
     * @param ids 主键串
     */
    @SaCheckPermission("contest:award:remove")
    @Log(title = "获奖管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Integer[] ids) {
        return toAjax(iAwardService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
