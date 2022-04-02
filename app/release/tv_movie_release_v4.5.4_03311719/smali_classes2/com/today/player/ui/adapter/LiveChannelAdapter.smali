.class public Lcom/today/player/ui/adapter/LiveChannelAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "LiveChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/today/player/bean/PlayerModel$LiveDTO;",
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

    const v1, 0x7f0b0061

    invoke-direct {p0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/bean/PlayerModel$LiveDTO;)V
    .locals 2

    const v0, 0x7f080294

    .line 27
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080293

    .line 28
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 29
    invoke-virtual {p2}, Lcom/today/player/bean/PlayerModel$LiveDTO;->getChannelNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {p2}, Lcom/today/player/bean/PlayerModel$LiveDTO;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p2}, Lcom/today/player/bean/PlayerModel$LiveDTO;->isDefault()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 32
    iget-object p2, p0, Lcom/today/player/ui/adapter/LiveChannelAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f050031

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    iget-object p2, p0, Lcom/today/player/ui/adapter/LiveChannelAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    const/4 p2, -0x1

    .line 36
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lcom/today/player/bean/PlayerModel$LiveDTO;

    invoke-virtual {p0, p1, p2}, Lcom/today/player/ui/adapter/LiveChannelAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/bean/PlayerModel$LiveDTO;)V

    return-void
.end method
