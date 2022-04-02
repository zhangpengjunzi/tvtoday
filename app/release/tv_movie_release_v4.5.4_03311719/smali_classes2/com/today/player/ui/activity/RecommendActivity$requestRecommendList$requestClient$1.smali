.class public final Lcom/today/player/ui/activity/RecommendActivity$requestRecommendList$requestClient$1;
.super Ljava/lang/Object;
.source "RecommendActivity.kt"

# interfaces
.implements Lcom/today/player/http/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/RecommendActivity;->requestRecommendList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/today/player/ui/activity/RecommendActivity$requestRecommendList$requestClient$1",
        "Lcom/today/player/http/ResponseCallback;",
        "fail",
        "",
        "error",
        "",
        "success",
        "json",
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
.field final synthetic this$0:Lcom/today/player/ui/activity/RecommendActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/RecommendActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/today/player/ui/activity/RecommendActivity$requestRecommendList$requestClient$1;->this$0:Lcom/today/player/ui/activity/RecommendActivity;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final fail$lambda-1(Lcom/today/player/ui/activity/RecommendActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {p0}, Lcom/today/player/ui/activity/RecommendActivity;->access$showEmpty(Lcom/today/player/ui/activity/RecommendActivity;)V

    return-void
.end method

.method public static synthetic lambda$PyLChJa-qnlwhzXNGgpDMxsh4vc(Lcom/today/player/ui/activity/RecommendActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/today/player/ui/activity/RecommendActivity$requestRecommendList$requestClient$1;->fail$lambda-1(Lcom/today/player/ui/activity/RecommendActivity;)V

    return-void
.end method

.method public static synthetic lambda$_ImS4UWBgfuFEhnMnDaj1v5Qcuo(Lcom/today/player/ui/activity/RecommendActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/today/player/ui/activity/RecommendActivity$requestRecommendList$requestClient$1;->success$lambda-0(Lcom/today/player/ui/activity/RecommendActivity;Ljava/lang/String;)V

    return-void
.end method

.method private static final success$lambda-0(Lcom/today/player/ui/activity/RecommendActivity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-static {p0, p1}, Lcom/today/player/ui/activity/RecommendActivity;->access$initList(Lcom/today/player/ui/activity/RecommendActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 1

    .line 79
    invoke-static {p1}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/today/player/ui/activity/RecommendActivity$requestRecommendList$requestClient$1;->this$0:Lcom/today/player/ui/activity/RecommendActivity;

    new-instance v0, Lcom/today/player/ui/activity/-$$Lambda$RecommendActivity$requestRecommendList$requestClient$1$PyLChJa-qnlwhzXNGgpDMxsh4vc;

    invoke-direct {v0, p1}, Lcom/today/player/ui/activity/-$$Lambda$RecommendActivity$requestRecommendList$requestClient$1$PyLChJa-qnlwhzXNGgpDMxsh4vc;-><init>(Lcom/today/player/ui/activity/RecommendActivity;)V

    invoke-static {v0}, Lcom/today/player/util/MainThread;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 2

    .line 72
    invoke-static {p1}, Lcom/today/player/util/LogUtil;->d(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/today/player/ui/activity/RecommendActivity$requestRecommendList$requestClient$1;->this$0:Lcom/today/player/ui/activity/RecommendActivity;

    new-instance v1, Lcom/today/player/ui/activity/-$$Lambda$RecommendActivity$requestRecommendList$requestClient$1$_ImS4UWBgfuFEhnMnDaj1v5Qcuo;

    invoke-direct {v1, v0, p1}, Lcom/today/player/ui/activity/-$$Lambda$RecommendActivity$requestRecommendList$requestClient$1$_ImS4UWBgfuFEhnMnDaj1v5Qcuo;-><init>(Lcom/today/player/ui/activity/RecommendActivity;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/today/player/util/MainThread;->run(Ljava/lang/Runnable;)V

    return-void
.end method
