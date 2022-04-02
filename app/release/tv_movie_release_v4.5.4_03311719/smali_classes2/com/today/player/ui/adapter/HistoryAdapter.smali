.class public Lcom/today/player/ui/adapter/HistoryAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "HistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/today/player/bean/VodInfo;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f0b005c

    invoke-direct {p0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/bean/VodInfo;)V
    .locals 6

    const v0, 0x7f0802ce

    .line 33
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    iget v1, p2, Lcom/today/player/bean/VodInfo;->year:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    .line 35
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 37
    :cond_0
    iget v1, p2, Lcom/today/player/bean/VodInfo;->year:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0802a3

    .line 40
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    iget-object v1, p2, Lcom/today/player/bean/VodInfo;->lang:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 44
    :cond_1
    iget-object v1, p2, Lcom/today/player/bean/VodInfo;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const v0, 0x7f080291

    .line 47
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    iget-object v1, p2, Lcom/today/player/bean/VodInfo;->area:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 51
    :cond_2
    iget-object v1, p2, Lcom/today/player/bean/VodInfo;->area:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const v0, 0x7f0802ab

    .line 54
    iget-object v1, p2, Lcom/today/player/bean/VodInfo;->note:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v0, 0x7f0802aa

    .line 55
    iget-object v1, p2, Lcom/today/player/bean/VodInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v0, 0x7f08028f

    .line 56
    iget-object v1, p2, Lcom/today/player/bean/VodInfo;->actor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v0, 0x7f0800ba

    .line 57
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 59
    iget-object v0, p2, Lcom/today/player/bean/VodInfo;->pic:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f0700a0

    if-nez v0, :cond_3

    .line 60
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v2, p2, Lcom/today/player/bean/VodInfo;->pic:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v2, Lcom/today/player/picasso/RoundTransformation;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/today/player/bean/VodInfo;->pic:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/today/player/bean/VodInfo;->note:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 62
    invoke-static {p2}, Lcom/today/player/util/MD5;->string2MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Lcom/today/player/picasso/RoundTransformation;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 63
    invoke-virtual {v2, p2}, Lcom/today/player/picasso/RoundTransformation;->centerCorp(Z)Lcom/today/player/picasso/RoundTransformation;

    move-result-object v2

    iget-object v3, p0, Lcom/today/player/ui/adapter/HistoryAdapter;->mContext:Landroid/content/Context;

    const/high16 v4, 0x43600000    # 224.0f

    .line 64
    invoke-static {v3, v4}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/today/player/ui/adapter/HistoryAdapter;->mContext:Landroid/content/Context;

    const v5, 0x439d8000    # 315.0f

    invoke-static {v4, v5}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/today/player/picasso/RoundTransformation;->override(II)Lcom/today/player/picasso/RoundTransformation;

    move-result-object v2

    iget-object v3, p0, Lcom/today/player/ui/adapter/HistoryAdapter;->mContext:Landroid/content/Context;

    const/high16 v4, 0x40a00000    # 5.0f

    .line 65
    invoke-static {v3, v4}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/today/player/picasso/RoundTransformation;->roundRadius(II)Lcom/today/player/picasso/RoundTransformation;

    move-result-object p2

    .line 62
    invoke-virtual {v0, p2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    .line 66
    invoke-virtual {p2, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    .line 67
    invoke-virtual {p2, v1}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p2

    .line 68
    invoke-virtual {p2, p1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_3

    .line 70
    :cond_3
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/today/player/bean/VodInfo;

    invoke-virtual {p0, p1, p2}, Lcom/today/player/ui/adapter/HistoryAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/bean/VodInfo;)V

    return-void
.end method
