.class public final Lcom/today/player/ui/activity/RecommendActivity;
.super Lcom/today/player/base/BaseActivity;
.source "RecommendActivity.kt"

# interfaces
.implements Lcom/today/player/ui/adapter/RecommendListAdapter$onRecommendItemClick;
.implements Lcom/today/player/util/DownloadObserver$onDownLoadListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecommendActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecommendActivity.kt\ncom/today/player/ui/activity/RecommendActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,254:1\n1858#2,3:255\n*S KotlinDebug\n*F\n+ 1 RecommendActivity.kt\ncom/today/player/ui/activity/RecommendActivity\n*L\n97#1:255,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\n\u001a\u00020\u0015H\u0002J\u0008\u0010\u0016\u001a\u00020\u0008H\u0014J\u0008\u0010\u0017\u001a\u00020\u0015H\u0014J\u0012\u0010\u0018\u001a\u00020\u00152\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0002J\u0008\u0010\u001b\u001a\u00020\u0015H\u0014J\u0010\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0008H\u0016J\u0010\u0010\u001e\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0008H\u0016J\u0010\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0008H\u0016J\u0018\u0010 \u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u00082\u0006\u0010!\u001a\u00020\u0008H\u0016J\u0010\u0010\"\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0008H\u0016J\u0010\u0010#\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u0008H\u0016J\u0008\u0010$\u001a\u00020\u0015H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R+\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00088B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/today/player/ui/activity/RecommendActivity;",
        "Lcom/today/player/base/BaseActivity;",
        "Lcom/today/player/ui/adapter/RecommendListAdapter$onRecommendItemClick;",
        "Lcom/today/player/util/DownloadObserver$onDownLoadListener;",
        "()V",
        "adapter",
        "Lcom/today/player/ui/adapter/RecommendListAdapter;",
        "<set-?>",
        "",
        "deviceType",
        "getDeviceType",
        "()I",
        "setDeviceType",
        "(I)V",
        "deviceType$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "list",
        "",
        "Lcom/today/player/bean/RecommendBean;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "",
        "getLayoutResID",
        "init",
        "initList",
        "json",
        "",
        "onDestroy",
        "onDownloadOk",
        "position",
        "onFail",
        "onItemClick",
        "onProgress",
        "progress",
        "onSuccess",
        "onTooManyTasks",
        "requestRecommendList",
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


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private adapter:Lcom/today/player/ui/adapter/RecommendListAdapter;

.field private final deviceType$delegate:Lkotlin/properties/ReadWriteProperty;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/RecommendBean;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 30
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/today/player/ui/activity/RecommendActivity;

    const-string v3, "deviceType"

    const-string v4, "getDeviceType()I"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    aput-object v1, v0, v5

    sput-object v0, Lcom/today/player/ui/activity/RecommendActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/today/player/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->_$_findViewCache:Ljava/util/Map;

    .line 30
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-virtual {v0}, Lkotlin/properties/Delegates;->notNull()Lkotlin/properties/ReadWriteProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->deviceType$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$initList(Lcom/today/player/ui/activity/RecommendActivity;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/today/player/ui/activity/RecommendActivity;->initList(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$showEmpty(Lcom/today/player/ui/activity/RecommendActivity;)V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/today/player/ui/activity/RecommendActivity;->showEmpty()V

    return-void
.end method

.method private final getDeviceType()I
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->deviceType$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/today/player/ui/activity/RecommendActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getDeviceType()V
    .locals 2

    .line 150
    invoke-static {}, Lcom/today/player/util/ChannelUtil;->getDeviceTypeNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 151
    invoke-direct {p0, v0}, Lcom/today/player/ui/activity/RecommendActivity;->setDeviceType(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 153
    invoke-direct {p0, v0}, Lcom/today/player/ui/activity/RecommendActivity;->setDeviceType(I)V

    :goto_0
    return-void
.end method

.method private final initList(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/today/player/ui/activity/RecommendActivity;->showSuccess()V

    const v2, 0x7f080121

    .line 93
    invoke-virtual {v0, v2}, Lcom/today/player/ui/activity/RecommendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(R.id.rv_recommend_list)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, v0, Lcom/today/player/ui/activity/RecommendActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 94
    invoke-static {}, Lcom/today/player/util/DownloadObserver;->getInstance()Lcom/today/player/util/DownloadObserver;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/today/player/util/DownloadObserver;->setRecommendJson(Ljava/lang/String;)V

    .line 96
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/today/player/bean/RecommendListBean;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/bean/RecommendListBean;

    .line 97
    invoke-virtual {v1}, Lcom/today/player/bean/RecommendListBean;->getList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 256
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v4, Lcom/today/player/bean/AppBean;

    .line 98
    invoke-virtual {v4}, Lcom/today/player/bean/AppBean;->getDownload()Ljava/lang/String;

    move-result-object v8

    .line 99
    invoke-virtual {v4}, Lcom/today/player/bean/AppBean;->getIcon()Ljava/lang/String;

    move-result-object v9

    .line 100
    invoke-virtual {v4}, Lcom/today/player/bean/AppBean;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 101
    invoke-virtual {v4}, Lcom/today/player/bean/AppBean;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 106
    sget-object v4, Lcom/today/player/util/InstallUtil;->Companion:Lcom/today/player/util/InstallUtil$Companion;

    invoke-virtual {v4}, Lcom/today/player/util/InstallUtil$Companion;->getInstance()Lcom/today/player/util/InstallUtil;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/today/player/util/InstallUtil;->isAppInstalled(Ljava/lang/String;)Z

    move-result v4

    const/16 v7, 0x64

    if-eqz v4, :cond_1

    const-string v3, "\u5df2\u5b89\u88c5"

    move-object v11, v3

    const/16 v12, 0x64

    const/4 v14, 0x1

    :goto_1
    const/4 v15, 0x1

    goto :goto_2

    .line 112
    :cond_1
    invoke-static {}, Lcom/today/player/util/DownloadObserver;->getInstance()Lcom/today/player/util/DownloadObserver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/today/player/util/DownloadObserver;->getDownloadOk(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "\u70b9\u51fb\u5b89\u88c5"

    move-object v11, v3

    const/16 v12, 0x64

    const/4 v14, 0x0

    goto :goto_1

    :cond_2
    const-string v3, "\u5b89\u88c5"

    move-object v11, v3

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 127
    :goto_2
    new-instance v3, Lcom/today/player/bean/RecommendBean;

    const/16 v16, 0x0

    const/16 v17, 0x100

    const/16 v18, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v18}, Lcom/today/player/bean/RecommendBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 137
    iget-object v4, v0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_0

    .line 140
    :cond_3
    invoke-static {}, Lcom/today/player/util/DownloadObserver;->getInstance()Lcom/today/player/util/DownloadObserver;

    move-result-object v1

    iget-object v3, v0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/today/player/util/DownloadObserver;->saveRecommendList(Ljava/util/List;)V

    .line 141
    new-instance v1, Lcom/today/player/ui/adapter/RecommendListAdapter;

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    iget-object v4, v0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-direct {v1, v3, v4}, Lcom/today/player/ui/adapter/RecommendListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, v0, Lcom/today/player/ui/activity/RecommendActivity;->adapter:Lcom/today/player/ui/adapter/RecommendListAdapter;

    .line 142
    iget-object v1, v0, Lcom/today/player/ui/activity/RecommendActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const-string v4, "recyclerView"

    const/4 v6, 0x0

    if-nez v1, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v6

    :cond_4
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    if-eqz v1, :cond_9

    check-cast v1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 143
    iget-object v1, v0, Lcom/today/player/ui/activity/RecommendActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v6

    :cond_5
    new-instance v7, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v8, 0x6

    invoke-direct {v7, v3, v8, v5, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 144
    iget-object v1, v0, Lcom/today/player/ui/activity/RecommendActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v6

    :cond_6
    iget-object v2, v0, Lcom/today/player/ui/activity/RecommendActivity;->adapter:Lcom/today/player/ui/adapter/RecommendListAdapter;

    const-string v3, "adapter"

    if-nez v2, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v6

    :cond_7
    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 145
    iget-object v1, v0, Lcom/today/player/ui/activity/RecommendActivity;->adapter:Lcom/today/player/ui/adapter/RecommendListAdapter;

    if-nez v1, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move-object v6, v1

    :goto_3
    move-object v1, v0

    check-cast v1, Lcom/today/player/ui/adapter/RecommendListAdapter$onRecommendItemClick;

    invoke-virtual {v6, v1}, Lcom/today/player/ui/adapter/RecommendListAdapter;->setRecommendItemClickListener(Lcom/today/player/ui/adapter/RecommendListAdapter$onRecommendItemClick;)V

    return-void

    .line 142
    :cond_9
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method private final requestRecommendList()V
    .locals 4

    .line 61
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upa/DownloadManager;->getSurl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upa/DownloadManager;->getSurl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apiUrl"

    .line 64
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 65
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 66
    check-cast v1, Ljava/util/Map;

    invoke-direct {p0}, Lcom/today/player/ui/activity/RecommendActivity;->getDeviceType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v2, Lcom/today/player/http/RequestClient$Builder;

    invoke-direct {v2}, Lcom/today/player/http/RequestClient$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/today/player/http/RequestClient$Builder;->setHost(Ljava/lang/String;)Lcom/today/player/http/RequestClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/today/player/http/RequestClient$Builder;->setParams(Ljava/util/Map;)Lcom/today/player/http/RequestClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/today/player/http/HttpMethod;->GET:Lcom/today/player/http/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/today/player/http/RequestClient$Builder;->setMethod(Lcom/today/player/http/HttpMethod;)Lcom/today/player/http/RequestClient$Builder;

    move-result-object v0

    const-string v1, ""

    .line 69
    invoke-virtual {v0, v1}, Lcom/today/player/http/RequestClient$Builder;->setPath(Ljava/lang/String;)Lcom/today/player/http/RequestClient$Builder;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/today/player/ui/activity/RecommendActivity$requestRecommendList$requestClient$1;

    invoke-direct {v1, p0}, Lcom/today/player/ui/activity/RecommendActivity$requestRecommendList$requestClient$1;-><init>(Lcom/today/player/ui/activity/RecommendActivity;)V

    check-cast v1, Lcom/today/player/http/ResponseCallback;

    invoke-virtual {v0, v1}, Lcom/today/player/http/RequestClient$Builder;->setCallback(Lcom/today/player/http/ResponseCallback;)Lcom/today/player/http/RequestClient$Builder;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/today/player/http/AwesomeHttp;->getInstance()Lcom/today/player/http/AwesomeHttp;

    move-result-object v1

    invoke-virtual {v0}, Lcom/today/player/http/RequestClient$Builder;->apply()Lcom/today/player/http/RequestClient;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/today/player/http/AwesomeHttp;->request(Lcom/today/player/http/RequestClient;)V

    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/today/player/ui/activity/RecommendActivity;->showEmpty()V

    :goto_1
    return-void
.end method

.method private final setDeviceType(I)V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->deviceType$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/today/player/ui/activity/RecommendActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/today/player/ui/activity/RecommendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v1
.end method

.method protected getLayoutResID()I
    .locals 1

    const v0, 0x7f0b0027

    return v0
.end method

.method protected init()V
    .locals 3

    .line 39
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/today/player/service/DownLoadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/RecommendActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 40
    invoke-static {}, Lcom/today/player/util/DownloadObserver;->getInstance()Lcom/today/player/util/DownloadObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/today/player/util/DownloadObserver$onDownLoadListener;

    invoke-virtual {v0, v1}, Lcom/today/player/util/DownloadObserver;->registerDownloadListener(Lcom/today/player/util/DownloadObserver$onDownLoadListener;)V

    const v0, 0x7f0800cb

    .line 41
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/RecommendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/RecommendActivity;->setLoadSir(Landroid/view/View;)V

    .line 42
    invoke-virtual {p0}, Lcom/today/player/ui/activity/RecommendActivity;->showLoading()V

    .line 43
    invoke-direct {p0}, Lcom/today/player/ui/activity/RecommendActivity;->getDeviceType()V

    .line 45
    invoke-static {}, Lcom/today/player/util/DownloadObserver;->getInstance()Lcom/today/player/util/DownloadObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/util/DownloadObserver;->getRecommendJson()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/today/player/ui/activity/RecommendActivity;->showSuccess()V

    const v0, 0x7f080121

    .line 47
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/RecommendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.rv_recommend_list)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    invoke-static {}, Lcom/today/player/util/DownloadObserver;->getInstance()Lcom/today/player/util/DownloadObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/util/DownloadObserver;->getRecommendJson()Ljava/lang/String;

    move-result-object v0

    const-string v1, "json"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 50
    invoke-direct {p0, v0}, Lcom/today/player/ui/activity/RecommendActivity;->initList(Ljava/lang/String;)V

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/today/player/ui/activity/RecommendActivity;->showEmpty()V

    goto :goto_1

    .line 55
    :cond_2
    invoke-direct {p0}, Lcom/today/player/ui/activity/RecommendActivity;->requestRecommendList()V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 250
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onDestroy()V

    .line 251
    invoke-static {}, Lcom/today/player/util/DownloadObserver;->getInstance()Lcom/today/player/util/DownloadObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/util/DownloadObserver;->unRegisterDownloadListener()V

    return-void
.end method

.method public onDownloadOk(I)V
    .locals 2

    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Download Ok "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 241
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/RecommendBean;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/today/player/bean/RecommendBean;->setProgress(I)V

    .line 242
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/RecommendBean;

    const-string v1, "\u70b9\u51fb\u5b89\u88c5"

    invoke-virtual {v0, v1}, Lcom/today/player/bean/RecommendBean;->setInstall(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/RecommendBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/today/player/bean/RecommendBean;->setDownloadOk(Z)V

    .line 244
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->adapter:Lcom/today/player/ui/adapter/RecommendListAdapter;

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/today/player/ui/adapter/RecommendListAdapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public onFail(I)V
    .locals 3

    const-string v0, "onFail"

    .line 213
    invoke-static {v0}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/RecommendBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/today/player/bean/RecommendBean;->setProgress(I)V

    .line 215
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/RecommendBean;

    const-string v2, "\u5b89\u88c5"

    invoke-virtual {v0, v2}, Lcom/today/player/bean/RecommendBean;->setInstall(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/RecommendBean;

    invoke-virtual {v0, v1}, Lcom/today/player/bean/RecommendBean;->setDownloading(Z)V

    .line 218
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->adapter:Lcom/today/player/ui/adapter/RecommendListAdapter;

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/today/player/ui/adapter/RecommendListAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onItemClick(I)V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/RecommendBean;

    invoke-virtual {v0}, Lcom/today/player/bean/RecommendBean;->getDownload()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/today/player/util/MD5;->string2MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ItemClick"

    invoke-static {v1, v0}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/RecommendBean;

    invoke-virtual {v0}, Lcom/today/player/bean/RecommendBean;->getInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/RecommendBean;

    invoke-virtual {v0}, Lcom/today/player/bean/RecommendBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "launch app "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/RecommendBean;

    invoke-virtual {p1}, Lcom/today/player/bean/RecommendBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 162
    sget-object v0, Lcom/today/player/util/InstallUtil;->Companion:Lcom/today/player/util/InstallUtil$Companion;

    invoke-virtual {v0}, Lcom/today/player/util/InstallUtil$Companion;->getInstance()Lcom/today/player/util/InstallUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/today/player/util/InstallUtil;->getLaunchAppIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 164
    invoke-virtual {p0, p1}, Lcom/today/player/ui/activity/RecommendActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/RecommendBean;

    invoke-virtual {v0}, Lcom/today/player/bean/RecommendBean;->getDownloadOk()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "click to install"

    .line 169
    invoke-static {v0}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/today/player/util/DownloadObserver;->getInstance()Lcom/today/player/util/DownloadObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/today/player/util/DownloadObserver;->getDownloadPath(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 171
    invoke-static {}, Lcom/today/player/util/DownloadObserver;->getInstance()Lcom/today/player/util/DownloadObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/today/player/util/DownloadObserver;->getDownloadPath(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "click path = "

    .line 172
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 175
    sget-object p1, Lcom/today/player/util/InstallUtil;->Companion:Lcom/today/player/util/InstallUtil$Companion;

    invoke-virtual {p1}, Lcom/today/player/util/InstallUtil$Companion;->getInstance()Lcom/today/player/util/InstallUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/today/player/util/InstallUtil;->getInstallAppIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object p1

    .line 176
    invoke-virtual {p0, p1}, Lcom/today/player/ui/activity/RecommendActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v0, "click to download"

    .line 180
    invoke-static {v0}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/RecommendBean;

    invoke-virtual {v0}, Lcom/today/player/bean/RecommendBean;->getProgress()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "\u4e0b\u8f7d\u4e2d..."

    if-nez v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/RecommendBean;

    invoke-virtual {v0}, Lcom/today/player/bean/RecommendBean;->getDownloading()Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    invoke-static {}, Lcom/today/player/util/DownloadObserver;->getInstance()Lcom/today/player/util/DownloadObserver;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/today/player/bean/RecommendBean;

    invoke-virtual {v1}, Lcom/today/player/bean/RecommendBean;->getDownload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/today/player/util/DownloadObserver;->startDownLoad(ILjava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/RecommendBean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/today/player/bean/RecommendBean;->setDownloading(Z)V

    goto :goto_0

    .line 188
    :cond_2
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 192
    :cond_3
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onProgress(II)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 225
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/RecommendBean;

    invoke-virtual {v0, p2}, Lcom/today/player/bean/RecommendBean;->setProgress(I)V

    .line 226
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/RecommendBean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x25

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/today/player/bean/RecommendBean;->setInstall(Ljava/lang/String;)V

    .line 227
    iget-object p2, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/today/player/bean/RecommendBean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/today/player/bean/RecommendBean;->setDownloading(Z)V

    .line 228
    iget-object p2, p0, Lcom/today/player/ui/activity/RecommendActivity;->adapter:Lcom/today/player/ui/adapter/RecommendListAdapter;

    if-nez p2, :cond_0

    const-string p2, "adapter"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/today/player/ui/adapter/RecommendListAdapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public onSuccess(I)V
    .locals 2

    const-string v0, "onSuccess"

    .line 200
    invoke-static {v0}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "onSuccess in "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/RecommendBean;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/today/player/bean/RecommendBean;->setProgress(I)V

    .line 204
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/RecommendBean;

    const-string v1, "\u5df2\u5b89\u88c5"

    invoke-virtual {v0, v1}, Lcom/today/player/bean/RecommendBean;->setInstall(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/RecommendBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/today/player/bean/RecommendBean;->setInstalled(Z)V

    .line 206
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity;->adapter:Lcom/today/player/ui/adapter/RecommendListAdapter;

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/today/player/ui/adapter/RecommendListAdapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public onTooManyTasks(I)V
    .locals 2

    const-string p1, "onTooManyTasks"

    .line 234
    invoke-static {p1}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 235
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    const-string v0, "\u6700\u591a\u540c\u65f6\u4e0b\u8f7d2\u4e2a"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
