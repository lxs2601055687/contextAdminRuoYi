package com.ruoyi.contest.controller;

import java.io.IOException;
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
import com.ruoyi.contest.domain.vo.ActivityVo;
import com.ruoyi.contest.domain.bo.ActivityBo;
import com.ruoyi.contest.service.IActivityService;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 竞赛管理
 *
 * @author 李祥生
 * @date 2023-04-14
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/contest/activity")
public class ActivityController extends BaseController {

    private final IActivityService iActivityService;

    /**
     * 查询竞赛管理列表
     */
    @SaCheckPermission("contest:activity:list")
    @GetMapping("/list")
    public TableDataInfo<ActivityVo> list(ActivityBo bo, PageQuery pageQuery) {
        return iActivityService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出竞赛管理列表
     */
    @SaCheckPermission("contest:activity:export")
    @Log(title = "竞赛管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(ActivityBo bo, HttpServletResponse response) {
        List<ActivityVo> list = iActivityService.queryList(bo);
        ExcelUtil.exportExcel(list, "竞赛管理", ActivityVo.class, response);
    }

    /**
     * 获取竞赛管理详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("contest:activity:query")
    @GetMapping("/{id}")
    public R<ActivityVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iActivityService.queryById(id));
    }

    /**
     * 新增竞赛管理
     */
    @SaCheckPermission("contest:activity:add")
    @Log(title = "竞赛管理", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody ActivityBo bo) throws IOException {
        return toAjax(iActivityService.insertByBo(bo));
    }

    /**
     * 修改竞赛管理
     */
    @SaCheckPermission("contest:activity:edit")
    @Log(title = "竞赛管理", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody ActivityBo bo) {
        return toAjax(iActivityService.updateByBo(bo));
    }

    /**
     * 删除竞赛管理
     *
     * @param ids 主键串
     */
    @SaCheckPermission("contest:activity:remove")
    @Log(title = "竞赛管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iActivityService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
