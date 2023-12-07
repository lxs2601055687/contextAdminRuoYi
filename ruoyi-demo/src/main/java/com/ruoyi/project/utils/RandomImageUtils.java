package com.ruoyi.project.utils;


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
         * 获取随机图片的 URL 地址
         * @return 随机图片的 URL 地址
         * @throws IOException 如果发生网络错误或 API 响应无效，将抛出 IOException
         */
        public static String getRandomImageUrl() throws IOException {
            // 构建 API 请求 URL
            String apiUrl="https://shibe.online/api/shibes?count=1&urls=true&httpsUrls=true";

            // 使用 OkHttpClient 发送 HTTP 请求
            Request request = new Request.Builder().url(apiUrl).build();
            Response response = httpClient.newCall(request).execute();
            String responseData = response.body().string();
            String result = responseData.replace("[", "").replace("]", "");
            result = result.substring(1, result.length()-1);
            // 直接返回图片 URL
            return result;
        }

}
