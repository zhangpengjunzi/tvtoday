.class public Lcom/today/player/ui/adapter/MediaCodeAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "MediaCodeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/today/player/ui/dialog/MediaCodeDialog$pg;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f0b005e

    invoke-direct {p0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/ui/dialog/MediaCodeDialog$pg;)V
    .locals 2

    const v0, 0x7f0802a1

    .line 24
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 25
    iget-boolean v0, p2, Lcom/today/player/ui/dialog/MediaCodeDialog$pg;->c:Z

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/today/player/ui/adapter/MediaCodeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    :goto_0
    iget-object p2, p2, Lcom/today/player/ui/dialog/MediaCodeDialog$pg;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/today/player/ui/dialog/MediaCodeDialog$pg;

    invoke-virtual {p0, p1, p2}, Lcom/today/player/ui/adapter/MediaCodeAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/ui/dialog/MediaCodeDialog$pg;)V

    return-void
.end method
