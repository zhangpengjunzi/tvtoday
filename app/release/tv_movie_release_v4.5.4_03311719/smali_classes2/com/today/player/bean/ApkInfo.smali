.class public Lcom/today/player/bean/ApkInfo;
.super Ljava/lang/Object;
.source "ApkInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private apkUrl:Ljava/lang/String;

.field private versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkUrl()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/today/player/bean/ApkInfo;->apkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/today/player/bean/ApkInfo;->versionCode:I

    return v0
.end method

.method public setApkUrl(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/today/player/bean/ApkInfo;->apkUrl:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/today/player/bean/ApkInfo;->versionCode:I

    return-void
.end method
