.class public final Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecommendListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/adapter/RecommendListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0019\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0019\u0010\n\u001a\n \u0007*\u0004\u0018\u00010\u000b0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0019\u0010\u000e\u001a\n \u0007*\u0004\u0018\u00010\u000f0\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0019\u0010\u0012\u001a\n \u0007*\u0004\u0018\u00010\u00130\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0019\u0010\u0016\u001a\n \u0007*\u0004\u0018\u00010\u000b0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "view",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "icon",
        "Landroid/widget/ImageView;",
        "kotlin.jvm.PlatformType",
        "getIcon",
        "()Landroid/widget/ImageView;",
        "install",
        "Landroid/widget/TextView;",
        "getInstall",
        "()Landroid/widget/TextView;",
        "progress",
        "Landroid/widget/ProgressBar;",
        "getProgress",
        "()Landroid/widget/ProgressBar;",
        "root",
        "Landroid/widget/LinearLayout;",
        "getRoot",
        "()Landroid/widget/LinearLayout;",
        "title",
        "getTitle",
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
.field private final icon:Landroid/widget/ImageView;

.field private final install:Landroid/widget/TextView;

.field private final progress:Landroid/widget/ProgressBar;

.field private final root:Landroid/widget/LinearLayout;

.field private final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0800aa

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0802cf

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0802d4

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;->install:Landroid/widget/TextView;

    const v0, 0x7f080115

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;->progress:Landroid/widget/ProgressBar;

    const v0, 0x7f0800ca

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;->root:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final getIcon()Landroid/widget/ImageView;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getInstall()Landroid/widget/TextView;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;->install:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getProgress()Landroid/widget/ProgressBar;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public final getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;->root:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getTitle()Landroid/widget/TextView;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/today/player/ui/adapter/RecommendListAdapter$MyViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method
