package com.ruoyi.contest.controller;

import java.util.List;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;

import com.ruoyi.contest.domain.User;
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
import com.ruoyi.contest.domain.vo.UserVo;
import com.ruoyi.contest.domain.bo.UserBo;
import com.ruoyi.contest.service.IUserService;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 学生管理
 *
 * @author 李祥生
 * @date 2023-04-14
 */
@Validated
@RequiredArgsConstructor
@RestController
@RequestMapping("/contest/user")
public class UserController extends BaseController {

    private final IUserService iUserService;

    /**
     * 查询学生管理列表
     */
    @SaCheckPermission("contest:user:list")
    @GetMapping("/list")
    public TableDataInfo<UserVo> list(UserBo bo, PageQuery pageQuery) {
        return iUserService.queryPageList(bo, pageQuery);
    }

    /**
     * 导出学生管理列表
     */
    @SaCheckPermission("contest:user:export")
    @Log(title = "学生管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(UserBo bo, HttpServletResponse response) {
        List<UserVo> list = iUserService.queryList(bo);
        ExcelUtil.exportExcel(list, "学生管理", UserVo.class, response);
    }

    /**
     * 获取学生管理详细信息
     *
     * @param id 主键
     */
    @SaCheckPermission("contest:user:query")
    @GetMapping("/{id}")
    public R<UserVo> getInfo(@NotNull(message = "主键不能为空")
                                     @PathVariable Long id) {
        return R.ok(iUserService.queryById(id));
    }

    /**
     * 新增学生管理
     */
    @SaCheckPermission("contest:user:add")
    @Log(title = "学生管理", businessType = BusinessType.INSERT)
    @RepeatSubmit()
    @PostMapping()
    public R<Void> add(@Validated(AddGroup.class) @RequestBody UserBo bo) {
        return toAjax(iUserService.insertByBo(bo));
    }

    /**
     * 修改学生管理
     */
    @SaCheckPermission("contest:user:edit")
    @Log(title = "学生管理", businessType = BusinessType.UPDATE)
    @RepeatSubmit()
    @PutMapping()
    public R<Void> edit(@Validated(EditGroup.class) @RequestBody UserBo bo) {
        return toAjax(iUserService.updateByBo(bo));
    }

    /**
     * 删除学生管理
     *
     * @param ids 主键串
     */
    @SaCheckPermission("contest:user:remove")
    @Log(title = "学生管理", businessType = BusinessType.DELETE)
    @DeleteMapping("/{ids}")
    public R<Void> remove(@NotEmpty(message = "主键不能为空")
                          @PathVariable Long[] ids) {
        return toAjax(iUserService.deleteWithValidByIds(Arrays.asList(ids), true));
    }
    @GetMapping("/reset/{ids}")
    public R<Void> reset(@PathVariable Long ids) {
        return toAjax(iUserService.resetById(ids));
    }
    @GetMapping("/info/{uid}")
    public R<User> searchUserInfo (@PathVariable String uid) {
         User user  = iUserService.searchOne(uid);
         if (user == null) {
             return R.ok(null);
         } else {
             return R.ok(user);
         }
    }
    @GetMapping("/info2/{teamId}")
    public R<List> searchUserInfo2 (@PathVariable String teamId) {
        List list  = iUserService.searchList(teamId);
        if (list == null) {
            return R.ok(null);
        } else {
            return R.ok(list);
        }
    }

}
