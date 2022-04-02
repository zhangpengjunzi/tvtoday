.class public Lcom/today/player/bean/VodInfo;
.super Ljava/lang/Object;
.source "VodInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/bean/VodInfo$VodFrom;,
        Lcom/today/player/bean/VodInfo$VodSeries;
    }
.end annotation


# instance fields
.field public actor:Ljava/lang/String;

.field public apiUrl:Ljava/lang/String;

.field public area:Ljava/lang/String;

.field public des:Ljava/lang/String;

.field public director:Ljava/lang/String;

.field public dt:Ljava/lang/String;

.field public fromList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/VodInfo$VodFrom;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public isX5:Z

.field public lang:Ljava/lang/String;

.field public last:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public note:Ljava/lang/String;

.field public pic:Ljava/lang/String;

.field public playFlag:I

.field public playIndex:I

.field public seriesMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/today/player/bean/VodInfo$VodSeries;",
            ">;>;"
        }
    .end annotation
.end field

.field public sourceKey:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public tid:I

.field public type:Ljava/lang/String;

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/today/player/bean/VodInfo;->playIndex:I

    .line 47
    iput v0, p0, Lcom/today/player/bean/VodInfo;->playFlag:I

    return-void
.end method


# virtual methods
.method public setVideo(Lcom/today/player/bean/Movie$Video;)V
    .locals 6

    .line 52
    iget-object v0, p1, Lcom/today/player/bean/Movie$Video;->last:Ljava/lang/String;

    iput-object v0, p0, Lcom/today/player/bean/VodInfo;->last:Ljava/lang/String;

    .line 53
    iget v0, p1, Lcom/today/player/bean/Movie$Video;->id:I

    iput v0, p0, Lcom/today/player/bean/VodInfo;->id:I

    .line 54
    iget v0, p1, Lcom/today/player/bean/Movie$Video;->tid:I

    iput v0, p0, Lcom/today/player/bean/VodInfo;->tid:I

    .line 55
    iget-object v0, p1, Lcom/today/player/bean/Movie$Video;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/today/player/bean/VodInfo;->name:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/today/player/bean/Movie$Video;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/today/player/bean/VodInfo;->type:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/today/player/bean/Movie$Video;->dt:Ljava/lang/String;

    iput-object v0, p0, Lcom/today/player/bean/VodInfo;->dt:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lcom/today/player/bean/Movie$Video;->pic:Ljava/lang/String;

    iput-object v0, p0, Lcom/today/player/bean/VodInfo;->pic:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lcom/today/player/bean/Movie$Video;->lang:Ljava/lang/String;

    iput-object v0, p0, Lcom/today/player/bean/VodInfo;->lang:Ljava/lang/String;

    .line 60
    iget-object v0, p1, Lcom/today/player/bean/Movie$Video;->area:Ljava/lang/String;

    iput-object v0, p0, Lcom/today/player/bean/VodInfo;->area:Ljava/lang/String;

    .line 61
    iget v0, p1, Lcom/today/player/bean/Movie$Video;->year:I

    iput v0, p0, Lcom/today/player/bean/VodInfo;->year:I

    .line 62
    iget-object v0, p1, Lcom/today/player/bean/Movie$Video;->state:Ljava/lang/String;

    iput-object v0, p0, Lcom/today/player/bean/VodInfo;->state:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/today/player/bean/Movie$Video;->note:Ljava/lang/String;

    iput-object v0, p0, Lcom/today/player/bean/VodInfo;->note:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/today/player/bean/Movie$Video;->actor:Ljava/lang/String;

    iput-object v0, p0, Lcom/today/player/bean/VodInfo;->actor:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/today/player/bean/Movie$Video;->director:Ljava/lang/String;

    iput-object v0, p0, Lcom/today/player/bean/VodInfo;->director:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lcom/today/player/bean/Movie$Video;->sourceKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/today/player/bean/VodInfo;->sourceKey:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/today/player/bean/Movie$Video;->des:Ljava/lang/String;

    iput-object v0, p0, Lcom/today/player/bean/VodInfo;->des:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/today/player/bean/Movie$Video;->urlBean:Lcom/today/player/bean/Movie$Video$UrlBean;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/today/player/bean/Movie$Video;->urlBean:Lcom/today/player/bean/Movie$Video$UrlBean;

    iget-object v0, v0, Lcom/today/player/bean/Movie$Video$UrlBean;->infoList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/today/player/bean/Movie$Video;->urlBean:Lcom/today/player/bean/Movie$Video$UrlBean;

    iget-object v0, v0, Lcom/today/player/bean/Movie$Video$UrlBean;->infoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/today/player/bean/VodInfo;->seriesMap:Ljava/util/LinkedHashMap;

    .line 71
    iget-object p1, p1, Lcom/today/player/bean/Movie$Video;->urlBean:Lcom/today/player/bean/Movie$Video$UrlBean;

    iget-object p1, p1, Lcom/today/player/bean/Movie$Video$UrlBean;->infoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo;

    .line 72
    iget-object v1, p0, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    new-instance v2, Lcom/today/player/bean/VodInfo$VodFrom;

    iget-object v3, v0, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo;->flag:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/today/player/bean/VodInfo$VodFrom;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iget-object v2, v0, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo;->beanList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo$InfoBean;

    .line 75
    new-instance v4, Lcom/today/player/bean/VodInfo$VodSeries;

    iget-object v5, v3, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo$InfoBean;->name:Ljava/lang/String;

    iget-object v3, v3, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo$InfoBean;->url:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/today/player/bean/VodInfo$VodSeries;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/today/player/bean/VodInfo;->seriesMap:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Lcom/today/player/bean/Movie$Video$UrlBean$UrlInfo;->flag:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
