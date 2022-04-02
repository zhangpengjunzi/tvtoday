.class public Lcom/today/player/ui/activity/DetailActivity;
.super Lcom/today/player/base/BaseActivity;
.source "DetailActivity.java"


# instance fields
.field private id:I

.field private ivThumb:Landroid/widget/ImageView;

.field private jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

.field private llLayout:Landroid/widget/LinearLayout;

.field private mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field private mGridViewFlag:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field private mVideo:Lcom/today/player/bean/Movie$Video;

.field private searchRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$SourcesDTO;",
            ">;"
        }
    .end annotation
.end field

.field private seriesAdapter:Lcom/today/player/ui/adapter/SeriesAdapter;

.field private sourceFromAdapter:Lcom/today/player/ui/adapter/SourceFromAdapter;

.field private sourceIndex:I

.field private sourceKey:Ljava/lang/String;

.field private sourceUrl:Ljava/lang/String;

.field private sourceViewModel:Lcom/today/player/viewmodel/SourceViewModel;

.field private title:Ljava/lang/String;

.field private tvActor:Landroid/widget/TextView;

.field private tvArea:Landroid/widget/TextView;

.field private tvDes:Landroid/widget/TextView;

.field private tvDirector:Landroid/widget/TextView;

.field private tvLang:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;

.field private tvPlay:Landroid/widget/TextView;

.field private tvQuickSearch:Landroid/widget/TextView;

.field private tvSite:Landroid/widget/TextView;

.field private tvType:Landroid/widget/TextView;

.field private tvYear:Landroid/widget/TextView;

.field private vodInfo:Lcom/today/player/bean/VodInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/today/player/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->vodInfo:Lcom/today/player/bean/VodInfo;

    return-object p0
.end method

.method static synthetic access$002(Lcom/today/player/ui/activity/DetailActivity;Lcom/today/player/bean/VodInfo;)Lcom/today/player/bean/VodInfo;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/today/player/ui/activity/DetailActivity;->vodInfo:Lcom/today/player/bean/VodInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/adapter/SeriesAdapter;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->seriesAdapter:Lcom/today/player/ui/adapter/SeriesAdapter;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/today/player/ui/activity/DetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/today/player/ui/activity/DetailActivity;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/today/player/ui/activity/DetailActivity;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/today/player/ui/activity/DetailActivity;->quickSearch()V

    return-void
.end method

.method static synthetic access$1200(Lcom/today/player/ui/activity/DetailActivity;)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/today/player/ui/activity/DetailActivity;->showSuccess()V

    return-void
.end method

.method static synthetic access$1300(Lcom/today/player/ui/activity/DetailActivity;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/today/player/ui/activity/DetailActivity;->id:I

    return p0
.end method

.method static synthetic access$1400(Lcom/today/player/ui/activity/DetailActivity;)Lcom/owen/tvrecyclerview/widget/TvRecyclerView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/today/player/ui/activity/DetailActivity;Landroid/view/View;)V
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/today/player/ui/activity/DetailActivity;->retrySetLoadSir(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/today/player/ui/activity/DetailActivity;)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/today/player/ui/activity/DetailActivity;->showSuccess()V

    return-void
.end method

.method static synthetic access$1700(Lcom/today/player/ui/activity/DetailActivity;)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/today/player/ui/activity/DetailActivity;->showEmpty()V

    return-void
.end method

.method static synthetic access$1800(Lcom/today/player/ui/activity/DetailActivity;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/today/player/ui/activity/DetailActivity;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvSite:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/today/player/ui/activity/DetailActivity;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/today/player/ui/activity/DetailActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/today/player/ui/activity/DetailActivity;->getHtml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$202(Lcom/today/player/ui/activity/DetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/today/player/ui/activity/DetailActivity;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvYear:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/today/player/ui/activity/DetailActivity;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvArea:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/today/player/ui/activity/DetailActivity;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvLang:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/today/player/ui/activity/DetailActivity;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvType:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/today/player/ui/activity/DetailActivity;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvActor:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/today/player/ui/activity/DetailActivity;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvDirector:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/today/player/ui/activity/DetailActivity;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvDes:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/today/player/ui/activity/DetailActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->ivThumb:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/today/player/ui/activity/DetailActivity;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/today/player/ui/activity/DetailActivity;Ljava/lang/String;Lcom/today/player/bean/VodInfo;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/today/player/ui/activity/DetailActivity;->insertVod(Ljava/lang/String;Lcom/today/player/bean/VodInfo;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/today/player/ui/activity/DetailActivity;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/today/player/ui/activity/DetailActivity;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/today/player/ui/activity/DetailActivity;)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/today/player/ui/activity/DetailActivity;->showEmpty()V

    return-void
.end method

.method static synthetic access$3300(Lcom/today/player/ui/activity/DetailActivity;Lcom/today/player/bean/AbsXml;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/today/player/ui/activity/DetailActivity;->searchData(Lcom/today/player/bean/AbsXml;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/dialog/QuickSearchDialog;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/today/player/ui/activity/DetailActivity;)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/today/player/ui/activity/DetailActivity;->showLoading()V

    return-void
.end method

.method static synthetic access$3600(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/viewmodel/SourceViewModel;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceViewModel:Lcom/today/player/viewmodel/SourceViewModel;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/today/player/ui/activity/DetailActivity;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/today/player/ui/activity/DetailActivity;->searchList()V

    return-void
.end method

.method static synthetic access$400(Lcom/today/player/ui/activity/DetailActivity;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/today/player/ui/activity/DetailActivity;)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/today/player/ui/activity/DetailActivity;->showSuccess()V

    return-void
.end method

.method static synthetic access$600(Lcom/today/player/ui/activity/DetailActivity;)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/today/player/ui/activity/DetailActivity;->showEmpty()V

    return-void
.end method

.method static synthetic access$700(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/adapter/SourceFromAdapter;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceFromAdapter:Lcom/today/player/ui/adapter/SourceFromAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/Movie$Video;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/today/player/ui/activity/DetailActivity;->mVideo:Lcom/today/player/bean/Movie$Video;

    return-object p0
.end method

.method static synthetic access$802(Lcom/today/player/ui/activity/DetailActivity;Lcom/today/player/bean/Movie$Video;)Lcom/today/player/bean/Movie$Video;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/today/player/ui/activity/DetailActivity;->mVideo:Lcom/today/player/bean/Movie$Video;

    return-object p1
.end method

.method static synthetic access$902(Lcom/today/player/ui/activity/DetailActivity;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceIndex:I

    return p1
.end method

.method private getHtml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<font color=\"#FFFFFF\">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</font>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initData()V
    .locals 4

    .line 292
    invoke-virtual {p0}, Lcom/today/player/ui/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    const/4 v2, -0x1

    .line 295
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/today/player/ui/activity/DetailActivity;->id:I

    const-string v1, "sourceUrl"

    .line 296
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceUrl:Ljava/lang/String;

    const-string v1, "sourceKey"

    .line 297
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceKey:Ljava/lang/String;

    .line 298
    iget v0, p0, Lcom/today/player/ui/activity/DetailActivity;->id:I

    if-eq v0, v2, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/today/player/ui/activity/DetailActivity;->showLoading()V

    .line 300
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceViewModel:Lcom/today/player/viewmodel/SourceViewModel;

    iget-object v1, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceUrl:Ljava/lang/String;

    iget v2, p0, Lcom/today/player/ui/activity/DetailActivity;->id:I

    iget-object v3, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/today/player/viewmodel/SourceViewModel;->getDetail(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 4

    const v0, 0x7f0800c6

    .line 99
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->llLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0800ba

    .line 100
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->ivThumb:Landroid/widget/ImageView;

    const v0, 0x7f0802aa

    .line 101
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvName:Landroid/widget/TextView;

    const v0, 0x7f0802ce

    .line 102
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvYear:Landroid/widget/TextView;

    const v0, 0x7f080291

    .line 103
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvArea:Landroid/widget/TextView;

    const v0, 0x7f0802a3

    .line 104
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvLang:Landroid/widget/TextView;

    const v0, 0x7f0802cb

    .line 105
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvType:Landroid/widget/TextView;

    const v0, 0x7f0802bb

    .line 106
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvSite:Landroid/widget/TextView;

    const v0, 0x7f08028f

    .line 107
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvActor:Landroid/widget/TextView;

    const v0, 0x7f08029c

    .line 108
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvDirector:Landroid/widget/TextView;

    const v0, 0x7f08029b

    .line 109
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvDes:Landroid/widget/TextView;

    const v0, 0x7f0802ae

    .line 110
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvPlay:Landroid/widget/TextView;

    const v0, 0x7f0802b3

    .line 111
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvQuickSearch:Landroid/widget/TextView;

    const v0, 0x7f0800d2

    .line 112
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iput-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    const v0, 0x7f0800d3

    .line 113
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iput-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->mGridViewFlag:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 114
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setHasFixedSize(Z)V

    .line 115
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->mGridViewFlag:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setHasFixedSize(Z)V

    .line 116
    new-instance v0, Lcom/today/player/ui/adapter/SeriesAdapter;

    invoke-direct {v0}, Lcom/today/player/ui/adapter/SeriesAdapter;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->seriesAdapter:Lcom/today/player/ui/adapter/SeriesAdapter;

    .line 117
    iget-object v1, p0, Lcom/today/player/ui/activity/DetailActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 118
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity;->mContext:Landroid/content/Context;

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 119
    new-instance v0, Lcom/today/player/ui/adapter/SourceFromAdapter;

    invoke-direct {v0}, Lcom/today/player/ui/adapter/SourceFromAdapter;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceFromAdapter:Lcom/today/player/ui/adapter/SourceFromAdapter;

    .line 120
    iget-object v1, p0, Lcom/today/player/ui/activity/DetailActivity;->mGridViewFlag:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 121
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->mGridViewFlag:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 123
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvPlay:Landroid/widget/TextView;

    new-instance v1, Lcom/today/player/ui/activity/DetailActivity$1;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/DetailActivity$1;-><init>(Lcom/today/player/ui/activity/DetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceFromAdapter:Lcom/today/player/ui/adapter/SourceFromAdapter;

    new-instance v1, Lcom/today/player/ui/activity/DetailActivity$2;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/DetailActivity$2;-><init>(Lcom/today/player/ui/activity/DetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/SourceFromAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->seriesAdapter:Lcom/today/player/ui/adapter/SeriesAdapter;

    new-instance v1, Lcom/today/player/ui/activity/DetailActivity$3;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/DetailActivity$3;-><init>(Lcom/today/player/ui/activity/DetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/SeriesAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->tvQuickSearch:Landroid/widget/TextView;

    new-instance v1, Lcom/today/player/ui/activity/DetailActivity$4;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/DetailActivity$4;-><init>(Lcom/today/player/ui/activity/DetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->llLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/DetailActivity;->setLoadSir(Landroid/view/View;)V

    return-void
.end method

.method private initViewModel()V
    .locals 2

    .line 217
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/today/player/viewmodel/SourceViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/today/player/viewmodel/SourceViewModel;

    iput-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceViewModel:Lcom/today/player/viewmodel/SourceViewModel;

    .line 218
    iget-object v0, v0, Lcom/today/player/viewmodel/SourceViewModel;->detailResult:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/today/player/ui/activity/DetailActivity$5;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/DetailActivity$5;-><init>(Lcom/today/player/ui/activity/DetailActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 279
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceViewModel:Lcom/today/player/viewmodel/SourceViewModel;

    iget-object v0, v0, Lcom/today/player/viewmodel/SourceViewModel;->searchResult:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/today/player/ui/activity/DetailActivity$6;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/DetailActivity$6;-><init>(Lcom/today/player/ui/activity/DetailActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private insertVod(Ljava/lang/String;Lcom/today/player/bean/VodInfo;)V
    .locals 1

    .line 332
    invoke-static {p1, p2}, Lcom/today/player/cache/RoomDataManger;->insertVodRecord(Ljava/lang/String;Lcom/today/player/bean/VodInfo;)V

    .line 333
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/today/player/event/RefreshEvent;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/today/player/event/RefreshEvent;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private quickSearch()V
    .locals 5

    .line 347
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceViewModel:Lcom/today/player/viewmodel/SourceViewModel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://api.pullword.com/get.php?source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity;->title:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&param1=0&param2=0&json=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/today/player/viewmodel/SourceViewModel;->getFenCi(Ljava/lang/String;)V

    .line 349
    invoke-direct {p0}, Lcom/today/player/ui/activity/DetailActivity;->searchList()V

    .line 350
    new-instance v0, Lcom/today/player/ui/dialog/QuickSearchDialog;

    invoke-direct {v0}, Lcom/today/player/ui/dialog/QuickSearchDialog;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    .line 351
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b004d

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->a:Landroid/view/View;

    .line 352
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0f00dd

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 353
    iget-object v1, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iput-object v0, v1, Lcom/today/player/ui/dialog/QuickSearchDialog;->b:Landroid/app/Dialog;

    const/4 v1, 0x0

    .line 354
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 355
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->b:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 356
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->b:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iget-object v4, v4, Lcom/today/player/ui/dialog/QuickSearchDialog;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 357
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->b:Landroid/app/Dialog;

    new-instance v4, Lcom/today/player/ui/activity/DetailActivity$7;

    invoke-direct {v4, p0}, Lcom/today/player/ui/activity/DetailActivity$7;-><init>(Lcom/today/player/ui/activity/DetailActivity;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 363
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->a:Landroid/view/View;

    .line 364
    iget-object v4, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    if-eqz v0, :cond_1

    const v3, 0x7f0800d2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    :cond_1
    check-cast v3, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    check-cast v3, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iput-object v3, v4, Lcom/today/player/ui/dialog/QuickSearchDialog;->e:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 365
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    new-instance v3, Lcom/today/player/ui/adapter/SearchAdapter;

    invoke-direct {v3}, Lcom/today/player/ui/adapter/SearchAdapter;-><init>()V

    iput-object v3, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->d:Lcom/today/player/ui/adapter/SearchAdapter;

    .line 366
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->e:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v0, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setHasFixedSize(Z)V

    .line 367
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->e:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v3, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    invoke-direct {v3, p0, v2, v1}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 368
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->e:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iget-object v2, v2, Lcom/today/player/ui/dialog/QuickSearchDialog;->d:Lcom/today/player/ui/adapter/SearchAdapter;

    invoke-virtual {v0, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 369
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->d:Lcom/today/player/ui/adapter/SearchAdapter;

    new-instance v2, Lcom/today/player/ui/activity/DetailActivity$8;

    invoke-direct {v2, p0}, Lcom/today/player/ui/activity/DetailActivity$8;-><init>(Lcom/today/player/ui/activity/DetailActivity;)V

    invoke-virtual {v0, v2}, Lcom/today/player/ui/adapter/SearchAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 382
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->d:Lcom/today/player/ui/adapter/SearchAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2}, Lcom/today/player/ui/adapter/SearchAdapter;->setNewData(Ljava/util/List;)V

    .line 383
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    new-instance v2, Lcom/today/player/ui/adapter/QuickSearchAdapter;

    invoke-direct {v2}, Lcom/today/player/ui/adapter/QuickSearchAdapter;-><init>()V

    iput-object v2, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->c:Lcom/today/player/ui/adapter/QuickSearchAdapter;

    .line 384
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iget-object v2, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->a:Landroid/view/View;

    const v3, 0x7f0800d4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iput-object v2, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->f:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 385
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->f:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iget-object v2, v2, Lcom/today/player/ui/dialog/QuickSearchDialog;->c:Lcom/today/player/ui/adapter/QuickSearchAdapter;

    invoke-virtual {v0, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 386
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->f:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    invoke-direct {v2, p0, v1, v1}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 387
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->c:Lcom/today/player/ui/adapter/QuickSearchAdapter;

    new-instance v1, Lcom/today/player/ui/activity/DetailActivity$9;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/DetailActivity$9;-><init>(Lcom/today/player/ui/activity/DetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/QuickSearchAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 398
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->c:Lcom/today/player/ui/adapter/QuickSearchAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/QuickSearchAdapter;->setNewData(Ljava/util/List;)V

    .line 399
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 400
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method

.method private searchData(Lcom/today/player/bean/AbsXml;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 434
    iget-object v0, p1, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    iget-object v0, v0, Lcom/today/player/bean/Movie;->videoList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    iget-object v0, v0, Lcom/today/player/bean/Movie;->videoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 436
    iget-object p1, p1, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    iget-object p1, p1, Lcom/today/player/bean/Movie;->videoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/bean/Movie$Video;

    .line 437
    iget-object v2, v1, Lcom/today/player/bean/Movie$Video;->type:Ljava/lang/String;

    invoke-static {v2}, Lcom/today/player/util/DefaultConfig;->isContains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 438
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 441
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/today/player/event/RefreshEvent;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lcom/today/player/event/RefreshEvent;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 444
    :cond_2
    iget p1, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceIndex:I

    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->searchRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 445
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lzy/okgo/OkGo;->cancelAll()V

    goto :goto_1

    .line 447
    :cond_3
    invoke-direct {p0}, Lcom/today/player/ui/activity/DetailActivity;->searchResult()V

    :goto_1
    return-void
.end method

.method private searchList()V
    .locals 3

    .line 411
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/api/ApiConfig;->getSourceBeanList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->searchRequestList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 412
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->searchRequestList:Ljava/util/List;

    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/today/player/api/ApiConfig;->getDefaultSourceBean()Lcom/today/player/bean/PlayerModel$SourcesDTO;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->searchRequestList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/today/player/api/ApiConfig;->getDefaultSourceBean()Lcom/today/player/bean/PlayerModel$SourcesDTO;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 415
    invoke-direct {p0}, Lcom/today/player/ui/activity/DetailActivity;->searchResult()V

    :cond_0
    return-void
.end method

.method private searchResult()V
    .locals 4

    .line 420
    iget v0, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceIndex:I

    iget-object v1, p0, Lcom/today/player/ui/activity/DetailActivity;->searchRequestList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 421
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->searchRequestList:Ljava/util/List;

    iget v1, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->searchRequestList:Ljava/util/List;

    iget v1, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getApi()Ljava/lang/String;

    move-result-object v0

    .line 424
    iget-object v1, p0, Lcom/today/player/ui/activity/DetailActivity;->searchRequestList:Ljava/util/List;

    iget v2, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getName()Ljava/lang/String;

    move-result-object v1

    .line 425
    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceViewModel:Lcom/today/player/viewmodel/SourceViewModel;

    iget-object v3, p0, Lcom/today/player/ui/activity/DetailActivity;->title:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v1}, Lcom/today/player/viewmodel/SourceViewModel;->getSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :cond_0
    iget v0, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceIndex:I

    .line 428
    invoke-direct {p0}, Lcom/today/player/ui/activity/DetailActivity;->searchResult()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getLayoutResID()I
    .locals 1

    const v0, 0x7f0b001d

    return v0
.end method

.method protected init()V
    .locals 1

    .line 92
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 93
    invoke-direct {p0}, Lcom/today/player/ui/activity/DetailActivity;->initView()V

    .line 94
    invoke-direct {p0}, Lcom/today/player/ui/activity/DetailActivity;->initViewModel()V

    .line 95
    invoke-direct {p0}, Lcom/today/player/ui/activity/DetailActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 338
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onDestroy()V

    .line 339
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->vodInfo:Lcom/today/player/bean/VodInfo;

    if-eqz v0, :cond_0

    .line 340
    iget-object v1, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceUrl:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/today/player/ui/activity/DetailActivity;->insertVod(Ljava/lang/String;Lcom/today/player/bean/VodInfo;)V

    .line 342
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public refresh(Lcom/today/player/event/RefreshEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 307
    iget v0, p1, Lcom/today/player/event/RefreshEvent;->type:I

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p1, Lcom/today/player/event/RefreshEvent;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 309
    iget-object p1, p1, Lcom/today/player/event/RefreshEvent;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 310
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->vodInfo:Lcom/today/player/bean/VodInfo;

    iget v0, v0, Lcom/today/player/bean/VodInfo;->playIndex:I

    if-eq p1, v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->seriesAdapter:Lcom/today/player/ui/adapter/SeriesAdapter;

    invoke-virtual {v0}, Lcom/today/player/ui/adapter/SeriesAdapter;->getData()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/today/player/ui/activity/DetailActivity;->vodInfo:Lcom/today/player/bean/VodInfo;

    iget v1, v1, Lcom/today/player/bean/VodInfo;->playIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/VodInfo$VodSeries;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/today/player/bean/VodInfo$VodSeries;->selected:Z

    .line 312
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->seriesAdapter:Lcom/today/player/ui/adapter/SeriesAdapter;

    iget-object v1, p0, Lcom/today/player/ui/activity/DetailActivity;->vodInfo:Lcom/today/player/bean/VodInfo;

    iget v1, v1, Lcom/today/player/bean/VodInfo;->playIndex:I

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/SeriesAdapter;->notifyItemChanged(I)V

    .line 313
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->seriesAdapter:Lcom/today/player/ui/adapter/SeriesAdapter;

    invoke-virtual {v0}, Lcom/today/player/ui/adapter/SeriesAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/VodInfo$VodSeries;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/today/player/bean/VodInfo$VodSeries;->selected:Z

    .line 314
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->seriesAdapter:Lcom/today/player/ui/adapter/SeriesAdapter;

    invoke-virtual {v0, p1}, Lcom/today/player/ui/adapter/SeriesAdapter;->notifyItemChanged(I)V

    .line 315
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 316
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->vodInfo:Lcom/today/player/bean/VodInfo;

    iput p1, v0, Lcom/today/player/bean/VodInfo;->playIndex:I

    .line 318
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity;->sourceUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->vodInfo:Lcom/today/player/bean/VodInfo;

    invoke-direct {p0, p1, v0}, Lcom/today/player/ui/activity/DetailActivity;->insertVod(Ljava/lang/String;Lcom/today/player/bean/VodInfo;)V

    goto :goto_0

    .line 321
    :cond_0
    iget v0, p1, Lcom/today/player/event/RefreshEvent;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 322
    iget-object v0, p1, Lcom/today/player/event/RefreshEvent;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->d:Lcom/today/player/ui/adapter/SearchAdapter;

    iget-object p1, p1, Lcom/today/player/event/RefreshEvent;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/today/player/ui/adapter/SearchAdapter;->addData(Ljava/util/Collection;)V

    goto :goto_0

    .line 325
    :cond_1
    iget v0, p1, Lcom/today/player/event/RefreshEvent;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lcom/today/player/event/RefreshEvent;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity;->jlVar:Lcom/today/player/ui/dialog/QuickSearchDialog;

    iget-object v0, v0, Lcom/today/player/ui/dialog/QuickSearchDialog;->c:Lcom/today/player/ui/adapter/QuickSearchAdapter;

    iget-object p1, p1, Lcom/today/player/event/RefreshEvent;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/today/player/ui/adapter/QuickSearchAdapter;->addData(Ljava/util/Collection;)V

    :cond_2
    :goto_0
    return-void
.end method
