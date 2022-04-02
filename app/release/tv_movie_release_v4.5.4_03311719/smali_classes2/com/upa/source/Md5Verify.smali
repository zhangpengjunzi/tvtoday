.class public Lcom/upa/source/Md5Verify;
.super Ljava/lang/Object;
.source "Md5Verify.java"


# static fields
.field public static final SOURCE_FILE:Ljava/lang/String; = "sourcefile"

.field public static final SOURCE_MD5:Ljava/lang/String; = "sourcemd5"

.field public static final SOURCE_TIME:Ljava/lang/String; = "sourcetime"

.field private static ourInstance:Lcom/upa/source/Md5Verify;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getByteMD5([B)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "MD5"

    .line 55
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 56
    array-length v1, p0

    const/4 v2, 0x0

    .line 57
    invoke-virtual {v0, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    .line 63
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/upa/source/Md5Verify;
    .locals 2

    .line 21
    sget-object v0, Lcom/upa/source/Md5Verify;->ourInstance:Lcom/upa/source/Md5Verify;

    if-nez v0, :cond_1

    .line 22
    const-class v0, Lcom/upa/source/Md5Verify;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/upa/source/Md5Verify;->ourInstance:Lcom/upa/source/Md5Verify;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/upa/source/Md5Verify;

    invoke-direct {v1}, Lcom/upa/source/Md5Verify;-><init>()V

    sput-object v1, Lcom/upa/source/Md5Verify;->ourInstance:Lcom/upa/source/Md5Verify;

    .line 27
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object v0, Lcom/upa/source/Md5Verify;->ourInstance:Lcom/upa/source/Md5Verify;

    return-object v0
.end method


# virtual methods
.method public getData(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "sourcefile"

    const-string v1, "sourcemd5"

    const-string v2, ""

    .line 37
    invoke-static {p1, v0, v1, v2}, Lcom/upa/source/PreferencesUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTime(Landroid/content/Context;)Ljava/lang/Long;
    .locals 4

    const-string v0, "sourcefile"

    const-string v1, "sourcetime"

    const-wide/16 v2, 0x0

    .line 45
    invoke-static {p1, v0, v1, v2, v3}, Lcom/upa/source/PreferencesUtils;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public setContent(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p0, p2, p1}, Lcom/upa/source/Md5Verify;->setData(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-virtual {p0, p2, v0, v1}, Lcom/upa/source/Md5Verify;->setTime(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method

.method public setData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "sourcefile"

    const-string v1, "sourcemd5"

    .line 41
    invoke-static {p1, v0, v1, p2}, Lcom/upa/source/PreferencesUtils;->writeString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTime(Landroid/content/Context;J)V
    .locals 2

    const-string v0, "sourcefile"

    const-string v1, "sourcetime"

    .line 49
    invoke-static {p1, v0, v1, p2, p3}, Lcom/upa/source/PreferencesUtils;->writeLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
