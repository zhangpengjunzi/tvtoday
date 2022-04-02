.class public Lcom/today/player/ui/adapter/SearchAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/today/player/bean/Movie$Video;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f0b0065

    invoke-direct {p0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/bean/Movie$Video;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 23
    iget-object v1, p2, Lcom/today/player/bean/Movie$Video;->sourceName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p2, Lcom/today/player/bean/Movie$Video;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p2, Lcom/today/player/bean/Movie$Video;->type:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p2, p2, Lcom/today/player/bean/Movie$Video;->note:Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const-string p2, "%s %s %s %s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0802aa

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/today/player/bean/Movie$Video;

    invoke-virtual {p0, p1, p2}, Lcom/today/player/ui/adapter/SearchAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/bean/Movie$Video;)V

    return-void
.end method
