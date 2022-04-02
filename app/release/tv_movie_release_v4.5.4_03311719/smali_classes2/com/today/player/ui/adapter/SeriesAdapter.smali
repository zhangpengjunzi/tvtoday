.class public Lcom/today/player/ui/adapter/SeriesAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SeriesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/today/player/bean/VodInfo$VodSeries;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f0b0068

    invoke-direct {p0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/bean/VodInfo$VodSeries;)V
    .locals 4

    const v0, 0x7f0802b7

    .line 28
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 29
    iget-boolean v2, p2, Lcom/today/player/bean/VodInfo$VodSeries;->selected:Z

    if-eqz v2, :cond_0

    .line 30
    iget-object v2, p0, Lcom/today/player/ui/adapter/SeriesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 32
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    :goto_0
    iget-object p2, p2, Lcom/today/player/bean/VodInfo$VodSeries;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/today/player/bean/VodInfo$VodSeries;

    invoke-virtual {p0, p1, p2}, Lcom/today/player/ui/adapter/SeriesAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/bean/VodInfo$VodSeries;)V

    return-void
.end method
