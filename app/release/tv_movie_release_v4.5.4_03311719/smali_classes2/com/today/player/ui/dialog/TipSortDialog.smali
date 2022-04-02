.class public Lcom/today/player/ui/dialog/TipSortDialog;
.super Ljava/lang/Object;
.source "TipSortDialog.java"


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/app/Dialog;

.field public c:Lcom/today/player/bean/PlayerModel$SourcesDTO;

.field public d:Lcom/today/player/ui/adapter/TipSortAdapter;

.field public e:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public f:Lcom/today/player/viewmodel/SourceViewModel;

.field public g:Lcom/kingja/loadsir/core/LoadService;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/MovieSort$SortData;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/today/player/bean/MovieSort$SortData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/dialog/TipSortDialog;->h:Ljava/util/List;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/today/player/ui/dialog/TipSortDialog;->i:Lcom/today/player/bean/MovieSort$SortData;

    return-void
.end method
