.class public Lcom/today/player/ui/adapter/SortAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "SortAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/today/player/bean/MovieSort$SortData;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f0b005d

    invoke-direct {p0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/bean/MovieSort$SortData;)V
    .locals 4

    .line 31
    iget-object v0, p2, Lcom/today/player/bean/MovieSort$SortData;->name:Ljava/lang/String;

    const v1, 0x7f0802ca

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 32
    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 33
    iget-boolean p2, p2, Lcom/today/player/bean/MovieSort$SortData;->select:Z

    const v2, 0x7f080099

    if-eqz p2, :cond_0

    .line 34
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 35
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/4 v0, -0x1

    .line 36
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    invoke-virtual {p2}, Landroid/widget/TextView;->invalidate()V

    .line 38
    iget-object p2, p0, Lcom/today/player/ui/adapter/SortAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p2, p1, v3}, Lcom/upa/tool/Tools;->shapeSolidSort(Landroid/content/Context;Landroid/view/View;I)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 41
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const v1, -0x33000001    # -1.3421772E8f

    .line 42
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    iget-object p2, p0, Lcom/today/player/ui/adapter/SortAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/upa/tool/Tools;->shapeSolidSort(Landroid/content/Context;Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/today/player/bean/MovieSort$SortData;

    invoke-virtual {p0, p1, p2}, Lcom/today/player/ui/adapter/SortAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/bean/MovieSort$SortData;)V

    return-void
.end method
