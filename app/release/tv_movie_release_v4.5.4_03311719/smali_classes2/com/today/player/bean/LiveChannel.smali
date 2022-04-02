.class public Lcom/today/player/bean/LiveChannel;
.super Ljava/lang/Object;
.source "LiveChannel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private channelLogo:Ljava/lang/String;

.field private channelName:Ljava/lang/String;

.field private channelNum:I

.field private channelUrl:Ljava/lang/String;

.field public selected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelLogo()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/today/player/bean/LiveChannel;->channelLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/today/player/bean/LiveChannel;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelNum()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/today/player/bean/LiveChannel;->channelNum:I

    return v0
.end method

.method public getChannelUrl()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/today/player/bean/LiveChannel;->channelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelLogo(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/today/player/bean/LiveChannel;->channelLogo:Ljava/lang/String;

    return-void
.end method

.method public setChannelName(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/today/player/bean/LiveChannel;->channelName:Ljava/lang/String;

    return-void
.end method

.method public setChannelNum(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/today/player/bean/LiveChannel;->channelNum:I

    return-void
.end method

.method public setChannelUrl(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/today/player/bean/LiveChannel;->channelUrl:Ljava/lang/String;

    return-void
.end method
