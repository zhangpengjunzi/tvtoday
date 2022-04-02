.class public Lcom/today/player/ui/adapter/TipSortAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "TipSortAdapter.java"


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

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f0b006c

    invoke-direct {p0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/bean/MovieSort$SortData;)V
    .locals 2

    .line 17
    iget-object v0, p2, Lcom/today/player/bean/MovieSort$SortData;->name:Ljava/lang/String;

    const v1, 0x7f0802bc

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 18
    iget-boolean p2, p2, Lcom/today/player/bean/MovieSort$SortData;->select:Z

    const v0, 0x7f0802bd

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/today/player/bean/MovieSort$SortData;

    invoke-virtual {p0, p1, p2}, Lcom/today/player/ui/adapter/TipSortAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/bean/MovieSort$SortData;)V

    return-void
.end method
