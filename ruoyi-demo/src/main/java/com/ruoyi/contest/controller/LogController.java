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
import com.ruoyi.contest.domain.vo.LogVo;
import com.ruoyi.contest.domain.bo.LogBo;
import com.ruoyi.contest.service.ILogService;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 公告管理
 *
 * @author 李祥生
 * @date 2023-04-15
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/contest/log")
public class LogController extends BaseController {

    private final ILogService iLogService;

    /**
     * 查询公告管理列表
     */
    @SaCheckPermission("contest:log:list")
    @GetMapping("/list")
    public TableDataInfo<LogVo> list(LogBo bo, PageQuery pageQuery) {
        return iLogService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出公告管理列表
     */
    @SaCheckPermission("contest:log:export")
    @Log(title = "公告管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(LogBo bo, HttpServletResponse response) {
        List<LogVo> list = iLogService.queryList(bo);
        ExcelUtil.exportExcel(list, "公告管理", LogVo.class, response);
    }

    /**
     * 获取公告管理详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("contest:log:query")
    @GetMapping("/{id}")
    public R<LogVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iLogService.queryById(id));
    }

    /**
     * 新增公告管理
     */
    @SaCheckPermission("contest:log:add")
    @Log(title = "公告管理", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody LogBo bo) {
        return toAjax(iLogService.insertByBo(bo));
    }

    /**
     * 修改公告管理
     */
    @SaCheckPermission("contest:log:edit")
    @Log(title = "公告管理", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody LogBo bo) {
        return toAjax(iLogService.updateByBo(bo));
    }

    /**
     * 删除公告管理
     *
     * @param ids 主键串
     */
    @SaCheckPermission("contest:log:remove")
    @Log(title = "公告管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iLogService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
