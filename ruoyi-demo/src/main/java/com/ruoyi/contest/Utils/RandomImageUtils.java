package com.ruoyi.contest.Utils;



import cn.hutool.json.JSONObject;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

public class RandomImageUtils {
        private static final OkHttpClient httpClient = new OkHttpClient.Builder()
                .connectTimeout(5, TimeUnit.SECONDS) // 设置连接超时时间为 5 秒钟
                .readTimeout(5, TimeUnit.SECONDS) // 设置读取超时时间为 5 秒钟
                .build();;

        /**
         * 获取随机图片的 URL 地址ss
         * @return 随机图片的 URL 地址
         * @throws IOException 如果发生网络错误或 API 响应无效，将抛出 IOException
         */
        public static String getRandomImageUrl() throws IOException {
            // 构建 API 请求 URL
            try {
                String apiUrl="https://api.r10086.com/樱道随机图片api接口.php?图片系列=风景系列9&参数=json";

                // 使用 OkHttpClient 发送 HTTP 请求
                Request request = new Request.Builder().url(apiUrl).build();
                Response response = httpClient.newCall(request).execute();
                String responseData = response.body().string();
                System.out.println(responseData);
                JSONObject jsonObject = new JSONObject(responseData);
                String imgLink = jsonObject.getStr("img");
                return imgLink;
            } catch (IOException e) {
                e.printStackTrace();
                return "";
            }
        }

    public static void main(String[] args) throws IOException {
        System.out.println(getRandomImageUrl());
    }

}
