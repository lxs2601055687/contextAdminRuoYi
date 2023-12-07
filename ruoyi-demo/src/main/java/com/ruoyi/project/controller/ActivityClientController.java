package com.ruoyi.project.controller;

import com.ruoyi.project.common.BaseResponse;
import com.ruoyi.project.common.ResultUtils;
import com.ruoyi.project.model.dto.activity.*;
import com.ruoyi.project.model.entity.Activity;
import com.ruoyi.project.model.vo.ActivityVO;
import com.ruoyi.project.service.ActivityClientService;
import org.springframework.beans.BeanUtils;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import java.util.stream.Collectors;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
@RequestMapping("/api")
@RestController
public class ActivityClientController {

    @Resource
    ActivityClientService activityClientService;
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd/");

    /**
     * 活动列表分页查询
     * @param activityPageRequest
     * @return
     */
   @PostMapping("/activity/select")
       public BaseResponse<List<ActivityVO>>selectUserList(@RequestBody ActivityPageRequest activityPageRequest) {
       int pageNum=activityPageRequest.getPageNum();
       int pageSize=activityPageRequest.getPageSize();
       List<Activity> activities = activityClientService.selectActivityList(pageNum, pageSize);
       List<ActivityVO> ActivityVoList = activities.stream().map(activity -> {
           ActivityVO activityVO =new ActivityVO();
           BeanUtils.copyProperties(activity, activityVO);
           activityVO.setAvatar(activity.getImg());
           activityVO.setDescription(activity.getDescription());
           activityVO.setEndAt(activity.getEndTime());
           activityVO.setWebsite(activity.getWebsite());
           activityVO.setOwner(activity.getOwner());
           activityVO.setStartAt(activity.getStartTime());
           activityVO.setTitle(activity.getName());
           activityVO.setId(activity.getId());
           activityVO.setType(activity.getType());
           activityVO.setActivityId(activity.getActivityId());
           if(activity.getStatus()==0){
               activityVO.setStatus("正在进行中");
           }else{
               activityVO.setStatus("活动已结束");
           }
           return activityVO;
       }).collect(Collectors.toList());
           return ResultUtils.success(ActivityVoList);
       }
    @PostMapping("/activity/upload")
    public BaseResponse<String> activityUpload(@RequestParam("multipartFile") MultipartFile multipartFile, HttpServletRequest request, @RequestParam("activityId") String activityId) throws IOException {
        //获取到原文件全名
        System.out.println(activityId);
        String originalFilename =  multipartFile.getOriginalFilename();
        // request.getServletContext().getRealPath("")这里不能使用这个，这个是获取servlet的对象，并获取到的一个临时文件的路径，所以这里不能使用这个
        //这里获取到我们项目的根目录，classpath下面
        String realPath = ResourceUtils.getURL(ResourceUtils.CLASSPATH_URL_PREFIX).getPath();
        System.out.println(realPath);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String format = simpleDateFormat.format(new Date());
        //文件夹路径,这里以时间作为目录
        String path = realPath + "static/" + format +"/"+activityId;
        System.out.println(path);
        //判断文件夹是否存在，存在就不需要重新创建，不存在就创建
        File file = new File(path);
        if (!file.exists()) {
            file.mkdirs();
        }

        //转换成对应的文件存储，new File第一个参数是目录的路径，第二个参数是文件的完整名字
        assert originalFilename != null;
        multipartFile.transferTo(new File(file, originalFilename));

        //上传文件的全路径
        String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + "/" + format + "/" + originalFilename;
        return ResultUtils.success(url);

    }
       @PostMapping("/activity/add")
       public BaseResponse<Integer> activityAdd(@RequestBody ActivityAddRequest activityAddRequest) throws IOException {
          Integer integer = activityClientService.activityAdd(activityAddRequest);
         return ResultUtils.success(integer);
       }
       @PostMapping("/activity/update")
        public BaseResponse<String> activityUpdate(@RequestBody ActivityUpdateRequest activityUpdateRequest){
           String activityId = activityUpdateRequest.getActivityId();
           Activity activity =new Activity();
           activity.setActivityId(activityUpdateRequest.getActivityId());
           activity.setStartTime(activityUpdateRequest.getStartTime());
           activity.setEndTime(activityUpdateRequest.getEndTime());
           activity.setWebsite(activityUpdateRequest.getWebsite());
           activity.setDescription(activityUpdateRequest.getDescribe());
           activity.setName(activityUpdateRequest.getName());
           activity.setOwner(activityUpdateRequest.getOwner());
           boolean result = activityClientService.updateActivity(activityId, activity);
             if(result){
                 return ResultUtils.success("更改成功");
             }else{
                 return ResultUtils.success("更改失败");
             }
       }
       @PostMapping("/activity/delete")
       public BaseResponse<String> activityDelete (@RequestBody ActivityDeleteRequest activityDeleteRequest) {
           String activityId = activityDeleteRequest.getActivityId();
           boolean result = activityClientService.deleteActivity(activityId);
           if(result){
               return ResultUtils.success("删除成功");
           }else{
               return ResultUtils.success("删除失败");
           }
       }
    @PostMapping("/activity/selectAll")
    public BaseResponse<List<String>> activitySelectAll () {
           List<String> activities = activityClientService.selectActivityName();
           System.out.println(activities);
         return ResultUtils.success(activities);
    }
    @PostMapping("/activity/selectByName")
    public BaseResponse<List<ActivityVO>> selectActivityByName (@RequestBody ActivitySelectRequest activitySelectRequest) {
       String name = activitySelectRequest.getName();
        List<Activity> activities = activityClientService.selectActivityByName(name);
        List<ActivityVO> ActivityVoList = activities.stream().map(activity -> {
            ActivityVO activityVO = new ActivityVO();
            BeanUtils.copyProperties(activity, activityVO);
            activityVO.setAvatar(activity.getImg());
            activityVO.setDescription(activity.getDescription());
            activityVO.setEndAt(activity.getEndTime());
            activityVO.setWebsite(activity.getWebsite());
            activityVO.setOwner(activity.getOwner());
            activityVO.setStartAt(activity.getStartTime());
            activityVO.setTitle(activity.getName());
            activityVO.setId(activity.getId());
            activityVO.setType(activity.getType());
            activityVO.setActivityId(activity.getActivityId());
            if (activity.getStatus() == 0) {
                activityVO.setStatus("正在进行中");
            } else {
                activityVO.setStatus("活动已结束");
            }
            return activityVO;
        }).collect(Collectors.toList());
        return ResultUtils.success(ActivityVoList);
    }
     @PostMapping("/activity/selectByStatus")
     public BaseResponse<List<ActivityVO>> selectActivityByStatus (@RequestBody ActivitySelectRequest activitySelectRequest){
         int status = activitySelectRequest.getStatus();
         List<Activity> activities = activityClientService.selectActivityByStatus(status);
         List<ActivityVO> ActivityVoList = activities.stream().map(activity -> {
             ActivityVO activityVO = new ActivityVO();
             BeanUtils.copyProperties(activity, activityVO);
             activityVO.setAvatar(activity.getImg());
             activityVO.setDescription(activity.getDescription());
             activityVO.setEndAt(activity.getEndTime());
             activityVO.setWebsite(activity.getWebsite());
             activityVO.setOwner(activity.getOwner());
             activityVO.setStartAt(activity.getStartTime());
             activityVO.setTitle(activity.getName());
             activityVO.setId(activity.getId());
             activityVO.setType(activity.getType());
             activityVO.setActivityId(activity.getActivityId());
             if (activity.getStatus() == 0) {
                 activityVO.setStatus("正在进行中");
             } else {
                 activityVO.setStatus("活动已结束");
             }
             return activityVO;
         }).collect(Collectors.toList());
         return ResultUtils.success(ActivityVoList);
     }
    @PostMapping("/activity/selectByType")
    public BaseResponse<List<ActivityVO>>selectUserListByType(@RequestBody ActivityPageRequest activityPageRequest) {
        int pageNum=activityPageRequest.getPageNum();
        int pageSize=activityPageRequest.getPageSize();
        String Type=activityPageRequest.getType();
        List<Activity> activities = activityClientService.selectActivityListByType(pageNum, pageSize,Type);
        List<ActivityVO> ActivityVoList = activities.stream().map(activity -> {
            ActivityVO activityVO =new ActivityVO();
            BeanUtils.copyProperties(activity, activityVO);
            activityVO.setAvatar(activity.getImg());
            activityVO.setDescription(activity.getDescription());
            activityVO.setEndAt(activity.getEndTime());
            activityVO.setWebsite(activity.getWebsite());
            activityVO.setOwner(activity.getOwner());
            activityVO.setStartAt(activity.getStartTime());
            activityVO.setTitle(activity.getName());
            activityVO.setId(activity.getId());
            activityVO.setType(activity.getType());
            activityVO.setActivityId(activity.getActivityId());
            if(activity.getStatus()==0){
                activityVO.setStatus("正在进行中");
            }else{
                activityVO.setStatus("报名已结束");
            }
            return activityVO;
        }).collect(Collectors.toList());
        return ResultUtils.success(ActivityVoList);
    }
    }




