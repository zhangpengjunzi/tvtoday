.class public Lcom/today/player/ui/adapter/TestSpeedAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "TestSpeedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/today/player/ui/dialog/TestSpeed$vg;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f0b006d

    invoke-direct {p0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/ui/dialog/TestSpeed$vg;)V
    .locals 3

    .line 21
    iget-object v0, p2, Lcom/today/player/ui/dialog/TestSpeed$vg;->a:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0802aa

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 22
    iget p2, p2, Lcom/today/player/ui/dialog/TestSpeed$vg;->b:I

    const/high16 v0, -0x10000

    const v1, 0x7fffffff

    if-ne p2, v1, :cond_0

    const-string p2, "\u8fde\u63a5\u5931\u8d25"

    goto :goto_0

    :cond_0
    if-lez p2, :cond_2

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f4

    if-ge p2, v2, :cond_1

    const v0, -0xff0100

    :cond_1
    move-object p2, v1

    goto :goto_0

    :cond_2
    const-string p2, "\u6b63\u5728\u6d4b\u901f"

    :goto_0
    const v1, 0x7f0802c2

    .line 35
    invoke-virtual {p1, v1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 36
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lcom/today/player/ui/dialog/TestSpeed$vg;

    invoke-virtual {p0, p1, p2}, Lcom/today/player/ui/adapter/TestSpeedAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/ui/dialog/TestSpeed$vg;)V

    return-void
.end method
