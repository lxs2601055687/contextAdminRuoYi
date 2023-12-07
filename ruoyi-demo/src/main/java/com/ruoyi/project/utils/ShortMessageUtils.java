package com.ruoyi.project.utils;

import org.apache.http.HttpResponse;

import java.util.HashMap;
import java.util.Map;

public  class ShortMessageUtils {

  public static String setShotMessage(String phone ,String code){
    String host = "https://dfsns.market.alicloudapi.com";
    String path = "/data/send_sms";
    String method = "POST";
    String AppCode = "c868e48e08e74e5885047a96dcb3e148";
    Map<String, String> headers = new HashMap<>();
    //最后在header中的格式(中间是英文空格)为Authorization:APPCODE 83359fd73fe94948385f570e3c139105
    headers.put("Authorization","APPCODE "+AppCode);
    //根据API的要求，定义相对应的Content-Type
    headers.put("Content-Type","application/x-www-form-urlencoded; charset=UTF-8");
    Map<String, String> query = new HashMap<>();
    Map<String, String> body = new HashMap<>();
    body.put("content","code:"+code+",expire_at:5");
    body.put("phone_number",phone);
    body.put("template_id","CST_ptdie100");
    {
      HttpResponse response = null;
      try {
        response = HttpUtils.doPost(host, path, method, headers, query, body);
      } catch (Exception e) {
        throw new RuntimeException(e);
      }
      System.out.println(response.toString());
    }
    return "成功";
  }
}


