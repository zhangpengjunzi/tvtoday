.class Lcom/tv/widget/SearchKeyboard$KeyboardAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "SearchKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tv/widget/SearchKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyboardAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/tv/widget/SearchKeyboard$Keyboard;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tv/widget/SearchKeyboard$Keyboard;",
            ">;)V"
        }
    .end annotation

    .line 154
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;)V

    .line 155
    sget p1, Lcom/tv/R$layout;->item_keyboard_1:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/tv/widget/SearchKeyboard$KeyboardAdapter;->addItemType(II)V

    .line 156
    sget p1, Lcom/tv/R$layout;->item_keyboard_2:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/tv/widget/SearchKeyboard$KeyboardAdapter;->addItemType(II)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/tv/widget/SearchKeyboard$1;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/tv/widget/SearchKeyboard$KeyboardAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/tv/widget/SearchKeyboard$Keyboard;)V
    .locals 4

    .line 161
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v3, p0, Lcom/tv/widget/SearchKeyboard$KeyboardAdapter;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_1

    .line 164
    sget v0, Lcom/tv/R$id;->img:I

    sget v1, Lcom/tv/R$drawable;->delete:I

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v2, p0, Lcom/tv/widget/SearchKeyboard$KeyboardAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_2

    .line 166
    sget v0, Lcom/tv/R$id;->img:I

    sget v1, Lcom/tv/R$drawable;->clear:I

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 169
    :cond_2
    :goto_0
    sget v0, Lcom/tv/R$id;->keyName:I

    invoke-static {p2}, Lcom/tv/widget/SearchKeyboard$Keyboard;->access$600(Lcom/tv/widget/SearchKeyboard$Keyboard;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    :goto_1
    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 151
    check-cast p2, Lcom/tv/widget/SearchKeyboard$Keyboard;

    invoke-virtual {p0, p1, p2}, Lcom/tv/widget/SearchKeyboard$KeyboardAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/tv/widget/SearchKeyboard$Keyboard;)V

    return-void
.end method
