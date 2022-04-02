.class public Lcom/today/player/ui/adapter/SourceSettingAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SourceSettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/today/player/bean/PlayerModel$SourcesDTO;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f0b006b

    invoke-direct {p0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/bean/PlayerModel$SourcesDTO;)V
    .locals 7

    const v0, 0x7f0802bf

    .line 30
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0802c0

    .line 31
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0802be

    .line 32
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0802c1

    .line 33
    invoke-virtual {p1, v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 34
    invoke-virtual {p2}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "addnewkey"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 39
    :cond_0
    invoke-virtual {p2}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v6, "testspeed"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 40
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 45
    :cond_1
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    invoke-virtual {p2}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p2}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/today/player/ui/adapter/SourceSettingAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/today/player/ui/adapter/SourceSettingAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    const-string v0, ""

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isInternal()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "\u25b3"

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isActive()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u542f\u7528"

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p2}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isHome()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string v0, "\u2606\u9996\u9875\u6e90"

    .line 63
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_5
    const-string p2, "\u672a\u542f\u7528"

    .line 68
    :goto_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {p0, p1, p2}, Lcom/today/player/ui/adapter/SourceSettingAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/bean/PlayerModel$SourcesDTO;)V

    return-void
.end method
