.class public Lcom/kingja/loadsir/core/LoadService;
.super Ljava/lang/Object;
.source "LoadService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private convertor:Lcom/kingja/loadsir/core/Convertor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingja/loadsir/core/Convertor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private loadLayout:Lcom/kingja/loadsir/core/LoadLayout;


# direct methods
.method constructor <init>(Lcom/kingja/loadsir/core/Convertor;Lcom/kingja/loadsir/core/LoadLayout;Lcom/kingja/loadsir/core/LoadSir$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingja/loadsir/core/Convertor<",
            "TT;>;",
            "Lcom/kingja/loadsir/core/LoadLayout;",
            "Lcom/kingja/loadsir/core/LoadSir$Builder;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingja/loadsir/core/LoadService;->TAG:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/kingja/loadsir/core/LoadService;->convertor:Lcom/kingja/loadsir/core/Convertor;

    .line 27
    iput-object p2, p0, Lcom/kingja/loadsir/core/LoadService;->loadLayout:Lcom/kingja/loadsir/core/LoadLayout;

    .line 28
    invoke-direct {p0, p3}, Lcom/kingja/loadsir/core/LoadService;->initCallback(Lcom/kingja/loadsir/core/LoadSir$Builder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kingja/loadsir/core/LoadService;)Lcom/kingja/loadsir/core/LoadLayout;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/kingja/loadsir/core/LoadService;->loadLayout:Lcom/kingja/loadsir/core/LoadLayout;

    return-object p0
.end method

.method private initCallback(Lcom/kingja/loadsir/core/LoadSir$Builder;)V
    .locals 3

    .line 32
    invoke-virtual {p1}, Lcom/kingja/loadsir/core/LoadSir$Builder;->getCallbacks()Ljava/util/List;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/kingja/loadsir/core/LoadSir$Builder;->getDefaultCallback()Ljava/lang/Class;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingja/loadsir/callback/Callback;

    .line 36
    iget-object v2, p0, Lcom/kingja/loadsir/core/LoadService;->loadLayout:Lcom/kingja/loadsir/core/LoadLayout;

    invoke-virtual {v2, v1}, Lcom/kingja/loadsir/core/LoadLayout;->setupCallback(Lcom/kingja/loadsir/callback/Callback;)V

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/kingja/loadsir/core/LoadService$1;

    invoke-direct {v1, p0, p1}, Lcom/kingja/loadsir/core/LoadService$1;-><init>(Lcom/kingja/loadsir/core/LoadService;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
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

    .line 70
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadService;->loadLayout:Lcom/kingja/loadsir/core/LoadLayout;

    invoke-virtual {v0}, Lcom/kingja/loadsir/core/LoadLayout;->getCurrentCallback()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getLoadLayout()Lcom/kingja/loadsir/core/LoadLayout;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadService;->loadLayout:Lcom/kingja/loadsir/core/LoadLayout;

    return-object v0
.end method

.method public getTitleLoadLayout(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 2

    .line 80
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 81
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 82
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 84
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 86
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    iget-object p2, p0, Lcom/kingja/loadsir/core/LoadService;->loadLayout:Lcom/kingja/loadsir/core/LoadLayout;

    invoke-virtual {v0, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public setCallBack(Ljava/lang/Class;Lcom/kingja/loadsir/core/Transport;)Lcom/kingja/loadsir/core/LoadService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;",
            "Lcom/kingja/loadsir/core/Transport;",
            ")",
            "Lcom/kingja/loadsir/core/LoadService<",
            "TT;>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadService;->loadLayout:Lcom/kingja/loadsir/core/LoadLayout;

    invoke-virtual {v0, p1, p2}, Lcom/kingja/loadsir/core/LoadLayout;->setCallBack(Ljava/lang/Class;Lcom/kingja/loadsir/core/Transport;)V

    return-object p0
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

    .line 55
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadService;->loadLayout:Lcom/kingja/loadsir/core/LoadLayout;

    invoke-virtual {v0, p1}, Lcom/kingja/loadsir/core/LoadLayout;->showCallback(Ljava/lang/Class;)V

    return-void
.end method

.method public showSuccess()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadService;->loadLayout:Lcom/kingja/loadsir/core/LoadLayout;

    const-class v1, Lcom/kingja/loadsir/callback/SuccessCallback;

    invoke-virtual {v0, v1}, Lcom/kingja/loadsir/core/LoadLayout;->showCallback(Ljava/lang/Class;)V

    return-void
.end method

.method public showWithConvertor(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/kingja/loadsir/core/LoadService;->convertor:Lcom/kingja/loadsir/core/Convertor;

    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/kingja/loadsir/core/LoadService;->loadLayout:Lcom/kingja/loadsir/core/LoadLayout;

    invoke-interface {v0, p1}, Lcom/kingja/loadsir/core/Convertor;->map(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/kingja/loadsir/core/LoadLayout;->showCallback(Ljava/lang/Class;)V

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You haven\'t set the Convertor."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
