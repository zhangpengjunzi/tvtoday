.class public Lcom/kingja/loadsir/core/LoadLayout;
.super Landroid/widget/FrameLayout;
.source "LoadLayout.java"


# static fields
.field private static final CALLBACK_CUSTOM_INDEX:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private curCallback:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;"
        }
    .end annotation
.end field

.field private onReloadListener:Lcom/kingja/loadsir/callback/Callback$OnReloadListener;

.field private preCallback:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kingja/loadsir/core/LoadLayout;->TAG:Ljava/lang/String;

    .line 27
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/kingja/loadsir/core/LoadLayout;->callbacks:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/kingja/loadsir/core/LoadLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lcom/kingja/loadsir/core/LoadLayout;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/kingja/loadsir/core/LoadLayout;->onReloadListener:Lcom/kingja/loadsir/callback/Callback$OnReloadListener;

    return-void
.end method

.method static synthetic access$000(Lcom/kingja/loadsir/core/LoadLayout;Ljava/lang/Class;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/kingja/loadsir/core/LoadLayout;->showCallbackView(Ljava/lang/Class;)V

    return-void
.end method

.method private checkCallbackExist(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;)V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadLayout;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 125
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "The Callback (%s) is nonexistent."

    .line 124
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private postToMainThread(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;)V"
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/kingja/loadsir/core/LoadLayout$1;

    invoke-direct {v0, p0, p1}, Lcom/kingja/loadsir/core/LoadLayout$1;-><init>(Lcom/kingja/loadsir/core/LoadLayout;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/kingja/loadsir/core/LoadLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showCallbackView(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;)V"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadLayout;->preCallback:Ljava/lang/Class;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/kingja/loadsir/core/LoadLayout;->callbacks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingja/loadsir/callback/Callback;

    invoke-virtual {v0}, Lcom/kingja/loadsir/callback/Callback;->onDetach()V

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/kingja/loadsir/core/LoadLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 95
    invoke-virtual {p0, v1}, Lcom/kingja/loadsir/core/LoadLayout;->removeViewAt(I)V

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadLayout;->callbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-ne v1, p1, :cond_3

    .line 99
    iget-object v2, p0, Lcom/kingja/loadsir/core/LoadLayout;->callbacks:Ljava/util/Map;

    const-class v3, Lcom/kingja/loadsir/callback/SuccessCallback;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingja/loadsir/callback/SuccessCallback;

    .line 100
    const-class v3, Lcom/kingja/loadsir/callback/SuccessCallback;

    if-ne v1, v3, :cond_4

    .line 101
    invoke-virtual {v2}, Lcom/kingja/loadsir/callback/SuccessCallback;->show()V

    goto :goto_1

    .line 103
    :cond_4
    iget-object v3, p0, Lcom/kingja/loadsir/core/LoadLayout;->callbacks:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingja/loadsir/callback/Callback;

    invoke-virtual {v3}, Lcom/kingja/loadsir/callback/Callback;->getSuccessVisible()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/kingja/loadsir/callback/SuccessCallback;->showWithCallback(Z)V

    .line 104
    iget-object v2, p0, Lcom/kingja/loadsir/core/LoadLayout;->callbacks:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingja/loadsir/callback/Callback;

    invoke-virtual {v2}, Lcom/kingja/loadsir/callback/Callback;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 105
    invoke-virtual {p0, v2}, Lcom/kingja/loadsir/core/LoadLayout;->addView(Landroid/view/View;)V

    .line 106
    iget-object v3, p0, Lcom/kingja/loadsir/core/LoadLayout;->callbacks:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingja/loadsir/callback/Callback;

    iget-object v3, p0, Lcom/kingja/loadsir/core/LoadLayout;->context:Landroid/content/Context;

    invoke-virtual {v1, v3, v2}, Lcom/kingja/loadsir/callback/Callback;->onAttach(Landroid/content/Context;Landroid/view/View;)V

    .line 108
    :goto_1
    iput-object p1, p0, Lcom/kingja/loadsir/core/LoadLayout;->preCallback:Ljava/lang/Class;

    goto :goto_0

    .line 111
    :cond_5
    iput-object p1, p0, Lcom/kingja/loadsir/core/LoadLayout;->curCallback:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/kingja/loadsir/callback/Callback;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadLayout;->callbacks:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadLayout;->callbacks:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getCurrentCallback()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadLayout;->curCallback:Ljava/lang/Class;

    return-object v0
.end method

.method public setCallBack(Ljava/lang/Class;Lcom/kingja/loadsir/core/Transport;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;",
            "Lcom/kingja/loadsir/core/Transport;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-direct {p0, p1}, Lcom/kingja/loadsir/core/LoadLayout;->checkCallbackExist(Ljava/lang/Class;)V

    .line 119
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadLayout;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingja/loadsir/core/LoadLayout;->callbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kingja/loadsir/callback/Callback;

    invoke-virtual {p1}, Lcom/kingja/loadsir/callback/Callback;->obtainRootView()Landroid/view/View;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/kingja/loadsir/core/Transport;->order(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public setupCallback(Lcom/kingja/loadsir/callback/Callback;)V
    .locals 2

    .line 54
    invoke-virtual {p1}, Lcom/kingja/loadsir/callback/Callback;->copy()Lcom/kingja/loadsir/callback/Callback;

    move-result-object p1

    .line 55
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadLayout;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingja/loadsir/core/LoadLayout;->onReloadListener:Lcom/kingja/loadsir/callback/Callback$OnReloadListener;

    invoke-virtual {p1, v0, v1}, Lcom/kingja/loadsir/callback/Callback;->setCallback(Landroid/content/Context;Lcom/kingja/loadsir/callback/Callback$OnReloadListener;)Lcom/kingja/loadsir/callback/Callback;

    .line 56
    invoke-virtual {p0, p1}, Lcom/kingja/loadsir/core/LoadLayout;->addCallback(Lcom/kingja/loadsir/callback/Callback;)V

    return-void
.end method

.method public setupSuccessLayout(Lcom/kingja/loadsir/callback/Callback;)V
    .locals 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/kingja/loadsir/core/LoadLayout;->addCallback(Lcom/kingja/loadsir/callback/Callback;)V

    .line 46
    invoke-virtual {p1}, Lcom/kingja/loadsir/callback/Callback;->getRootView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 48
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/kingja/loadsir/core/LoadLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    const-class p1, Lcom/kingja/loadsir/callback/SuccessCallback;

    iput-object p1, p0, Lcom/kingja/loadsir/core/LoadLayout;->curCallback:Ljava/lang/Class;

    return-void
.end method

.method public showCallback(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Lcom/kingja/loadsir/core/LoadLayout;->checkCallbackExist(Ljava/lang/Class;)V

    .line 67
    invoke-static {}, Lcom/kingja/loadsir/LoadSirUtil;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0, p1}, Lcom/kingja/loadsir/core/LoadLayout;->showCallbackView(Ljava/lang/Class;)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-direct {p0, p1}, Lcom/kingja/loadsir/core/LoadLayout;->postToMainThread(Ljava/lang/Class;)V

    :goto_0
    return-void
.end method
