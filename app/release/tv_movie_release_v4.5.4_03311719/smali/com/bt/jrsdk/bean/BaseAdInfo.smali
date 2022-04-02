.class public abstract Lcom/bt/jrsdk/bean/BaseAdInfo;
.super Ljava/lang/Object;
.source "BaseAdInfo.java"


# instance fields
.field public ads_id:I

.field private isVideo:I

.field private pic:[B

.field private reqId:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;

.field private webUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsVideo()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/bt/jrsdk/bean/BaseAdInfo;->isVideo:I

    return v0
.end method

.method public getPic()[B
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/bt/jrsdk/bean/BaseAdInfo;->pic:[B

    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/bt/jrsdk/bean/BaseAdInfo;->reqId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/bt/jrsdk/bean/BaseAdInfo;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWebUrl()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/bt/jrsdk/bean/BaseAdInfo;->webUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setIsVideo(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/bt/jrsdk/bean/BaseAdInfo;->isVideo:I

    return-void
.end method

.method public setPic([B)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/bt/jrsdk/bean/BaseAdInfo;->pic:[B

    return-void
.end method

.method public setReqId(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/bt/jrsdk/bean/BaseAdInfo;->reqId:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/bt/jrsdk/bean/BaseAdInfo;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method public setWebUrl(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/bt/jrsdk/bean/BaseAdInfo;->webUrl:Ljava/lang/String;

    return-void
.end method
