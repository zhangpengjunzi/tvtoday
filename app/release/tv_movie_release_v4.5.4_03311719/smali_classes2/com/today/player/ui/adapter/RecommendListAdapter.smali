.class public final Lcom/today/player/ui/adapter/RecommendListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecommendListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/adapter/RecommendListAdapter$onRecommendItemClick;,
        Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000cH\u0016J\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000cH\u0016J\u000e\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/today/player/ui/adapter/RecommendListAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;",
        "context",
        "Landroid/content/Context;",
        "list",
        "",
        "Lcom/today/player/bean/RecommendBean;",
        "(Landroid/content/Context;Ljava/util/List;)V",
        "listener",
        "Lcom/today/player/ui/adapter/RecommendListAdapter$onRecommendItemClick;",
        "getItemCount",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "setRecommendItemClickListener",
        "MyViewHolder",
        "onRecommendItemClick",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/RecommendBean;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/today/player/ui/adapter/RecommendListAdapter$onRecommendItemClick;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/today/player/bean/RecommendBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/today/player/ui/adapter/RecommendListAdapter;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/today/player/ui/adapter/RecommendListAdapter;->list:Ljava/util/List;

    return-void
.end method

.method public static synthetic lambda$KH3SZpNFaxOhpQoQAgUXi2jz_ss(Lcom/today/player/ui/adapter/RecommendListAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/today/player/ui/adapter/RecommendListAdapter;->onBindViewHolder$lambda-0(Lcom/today/player/ui/adapter/RecommendListAdapter;ILandroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda-0(Lcom/today/player/ui/adapter/RecommendListAdapter;ILandroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object p0, p0, Lcom/today/player/ui/adapter/RecommendListAdapter;->listener:Lcom/today/player/ui/adapter/RecommendListAdapter$onRecommendItemClick;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lcom/today/player/ui/adapter/RecommendListAdapter$onRecommendItemClick;->onItemClick(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/today/player/ui/adapter/RecommendListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/today/player/ui/adapter/RecommendListAdapter;->onBindViewHolder(Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;I)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/today/player/ui/adapter/RecommendListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/RecommendBean;

    invoke-virtual {v0}, Lcom/today/player/bean/RecommendBean;->getIcon()Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/today/player/ui/adapter/RecommendListAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/bean/RecommendBean;

    invoke-virtual {v1}, Lcom/today/player/bean/RecommendBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/today/player/ui/adapter/RecommendListAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/today/player/bean/RecommendBean;

    invoke-virtual {v2}, Lcom/today/player/bean/RecommendBean;->getProgress()I

    move-result v2

    .line 37
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v3

    .line 38
    invoke-virtual {v3, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 40
    new-instance v4, Lcom/today/player/picasso/RoundTransformation;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "position="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/today/player/util/MD5;->string2MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/today/player/picasso/RoundTransformation;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 41
    invoke-virtual {v4, v0}, Lcom/today/player/picasso/RoundTransformation;->centerCorp(Z)Lcom/today/player/picasso/RoundTransformation;

    move-result-object v0

    .line 42
    iget-object v4, p0, Lcom/today/player/ui/adapter/RecommendListAdapter;->context:Landroid/content/Context;

    const/high16 v5, 0x42f00000    # 120.0f

    invoke-static {v4, v5}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v6, p0, Lcom/today/player/ui/adapter/RecommendListAdapter;->context:Landroid/content/Context;

    invoke-static {v6, v5}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/today/player/picasso/RoundTransformation;->override(II)Lcom/today/player/picasso/RoundTransformation;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Transformation;

    .line 39
    invoke-virtual {v3, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const v3, 0x7f0700db

    .line 48
    invoke-virtual {v0, v3}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v3}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 50
    invoke-virtual {p1}, Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;->getIcon()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 51
    invoke-virtual {p1}, Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p1}, Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;->getInstall()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/today/player/ui/adapter/RecommendListAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/bean/RecommendBean;

    invoke-virtual {v1}, Lcom/today/player/bean/RecommendBean;->getInstall()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p1}, Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;->getProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 54
    invoke-virtual {p1}, Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance v0, Lcom/today/player/ui/adapter/-$$Lambda$RecommendListAdapter$KH3SZpNFaxOhpQoQAgUXi2jz_ss;

    invoke-direct {v0, p0, p2}, Lcom/today/player/ui/adapter/-$$Lambda$RecommendListAdapter$KH3SZpNFaxOhpQoQAgUXi2jz_ss;-><init>(Lcom/today/player/ui/adapter/RecommendListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/today/player/ui/adapter/RecommendListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/today/player/ui/adapter/RecommendListAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0064

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 29
    new-instance p2, Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final setRecommendItemClickListener(Lcom/today/player/ui/adapter/RecommendListAdapter$onRecommendItemClick;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/today/player/ui/adapter/RecommendListAdapter;->listener:Lcom/today/player/ui/adapter/RecommendListAdapter$onRecommendItemClick;

    return-void
.end method
