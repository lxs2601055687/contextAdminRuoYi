package com.ruoyi.common.encrypt.encryptor;


import cn.hutool.core.codec.Base64;
import cn.hutool.crypto.SmUtil;
import cn.hutool.crypto.asymmetric.KeyType;
import cn.hutool.crypto.asymmetric.SM2;
import com.ruoyi.common.encrypt.EncryptContext;
import com.ruoyi.common.enums.AlgorithmType;
import com.ruoyi.common.enums.EncodeType;
import com.ruoyi.common.utils.StringUtils;

/**
 * sm2算法实现
 *
 * @author 老马
 * @version 4.6.0
 */
public class Sm2Encryptor extends AbstractEncryptor {

    private final SM2 sm2;

    public Sm2Encryptor(EncryptContext context) {
        super(context);
        String privateKey = context.getPrivateKey();
        String publicKey = context.getPublicKey();
        if (StringUtils.isAnyEmpty(privateKey, publicKey)) {
            throw new IllegalArgumentException("SM2公私钥均需要提供，公钥加密，私钥解密。");
        }
        this.sm2 = SmUtil.sm2(Base64.decode(privateKey), Base64.decode(publicKey));
    }

    /**
     * 获得当前算法
     */
    @Override
    public AlgorithmType algorithm() {
        return AlgorithmType.SM2;
    }

    /**
     * 加密
     *
     * @param value      待加密字符串
     * @param encodeType 加密后的编码格式
     */
    @Override
    public String encrypt(String value, EncodeType encodeType) {
        if (encodeType == EncodeType.HEX) {
            return sm2.encryptHex(value, KeyType.PublicKey);
        } else {
            return sm2.encryptBase64(value, KeyType.PublicKey);
        }
    }

    /**
     * 解密
     *
     * @param value      待加密字符串
     */
    @Override
    public String decrypt(String value) {
        return this.sm2.decryptStr(value, KeyType.PrivateKey);
    }
}
