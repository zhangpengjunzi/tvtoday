.class public Lcom/today/player/bean/ListBean;
.super Ljava/lang/Object;
.source "ListBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/bean/ListBean$ListDTO;
    }
.end annotation


# instance fields
.field private code:I

.field private limit:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/ListBean$ListDTO;",
            ">;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/String;

.field private page:I

.field private pagecount:I

.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/today/player/bean/ListBean;->code:I

    return v0
.end method

.method public getLimit()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/today/player/bean/ListBean;->limit:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/today/player/bean/ListBean$ListDTO;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/today/player/bean/ListBean;->list:Ljava/util/List;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/today/player/bean/ListBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/today/player/bean/ListBean;->page:I

    return v0
.end method

.method public getPagecount()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/today/player/bean/ListBean;->pagecount:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/today/player/bean/ListBean;->total:I

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/today/player/bean/ListBean;->code:I

    return-void
.end method

.method public setLimit(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/today/player/bean/ListBean;->limit:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/today/player/bean/ListBean$ListDTO;",
            ">;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/today/player/bean/ListBean;->list:Ljava/util/List;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/today/player/bean/ListBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/today/player/bean/ListBean;->page:I

    return-void
.end method

.method public setPagecount(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/today/player/bean/ListBean;->pagecount:I

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/today/player/bean/ListBean;->total:I

    return-void
.end method

.method public toAbsXml()Lcom/today/player/bean/AbsXml;
    .locals 6

    .line 862
    new-instance v0, Lcom/today/player/bean/AbsXml;

    invoke-direct {v0}, Lcom/today/player/bean/AbsXml;-><init>()V

    .line 863
    new-instance v1, Lcom/today/player/bean/Movie;

    invoke-direct {v1}, Lcom/today/player/bean/Movie;-><init>()V

    .line 864
    iget v2, p0, Lcom/today/player/bean/ListBean;->page:I

    iput v2, v1, Lcom/today/player/bean/Movie;->page:I

    .line 865
    iget v2, p0, Lcom/today/player/bean/ListBean;->pagecount:I

    iput v2, v1, Lcom/today/player/bean/Movie;->pagecount:I

    const/4 v2, 0x0

    .line 867
    :try_start_0
    iget-object v3, p0, Lcom/today/player/bean/ListBean;->limit:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/today/player/bean/Movie;->pagesize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 869
    :catchall_0
    iput v2, v1, Lcom/today/player/bean/Movie;->pagesize:I

    .line 871
    :goto_0
    iget v3, p0, Lcom/today/player/bean/ListBean;->total:I

    iput v3, v1, Lcom/today/player/bean/Movie;->recordcount:I

    .line 872
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 873
    iget-object v4, p0, Lcom/today/player/bean/ListBean;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 874
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 876
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/today/player/bean/ListBean$ListDTO;

    invoke-virtual {v5}, Lcom/today/player/bean/ListBean$ListDTO;->toXmlVideo()Lcom/today/player/bean/Movie$Video;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 878
    :catchall_1
    iput v2, v1, Lcom/today/player/bean/Movie;->pagesize:I

    goto :goto_1

    .line 881
    :cond_0
    iput-object v3, v1, Lcom/today/player/bean/Movie;->videoList:Ljava/util/List;

    .line 882
    iput-object v1, v0, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    return-object v0
.end method
