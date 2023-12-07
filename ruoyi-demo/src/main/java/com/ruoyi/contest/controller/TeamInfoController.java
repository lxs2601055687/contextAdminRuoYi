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
import com.ruoyi.contest.domain.vo.TeamInfoVo;
import com.ruoyi.contest.domain.bo.TeamInfoBo;
import com.ruoyi.contest.service.ITeamInfoService;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 团队管理
 *
 * @author 李祥生
 * @date 2023-04-19
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/contest/info")
public class TeamInfoController extends BaseController {

    private final ITeamInfoService iTeamInfoService;

    /**
     * 查询团队管理列表
     */
    @SaCheckPermission("contest:info:list")
    @GetMapping("/list")
    public TableDataInfo<TeamInfoVo> list(TeamInfoBo bo, PageQuery pageQuery) {
        return iTeamInfoService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出团队管理列表
     */
    @SaCheckPermission("contest:info:export")
    @Log(title = "团队管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(TeamInfoBo bo, HttpServletResponse response) {
        List<TeamInfoVo> list = iTeamInfoService.queryList(bo);
        ExcelUtil.exportExcel(list, "团队管理", TeamInfoVo.class, response);
    }

    /**
     * 获取团队管理详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("contest:info:query")
    @GetMapping("/{id}")
    public R<TeamInfoVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iTeamInfoService.queryById(id));
    }

    /**
     * 新增团队管理
     */
    @SaCheckPermission("contest:info:add")
    @Log(title = "团队管理", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody TeamInfoBo bo) {
        return toAjax(iTeamInfoService.insertByBo(bo));
    }

    /**
     * 修改团队管理
     */
    @SaCheckPermission("contest:info:edit")
    @Log(title = "团队管理", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody TeamInfoBo bo) {
        return toAjax(iTeamInfoService.updateByBo(bo));
    }

    /**
     * 删除团队管理
     *
     * @param ids 主键串
     */
    @SaCheckPermission("contest:info:remove")
    @Log(title = "团队管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iTeamInfoService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
}
