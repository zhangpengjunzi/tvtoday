.class public Lcom/today/player/ui/fragment/SourceSettingFragment;
.super Lcom/today/player/base/BaseLazyFragment;
.source "SourceSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener;,
        Lcom/today/player/ui/fragment/SourceSettingFragment$b;
    }
.end annotation


# static fields
.field public static final ADD_NEW_KEY:Ljava/lang/String; = "addnewkey"

.field public static final TEST_SPEED:Ljava/lang/String; = "testspeed"


# instance fields
.field public f177j:Lcom/today/player/receiver/CustomWebReceiver$a;

.field private mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field private mSourceBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$SourcesDTO;",
            ">;"
        }
    .end annotation
.end field

.field public settingAdapter:Lcom/today/player/ui/adapter/SourceSettingAdapter;

.field private sourceIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/today/player/base/BaseLazyFragment;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/fragment/SourceSettingFragment;->mSourceBeanList:Ljava/util/List;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/today/player/ui/fragment/SourceSettingFragment;->sourceIndex:I

    .line 48
    new-instance v0, Lcom/today/player/ui/fragment/SourceSettingFragment$b;

    invoke-direct {v0, p0}, Lcom/today/player/ui/fragment/SourceSettingFragment$b;-><init>(Lcom/today/player/ui/fragment/SourceSettingFragment;)V

    iput-object v0, p0, Lcom/today/player/ui/fragment/SourceSettingFragment;->f177j:Lcom/today/player/receiver/CustomWebReceiver$a;

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/ui/fragment/SourceSettingFragment;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/today/player/ui/fragment/SourceSettingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/today/player/ui/fragment/SourceSettingFragment;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/today/player/ui/fragment/SourceSettingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/today/player/ui/fragment/SourceSettingFragment;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/today/player/ui/fragment/SourceSettingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/today/player/ui/fragment/SourceSettingFragment;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/today/player/ui/fragment/SourceSettingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/today/player/ui/fragment/SourceSettingFragment;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/today/player/ui/fragment/SourceSettingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/today/player/ui/fragment/SourceSettingFragment;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/today/player/ui/fragment/SourceSettingFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static newInstance()Lcom/today/player/ui/fragment/SourceSettingFragment;
    .locals 1

    .line 52
    new-instance v0, Lcom/today/player/ui/fragment/SourceSettingFragment;

    invoke-direct {v0}, Lcom/today/player/ui/fragment/SourceSettingFragment;-><init>()V

    invoke-virtual {v0}, Lcom/today/player/ui/fragment/SourceSettingFragment;->setArguments()Lcom/today/player/ui/fragment/SourceSettingFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getLayoutResID()I
    .locals 1

    const v0, 0x7f0b005a

    return v0
.end method

.method protected init()V
    .locals 4

    const v0, 0x7f0800d2

    .line 66
    invoke-virtual {p0, v0}, Lcom/today/player/ui/fragment/SourceSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iput-object v0, p0, Lcom/today/player/ui/fragment/SourceSettingFragment;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 67
    new-instance v0, Lcom/today/player/ui/adapter/SourceSettingAdapter;

    invoke-direct {v0}, Lcom/today/player/ui/adapter/SourceSettingAdapter;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/fragment/SourceSettingFragment;->settingAdapter:Lcom/today/player/ui/adapter/SourceSettingAdapter;

    .line 68
    iget-object v1, p0, Lcom/today/player/ui/fragment/SourceSettingFragment;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 69
    iget-object v0, p0, Lcom/today/player/ui/fragment/SourceSettingFragment;->mGridView:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    invoke-virtual {p0}, Lcom/today/player/ui/fragment/SourceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 70
    iget-object v0, p0, Lcom/today/player/ui/fragment/SourceSettingFragment;->mSourceBeanList:Ljava/util/List;

    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/today/player/api/ApiConfig;->getSourceBeanList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    new-instance v0, Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-direct {v0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;-><init>()V

    const-string v1, "testspeed"

    .line 72
    invoke-virtual {v0, v1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->setKey(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/today/player/ui/fragment/SourceSettingFragment;->mSourceBeanList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 74
    new-instance v0, Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-direct {v0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;-><init>()V

    const-string v1, "addnewkey"

    .line 75
    invoke-virtual {v0, v1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->setKey(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/today/player/ui/fragment/SourceSettingFragment;->mSourceBeanList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/today/player/ui/fragment/SourceSettingFragment;->settingAdapter:Lcom/today/player/ui/adapter/SourceSettingAdapter;

    iget-object v1, p0, Lcom/today/player/ui/fragment/SourceSettingFragment;->mSourceBeanList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/SourceSettingAdapter;->setNewData(Ljava/util/List;)V

    .line 78
    iget-object v0, p0, Lcom/today/player/ui/fragment/SourceSettingFragment;->settingAdapter:Lcom/today/player/ui/adapter/SourceSettingAdapter;

    new-instance v1, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener;

    invoke-direct {v1, p0}, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener;-><init>(Lcom/today/player/ui/fragment/SourceSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/SourceSettingAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 178
    sget-object v0, Lcom/today/player/receiver/CustomWebReceiver;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/today/player/ui/fragment/SourceSettingFragment;->f177j:Lcom/today/player/receiver/CustomWebReceiver$a;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 179
    invoke-super {p0}, Lcom/today/player/base/BaseLazyFragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 172
    invoke-super {p0, p1, p2}, Lcom/today/player/base/BaseLazyFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 173
    sget-object p1, Lcom/today/player/receiver/CustomWebReceiver;->e:Ljava/util/List;

    iget-object p2, p0, Lcom/today/player/ui/fragment/SourceSettingFragment;->f177j:Lcom/today/player/receiver/CustomWebReceiver$a;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setArguments()Lcom/today/player/ui/fragment/SourceSettingFragment;
    .locals 0

    return-object p0
.end method
