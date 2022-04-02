.class public Lcom/today/player/ui/adapter/HistorySourceAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "HistorySourceAdapter.java"


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

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f0b005d

    invoke-direct {p0, v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/bean/PlayerModel$SourcesDTO;)V
    .locals 2

    .line 24
    invoke-virtual {p2}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getName()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0802ca

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 25
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {p0, p1, p2}, Lcom/today/player/ui/adapter/HistorySourceAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/today/player/bean/PlayerModel$SourcesDTO;)V

    return-void
.end method
