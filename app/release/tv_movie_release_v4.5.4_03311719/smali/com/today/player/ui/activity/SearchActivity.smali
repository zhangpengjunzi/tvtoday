.class public Lcom/today/player/ui/activity/SearchActivity;
.super Lcom/today/player/base/BaseActivity;
.source "SearchActivity.java"


# instance fields
.field private etSearch:Landroid/widget/EditText;

.field private ivQRCode:Landroid/widget/ImageView;

.field private llLayout:Landroid/widget/LinearLayout;

.field private mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field private searchAdapter:Lcom/today/player/ui/adapter/SearchAdapter;

.field private searchRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$SourcesDTO;",
            ">;"
        }
    .end annotation
.end field

.field private searchTitle:Ljava/lang/String;

.field private sourceIndex:I

.field private sourceViewModel:Lcom/today/player/viewmodel/SourceViewModel;

.field private tvAddress:Landroid/widget/TextView;

.field private tvClear:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;

.field private tvSearch:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/today/player/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/today/player/ui/activity/SearchActivity;->sourceIndex:I

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->searchTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/ui/activity/SearchActivity;)Lcom/today/player/ui/adapter/SearchAdapter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/today/player/ui/activity/SearchActivity;->searchAdapter:Lcom/today/player/ui/adapter/SearchAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/today/player/ui/activity/SearchActivity;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/today/player/ui/activity/SearchActivity;->etSearch:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/today/player/ui/activity/SearchActivity;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/today/player/ui/activity/SearchActivity;->search(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/today/player/ui/activity/SearchActivity;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/today/player/ui/activity/SearchActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/today/player/ui/activity/SearchActivity;Lcom/today/player/bean/AbsXml;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/today/player/ui/activity/SearchActivity;->searchData(Lcom/today/player/bean/AbsXml;)V

    return-void
.end method

.method private cancel()V
    .locals 2

    .line 218
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    return-void
.end method

.method private initData()V
    .locals 3

    .line 134
    invoke-direct {p0}, Lcom/today/player/ui/activity/SearchActivity;->refreshQRCode()V

    .line 135
    invoke-virtual {p0}, Lcom/today/player/ui/activity/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "title"

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lcom/today/player/ui/activity/SearchActivity;->showLoading()V

    .line 139
    invoke-direct {p0, v0}, Lcom/today/player/ui/activity/SearchActivity;->search(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 5

    .line 74
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    const v0, 0x7f0800c6

    .line 75
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->llLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f080088

    .line 76
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->etSearch:Landroid/widget/EditText;

    const v0, 0x7f0802aa

    .line 77
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->tvName:Landroid/widget/TextView;

    const v0, 0x7f0802b5

    .line 78
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->tvSearch:Landroid/widget/TextView;

    const v0, 0x7f080295

    .line 79
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->tvClear:Landroid/widget/TextView;

    const v0, 0x7f080290

    .line 80
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->tvAddress:Landroid/widget/TextView;

    const v0, 0x7f0800b9

    .line 81
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->ivQRCode:Landroid/widget/ImageView;

    const v0, 0x7f0800d2

    .line 82
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iput-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    const/4 v1, 0x1

    .line 83
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setHasFixedSize(Z)V

    .line 84
    iget-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    iget-object v3, p0, Lcom/today/player/ui/activity/SearchActivity;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 85
    new-instance v0, Lcom/today/player/ui/adapter/SearchAdapter;

    invoke-direct {v0}, Lcom/today/player/ui/adapter/SearchAdapter;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->searchAdapter:Lcom/today/player/ui/adapter/SearchAdapter;

    .line 86
    iget-object v1, p0, Lcom/today/player/ui/activity/SearchActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 87
    iget-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->searchAdapter:Lcom/today/player/ui/adapter/SearchAdapter;

    new-instance v1, Lcom/today/player/ui/activity/SearchActivity$1;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/SearchActivity$1;-><init>(Lcom/today/player/ui/activity/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/SearchAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->tvSearch:Landroid/widget/TextView;

    new-instance v1, Lcom/today/player/ui/activity/SearchActivity$2;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/SearchActivity$2;-><init>(Lcom/today/player/ui/activity/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->tvClear:Landroid/widget/TextView;

    new-instance v1, Lcom/today/player/ui/activity/SearchActivity$3;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/SearchActivity$3;-><init>(Lcom/today/player/ui/activity/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->llLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/SearchActivity;->setLoadSir(Landroid/view/View;)V

    return-void
.end method

.method private initViewModel()V
    .locals 2

    .line 124
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/today/player/viewmodel/SourceViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/today/player/viewmodel/SourceViewModel;

    iput-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->sourceViewModel:Lcom/today/player/viewmodel/SourceViewModel;

    .line 125
    iget-object v0, v0, Lcom/today/player/viewmodel/SourceViewModel;->searchResult:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/today/player/ui/activity/SearchActivity$4;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/SearchActivity$4;-><init>(Lcom/today/player/ui/activity/SearchActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private refreshQRCode()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/today/player/server/RemoteServer;->getServerAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/today/player/ui/activity/SearchActivity;->tvAddress:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "\u8fdc\u7a0b\u641c\u7d22\u4f7f\u7528\u624b\u673a/\u7535\u8111\u626b\u63cf\u4e0b\u9762\u4e8c\u7ef4\u7801\u6216\u8005\u76f4\u63a5\u6d4f\u89c8\u5668\u8bbf\u95ee\u5730\u5740\n%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v1, p0, Lcom/today/player/ui/activity/SearchActivity;->ivQRCode:Landroid/widget/ImageView;

    const/16 v2, 0x12c

    invoke-static {v0, v2, v2}, Lcom/tv/QRCodeGen;->generateBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private search(Ljava/lang/String;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/today/player/ui/activity/SearchActivity;->sourceIndex:I

    .line 162
    invoke-direct {p0}, Lcom/today/player/ui/activity/SearchActivity;->cancel()V

    .line 163
    invoke-virtual {p0}, Lcom/today/player/ui/activity/SearchActivity;->showLoading()V

    .line 164
    iput-object p1, p0, Lcom/today/player/ui/activity/SearchActivity;->searchTitle:Ljava/lang/String;

    .line 165
    iget-object p1, p0, Lcom/today/player/ui/activity/SearchActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setVisibility(I)V

    .line 166
    iget-object p1, p0, Lcom/today/player/ui/activity/SearchActivity;->searchAdapter:Lcom/today/player/ui/adapter/SearchAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1}, Lcom/today/player/ui/adapter/SearchAdapter;->setNewData(Ljava/util/List;)V

    .line 167
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/today/player/api/ApiConfig;->getSourceBeanList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/today/player/ui/activity/SearchActivity;->searchRequestList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/today/player/ui/activity/SearchActivity;->searchRequestList:Ljava/util/List;

    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/today/player/api/ApiConfig;->getDefaultSourceBean()Lcom/today/player/bean/PlayerModel$SourcesDTO;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 170
    iget-object p1, p0, Lcom/today/player/ui/activity/SearchActivity;->searchRequestList:Ljava/util/List;

    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/today/player/api/ApiConfig;->getDefaultSourceBean()Lcom/today/player/bean/PlayerModel$SourcesDTO;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 171
    invoke-direct {p0}, Lcom/today/player/ui/activity/SearchActivity;->searchResult()V

    :cond_0
    return-void
.end method

.method private searchData(Lcom/today/player/bean/AbsXml;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 191
    iget-object v0, p1, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    iget-object v0, v0, Lcom/today/player/bean/Movie;->videoList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    iget-object v0, v0, Lcom/today/player/bean/Movie;->videoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
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

    .line 194
    iget-object v2, v1, Lcom/today/player/bean/Movie$Video;->type:Ljava/lang/String;

    invoke-static {v2}, Lcom/today/player/util/DefaultConfig;->isContains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 198
    :cond_1
    iget-object p1, p0, Lcom/today/player/ui/activity/SearchActivity;->searchAdapter:Lcom/today/player/ui/adapter/SearchAdapter;

    invoke-virtual {p1}, Lcom/today/player/ui/adapter/SearchAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 199
    iget-object p1, p0, Lcom/today/player/ui/activity/SearchActivity;->searchAdapter:Lcom/today/player/ui/adapter/SearchAdapter;

    invoke-virtual {p1, v0}, Lcom/today/player/ui/adapter/SearchAdapter;->addData(Ljava/util/Collection;)V

    goto :goto_1

    .line 201
    :cond_2
    invoke-virtual {p0}, Lcom/today/player/ui/activity/SearchActivity;->showSuccess()V

    .line 202
    iget-object p1, p0, Lcom/today/player/ui/activity/SearchActivity;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setVisibility(I)V

    .line 203
    iget-object p1, p0, Lcom/today/player/ui/activity/SearchActivity;->searchAdapter:Lcom/today/player/ui/adapter/SearchAdapter;

    invoke-virtual {p1, v0}, Lcom/today/player/ui/adapter/SearchAdapter;->setNewData(Ljava/util/List;)V

    .line 207
    :cond_3
    :goto_1
    iget p1, p0, Lcom/today/player/ui/activity/SearchActivity;->sourceIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/today/player/ui/activity/SearchActivity;->sourceIndex:I

    iget-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->searchRequestList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 208
    iget-object p1, p0, Lcom/today/player/ui/activity/SearchActivity;->searchAdapter:Lcom/today/player/ui/adapter/SearchAdapter;

    invoke-virtual {p1}, Lcom/today/player/ui/adapter/SearchAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_4

    .line 209
    invoke-virtual {p0}, Lcom/today/player/ui/activity/SearchActivity;->showEmpty()V

    .line 211
    :cond_4
    invoke-direct {p0}, Lcom/today/player/ui/activity/SearchActivity;->cancel()V

    goto :goto_2

    .line 213
    :cond_5
    invoke-direct {p0}, Lcom/today/player/ui/activity/SearchActivity;->searchResult()V

    :goto_2
    return-void
.end method

.method private searchResult()V
    .locals 4

    .line 176
    iget v0, p0, Lcom/today/player/ui/activity/SearchActivity;->sourceIndex:I

    iget-object v1, p0, Lcom/today/player/ui/activity/SearchActivity;->searchRequestList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 177
    iget-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->searchRequestList:Ljava/util/List;

    iget v1, p0, Lcom/today/player/ui/activity/SearchActivity;->sourceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/today/player/ui/activity/SearchActivity;->searchRequestList:Ljava/util/List;

    iget v1, p0, Lcom/today/player/ui/activity/SearchActivity;->sourceIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getApi()Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/today/player/ui/activity/SearchActivity;->searchRequestList:Ljava/util/List;

    iget v2, p0, Lcom/today/player/ui/activity/SearchActivity;->sourceIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getName()Ljava/lang/String;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lcom/today/player/ui/activity/SearchActivity;->sourceViewModel:Lcom/today/player/viewmodel/SourceViewModel;

    iget-object v3, p0, Lcom/today/player/ui/activity/SearchActivity;->searchTitle:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v1}, Lcom/today/player/viewmodel/SourceViewModel;->getSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_0
    iget v0, p0, Lcom/today/player/ui/activity/SearchActivity;->sourceIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/today/player/ui/activity/SearchActivity;->sourceIndex:I

    .line 184
    invoke-direct {p0}, Lcom/today/player/ui/activity/SearchActivity;->searchResult()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getLayoutResID()I
    .locals 1

    const v0, 0x7f0b0029

    return v0
.end method

.method protected init()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/today/player/ui/activity/SearchActivity;->initView()V

    .line 69
    invoke-direct {p0}, Lcom/today/player/ui/activity/SearchActivity;->initViewModel()V

    .line 70
    invoke-direct {p0}, Lcom/today/player/ui/activity/SearchActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 223
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onDestroy()V

    .line 224
    invoke-direct {p0}, Lcom/today/player/ui/activity/SearchActivity;->cancel()V

    .line 225
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public server(Lcom/today/player/event/ServerEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 151
    iget v0, p1, Lcom/today/player/event/ServerEvent;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 152
    iget-object p1, p1, Lcom/today/player/event/ServerEvent;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lcom/today/player/ui/activity/SearchActivity;->showLoading()V

    .line 154
    invoke-direct {p0, p1}, Lcom/today/player/ui/activity/SearchActivity;->search(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
