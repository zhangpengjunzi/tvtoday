.class public Lcom/today/player/widget/LivePlayView;
.super Lxyz/doikki/videoplayer/player/VideoView;
.source "LivePlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/widget/LivePlayView$OnPlayIndexListener;
    }
.end annotation


# instance fields
.field private channelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/LiveChannel;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/today/player/widget/LivePlayView$OnPlayIndexListener;

.field private liveChannel:Lcom/today/player/bean/LiveChannel;

.field private playIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/today/player/widget/LivePlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/today/player/widget/LivePlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lxyz/doikki/videoplayer/player/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/today/player/widget/LivePlayView;->channelList:Ljava/util/List;

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/today/player/widget/LivePlayView;->playIndex:I

    return-void
.end method

.method private getLiveChannelIndex(I)Lcom/today/player/bean/LiveChannel;
    .locals 2

    if-ltz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/today/player/widget/LivePlayView;->channelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 71
    iput p1, p0, Lcom/today/player/widget/LivePlayView;->playIndex:I

    .line 72
    iget-object v0, p0, Lcom/today/player/widget/LivePlayView;->channelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/LiveChannel;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lcom/today/player/widget/LivePlayView;->playIndex:I

    .line 75
    iget-object v0, p0, Lcom/today/player/widget/LivePlayView;->channelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/LiveChannel;

    .line 77
    :goto_0
    iget v0, p0, Lcom/today/player/widget/LivePlayView;->playIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "live_channel"

    invoke-static {v1, v0}, Lcom/orhanobut/hawk/Hawk;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object p1
.end method

.method private getLiveChannelNum(I)Lcom/today/player/bean/LiveChannel;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    :goto_0
    iget-object v2, p0, Lcom/today/player/widget/LivePlayView;->channelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 53
    iget-object v2, p0, Lcom/today/player/widget/LivePlayView;->channelList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/today/player/bean/LiveChannel;

    .line 54
    invoke-virtual {v2}, Lcom/today/player/bean/LiveChannel;->getChannelNum()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 55
    iput v1, p0, Lcom/today/player/widget/LivePlayView;->playIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    .line 61
    iput v0, p0, Lcom/today/player/widget/LivePlayView;->playIndex:I

    .line 62
    iget-object p1, p0, Lcom/today/player/widget/LivePlayView;->channelList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/today/player/bean/LiveChannel;

    .line 64
    :cond_2
    iget p1, p0, Lcom/today/player/widget/LivePlayView;->playIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "live_channel"

    invoke-static {v0, p1}, Lcom/orhanobut/hawk/Hawk;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v2
.end method


# virtual methods
.method public changeChannel(I)V
    .locals 1

    .line 104
    invoke-direct {p0, p1}, Lcom/today/player/widget/LivePlayView;->getLiveChannelNum(I)Lcom/today/player/bean/LiveChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/today/player/widget/LivePlayView;->liveChannel:Lcom/today/player/bean/LiveChannel;

    .line 105
    iget-object p1, p0, Lcom/today/player/widget/LivePlayView;->listener:Lcom/today/player/widget/LivePlayView$OnPlayIndexListener;

    if-eqz p1, :cond_0

    .line 106
    iget v0, p0, Lcom/today/player/widget/LivePlayView;->playIndex:I

    invoke-interface {p1, v0}, Lcom/today/player/widget/LivePlayView$OnPlayIndexListener;->onPlayIndex(I)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/today/player/widget/LivePlayView;->release()V

    .line 109
    invoke-virtual {p0}, Lcom/today/player/widget/LivePlayView;->play()V

    return-void
.end method

.method public changeChannelIndex(I)V
    .locals 1

    .line 113
    invoke-direct {p0, p1}, Lcom/today/player/widget/LivePlayView;->getLiveChannelIndex(I)Lcom/today/player/bean/LiveChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/today/player/widget/LivePlayView;->liveChannel:Lcom/today/player/bean/LiveChannel;

    .line 114
    iget-object p1, p0, Lcom/today/player/widget/LivePlayView;->listener:Lcom/today/player/widget/LivePlayView$OnPlayIndexListener;

    if-eqz p1, :cond_0

    .line 115
    iget v0, p0, Lcom/today/player/widget/LivePlayView;->playIndex:I

    invoke-interface {p1, v0}, Lcom/today/player/widget/LivePlayView$OnPlayIndexListener;->onPlayIndex(I)V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/today/player/widget/LivePlayView;->release()V

    .line 118
    invoke-virtual {p0}, Lcom/today/player/widget/LivePlayView;->play()V

    return-void
.end method

.method public getLiveChannel()Lcom/today/player/bean/LiveChannel;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/today/player/widget/LivePlayView;->liveChannel:Lcom/today/player/bean/LiveChannel;

    return-object v0
.end method

.method public getPlayIndex()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/today/player/widget/LivePlayView;->playIndex:I

    return v0
.end method

.method public getPlayIndex(I)I
    .locals 2

    const/4 v0, 0x0

    .line 91
    :goto_0
    iget-object v1, p0, Lcom/today/player/widget/LivePlayView;->channelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/today/player/widget/LivePlayView;->channelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/bean/LiveChannel;

    .line 93
    invoke-virtual {v1}, Lcom/today/player/bean/LiveChannel;->getChannelNum()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public hasContains(I)Z
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/today/player/widget/LivePlayView;->channelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/bean/LiveChannel;

    .line 83
    invoke-virtual {v1}, Lcom/today/player/bean/LiveChannel;->getChannelNum()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public play()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/today/player/widget/LivePlayView;->liveChannel:Lcom/today/player/bean/LiveChannel;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/today/player/bean/LiveChannel;->getChannelUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/today/player/widget/LivePlayView;->setUrl(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/today/player/widget/LivePlayView;->start()V

    :cond_0
    return-void
.end method

.method public playNext()V
    .locals 2

    .line 122
    iget v0, p0, Lcom/today/player/widget/LivePlayView;->playIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/today/player/widget/LivePlayView;->playIndex:I

    .line 123
    iget-object v1, p0, Lcom/today/player/widget/LivePlayView;->channelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Lcom/today/player/widget/LivePlayView;->playIndex:I

    .line 126
    :cond_0
    iget v0, p0, Lcom/today/player/widget/LivePlayView;->playIndex:I

    invoke-direct {p0, v0}, Lcom/today/player/widget/LivePlayView;->getLiveChannelIndex(I)Lcom/today/player/bean/LiveChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/widget/LivePlayView;->liveChannel:Lcom/today/player/bean/LiveChannel;

    .line 127
    iget-object v0, p0, Lcom/today/player/widget/LivePlayView;->listener:Lcom/today/player/widget/LivePlayView$OnPlayIndexListener;

    if-eqz v0, :cond_1

    .line 128
    iget v1, p0, Lcom/today/player/widget/LivePlayView;->playIndex:I

    invoke-interface {v0, v1}, Lcom/today/player/widget/LivePlayView$OnPlayIndexListener;->onPlayIndex(I)V

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/today/player/widget/LivePlayView;->release()V

    .line 131
    invoke-virtual {p0}, Lcom/today/player/widget/LivePlayView;->play()V

    return-void
.end method

.method public playPrevious()V
    .locals 2

    .line 135
    iget v0, p0, Lcom/today/player/widget/LivePlayView;->playIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/today/player/widget/LivePlayView;->playIndex:I

    if-gez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/today/player/widget/LivePlayView;->channelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/today/player/widget/LivePlayView;->playIndex:I

    .line 139
    :cond_0
    iget v0, p0, Lcom/today/player/widget/LivePlayView;->playIndex:I

    invoke-direct {p0, v0}, Lcom/today/player/widget/LivePlayView;->getLiveChannelIndex(I)Lcom/today/player/bean/LiveChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/widget/LivePlayView;->liveChannel:Lcom/today/player/bean/LiveChannel;

    .line 140
    iget-object v0, p0, Lcom/today/player/widget/LivePlayView;->listener:Lcom/today/player/widget/LivePlayView$OnPlayIndexListener;

    if-eqz v0, :cond_1

    .line 141
    iget v1, p0, Lcom/today/player/widget/LivePlayView;->playIndex:I

    invoke-interface {v0, v1}, Lcom/today/player/widget/LivePlayView$OnPlayIndexListener;->onPlayIndex(I)V

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/today/player/widget/LivePlayView;->release()V

    .line 144
    invoke-virtual {p0}, Lcom/today/player/widget/LivePlayView;->play()V

    return-void
.end method

.method public setChannel(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/today/player/bean/LiveChannel;",
            ">;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/today/player/widget/LivePlayView;->channelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    iget-object v0, p0, Lcom/today/player/widget/LivePlayView;->channelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "live_channel"

    invoke-static {v0, p1}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 46
    invoke-direct {p0, p1}, Lcom/today/player/widget/LivePlayView;->getLiveChannelIndex(I)Lcom/today/player/bean/LiveChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/today/player/widget/LivePlayView;->liveChannel:Lcom/today/player/bean/LiveChannel;

    .line 47
    invoke-virtual {p0}, Lcom/today/player/widget/LivePlayView;->play()V

    return-void
.end method

.method public setOnPlayIndexListener(Lcom/today/player/widget/LivePlayView$OnPlayIndexListener;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/today/player/widget/LivePlayView;->listener:Lcom/today/player/widget/LivePlayView$OnPlayIndexListener;

    return-void
.end method
