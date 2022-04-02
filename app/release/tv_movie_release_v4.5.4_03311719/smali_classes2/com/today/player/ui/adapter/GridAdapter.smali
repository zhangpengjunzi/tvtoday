.class public Lcom/today/player/ui/adapter/GridAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "GridAdapter.java"


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

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f0b005c

    invoke-direct {p0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/bean/Movie$Video;)V
    .locals 6

    const v0, 0x7f0802ce

    .line 32
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 33
    iget v1, p2, Lcom/today/player/bean/Movie$Video;->year:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    .line 34
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 36
    :cond_0
    iget v1, p2, Lcom/today/player/bean/Movie$Video;->year:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0802a3

    .line 39
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 40
    iget-object v1, p2, Lcom/today/player/bean/Movie$Video;->lang:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 43
    :cond_1
    iget-object v1, p2, Lcom/today/player/bean/Movie$Video;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const v0, 0x7f080291

    .line 46
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    iget-object v1, p2, Lcom/today/player/bean/Movie$Video;->area:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 50
    :cond_2
    iget-object v1, p2, Lcom/today/player/bean/Movie$Video;->area:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    :goto_2
    iget-object v0, p2, Lcom/today/player/bean/Movie$Video;->note:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f0802ab

    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 56
    :cond_3
    iget-object v0, p2, Lcom/today/player/bean/Movie$Video;->note:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_3
    const v0, 0x7f0802aa

    .line 58
    iget-object v1, p2, Lcom/today/player/bean/Movie$Video;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v0, 0x7f08028f

    .line 59
    iget-object v1, p2, Lcom/today/player/bean/Movie$Video;->actor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v0, 0x7f0800ba

    .line 60
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 62
    iget-object v1, p2, Lcom/today/player/bean/Movie$Video;->pic:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v2, 0x7f0700a0

    if-nez v1, :cond_4

    .line 63
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object v4, p2, Lcom/today/player/bean/Movie$Video;->pic:Ljava/lang/String;

    .line 64
    invoke-virtual {v1, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v4, Lcom/today/player/picasso/RoundTransformation;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lcom/today/player/bean/Movie$Video;->pic:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "position="

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/today/player/util/MD5;->string2MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/today/player/picasso/RoundTransformation;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 66
    invoke-virtual {v4, p1}, Lcom/today/player/picasso/RoundTransformation;->centerCorp(Z)Lcom/today/player/picasso/RoundTransformation;

    move-result-object p1

    iget-object p2, p0, Lcom/today/player/ui/adapter/GridAdapter;->mContext:Landroid/content/Context;

    const/high16 v4, 0x43600000    # 224.0f

    .line 67
    invoke-static {p2, v4}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result p2

    iget-object v4, p0, Lcom/today/player/ui/adapter/GridAdapter;->mContext:Landroid/content/Context;

    const v5, 0x439d8000    # 315.0f

    invoke-static {v4, v5}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p1, p2, v4}, Lcom/today/player/picasso/RoundTransformation;->override(II)Lcom/today/player/picasso/RoundTransformation;

    move-result-object p1

    iget-object p2, p0, Lcom/today/player/ui/adapter/GridAdapter;->mContext:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    .line 68
    invoke-static {p2, v4}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, p2, v3}, Lcom/today/player/picasso/RoundTransformation;->roundRadius(II)Lcom/today/player/picasso/RoundTransformation;

    move-result-object p1

    .line 65
    invoke-virtual {v1, p1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 69
    invoke-virtual {p1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 70
    invoke-virtual {p1, v2}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 71
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_4

    .line 73
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lcom/today/player/bean/Movie$Video;

    invoke-virtual {p0, p1, p2}, Lcom/today/player/ui/adapter/GridAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/bean/Movie$Video;)V

    return-void
.end method
