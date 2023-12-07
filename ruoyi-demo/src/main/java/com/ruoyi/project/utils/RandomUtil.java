package com.ruoyi.project.utils;

import java.util.Random;

public class RandomUtil {
    private static final int NUM_DIGITS = 10;  // 生成的数字位数

    /**
     * 生成一个十位数的随机数
     * @return 十位数的随机数
     */
    public static long generate() {
        Random random = new Random();
        long lowerBound = (long) Math.pow(10, NUM_DIGITS - 1);  // 下限
        long upperBound = (long) Math.pow(10, NUM_DIGITS) - 1;  // 上限
        long randomNumber = lowerBound + random.nextLong() % (upperBound - lowerBound + 1);
        return Math.abs(randomNumber);
    }
}
