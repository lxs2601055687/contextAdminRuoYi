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
import com.ruoyi.contest.domain.vo.ProjectVo;
import com.ruoyi.contest.domain.bo.ProjectBo;
import com.ruoyi.contest.service.IProjectService;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 项目管理
 *
 * @author 李祥生
 * @date 2023-05-12
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/contest/project")
public class ProjectController extends BaseController {

    private final IProjectService iProjectService;

    /**
     * 查询项目管理列表
     */
    @SaCheckPermission("contest:project:list")
    @GetMapping("/list")
    public TableDataInfo<ProjectVo> list(ProjectBo bo, PageQuery pageQuery) {
        return iProjectService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出项目管理列表
     */
    @SaCheckPermission("contest:project:export")
    @Log(title = "项目管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(ProjectBo bo, HttpServletResponse response) {
        List<ProjectVo> list = iProjectService.queryList(bo);
        ExcelUtil.exportExcel(list, "项目管理", ProjectVo.class, response);
    }

    /**
     * 获取项目管理详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("contest:project:query")
    @GetMapping("/{id}")
    public R<ProjectVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iProjectService.queryById(id));
    }

    /**
     * 新增项目管理
     */
    @SaCheckPermission("contest:project:add")
    @Log(title = "项目管理", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody ProjectBo bo) {
        return toAjax(iProjectService.insertByBo(bo));
    }

    /**
     * 修改项目管理
     */
    @SaCheckPermission("contest:project:edit")
    @Log(title = "项目管理", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody ProjectBo bo) {
        return toAjax(iProjectService.updateByBo(bo));
    }

    /**
     * 删除项目管理
     *
     * @param ids 主键串
     */
    @SaCheckPermission("contest:project:remove")
    @Log(title = "项目管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iProjectService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
    @GetMapping("/download/{teamId}")
    public R<Long> getProject (@PathVariable String teamId){
        Long ossId = iProjectService.getProject(teamId);
        return R.ok(ossId);
    }
}
