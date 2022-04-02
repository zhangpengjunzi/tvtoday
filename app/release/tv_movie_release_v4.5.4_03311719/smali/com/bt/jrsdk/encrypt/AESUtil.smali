.class public Lcom/bt/jrsdk/encrypt/AESUtil;
.super Ljava/lang/Object;
.source "AESUtil.java"


# static fields
.field public static final AESKEY:Ljava/lang/String; = "MMDDTTSSMMDDTTSS"

.field public static final TRANSFORMATION:Ljava/lang/String; = "AES/ECB/PKCS5Padding"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base64Decode([B)[B
    .locals 1

    if-eqz p0, :cond_1

    .line 95
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 96
    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static base64Encode([B)[B
    .locals 1

    if-eqz p0, :cond_1

    .line 90
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 91
    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static base64Encode2String([B)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 106
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 107
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static decryptAES([B[BLjava/lang/String;[B)[B
    .locals 6

    const-string v2, "AES"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 73
    invoke-static/range {v0 .. v5}, Lcom/bt/jrsdk/encrypt/AESUtil;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptBase64AES([B[BLjava/lang/String;[B)[B
    .locals 0

    .line 114
    invoke-static {p0}, Lcom/bt/jrsdk/encrypt/AESUtil;->base64Decode([B)[B

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/bt/jrsdk/encrypt/AESUtil;->decryptAES([B[BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptHexStringAES(Ljava/lang/String;[BLjava/lang/String;[B)[B
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/bt/jrsdk/encrypt/StringUtil;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/bt/jrsdk/encrypt/AESUtil;->decryptAES([B[BLjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptAES([B[BLjava/lang/String;[B)[B
    .locals 6

    const-string v2, "AES"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/bt/jrsdk/encrypt/AESUtil;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptAES2Base64([B[BLjava/lang/String;[B)[B
    .locals 0

    .line 80
    invoke-static {p0, p1, p2, p3}, Lcom/bt/jrsdk/encrypt/AESUtil;->encryptAES([B[BLjava/lang/String;[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/bt/jrsdk/encrypt/AESUtil;->base64Encode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptAES2HexString([B[BLjava/lang/String;[B)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-static {p0, p1, p2, p3}, Lcom/bt/jrsdk/encrypt/AESUtil;->encryptAES([B[BLjava/lang/String;[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/bt/jrsdk/encrypt/StringUtil;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    .line 38
    array-length v1, p0

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_5

    :cond_0
    :try_start_0
    const-string v1, "DES"

    .line 41
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    new-instance v1, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v1, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 43
    invoke-static {p2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    .line 44
    invoke-virtual {p1, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    goto :goto_0

    .line 46
    :cond_1
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object p1, v1

    .line 48
    :goto_0
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 p3, 0x1

    const/4 v1, 0x2

    if-eqz p4, :cond_4

    .line 49
    array-length v2, p4

    if-nez v2, :cond_2

    goto :goto_2

    .line 52
    :cond_2
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    if-eqz p5, :cond_3

    goto :goto_1

    :cond_3
    const/4 p3, 0x2

    .line 53
    :goto_1
    invoke-virtual {p2, p3, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_4

    :cond_4
    :goto_2
    if-eqz p5, :cond_5

    goto :goto_3

    :cond_5
    const/4 p3, 0x2

    .line 50
    :goto_3
    invoke-virtual {p2, p3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 55
    :goto_4
    invoke-virtual {p2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_5
    return-object v0
.end method
