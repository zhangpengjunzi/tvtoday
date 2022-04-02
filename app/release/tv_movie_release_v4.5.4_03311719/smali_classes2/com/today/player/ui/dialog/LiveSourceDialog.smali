.class public Lcom/today/player/ui/dialog/LiveSourceDialog;
.super Ljava/lang/Object;
.source "LiveSourceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/dialog/LiveSourceDialog$OnChangeLiveListener;
    }
.end annotation


# instance fields
.field private liveListener:Lcom/today/player/ui/dialog/LiveSourceDialog$OnChangeLiveListener;

.field private mDialog:Landroid/app/Dialog;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/ui/dialog/LiveSourceDialog;)Lcom/today/player/ui/dialog/LiveSourceDialog$OnChangeLiveListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/today/player/ui/dialog/LiveSourceDialog;->liveListener:Lcom/today/player/ui/dialog/LiveSourceDialog$OnChangeLiveListener;

    return-object p0
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/today/player/ui/dialog/LiveSourceDialog;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    const v0, 0x7f0802a5

    .line 43
    invoke-direct {p0, v0}, Lcom/today/player/ui/dialog/LiveSourceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0802a6

    .line 45
    invoke-direct {p0, v1}, Lcom/today/player/ui/dialog/LiveSourceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "live_source"

    invoke-static {v3, v2}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x7f050033

    if-nez v2, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    :goto_0
    new-instance p1, Lcom/today/player/ui/dialog/LiveSourceDialog$1;

    invoke-direct {p1, p0, v2}, Lcom/today/player/ui/dialog/LiveSourceDialog$1;-><init>(Lcom/today/player/ui/dialog/LiveSourceDialog;I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance p1, Lcom/today/player/ui/dialog/LiveSourceDialog$2;

    invoke-direct {p1, p0, v2}, Lcom/today/player/ui/dialog/LiveSourceDialog$2;-><init>(Lcom/today/player/ui/dialog/LiveSourceDialog;I)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/today/player/ui/dialog/LiveSourceDialog;
    .locals 3

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/ui/dialog/LiveSourceDialog;->rootView:Landroid/view/View;

    .line 33
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0f00dd

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/today/player/ui/dialog/LiveSourceDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 35
    iget-object v0, p0, Lcom/today/player/ui/dialog/LiveSourceDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 36
    iget-object v0, p0, Lcom/today/player/ui/dialog/LiveSourceDialog;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/today/player/ui/dialog/LiveSourceDialog;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/today/player/ui/dialog/LiveSourceDialog;->init(Landroid/content/Context;)V

    return-object p0
.end method

.method public dismiss()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/today/player/ui/dialog/LiveSourceDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/today/player/ui/dialog/LiveSourceDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public setOnChangeLiveListener(Lcom/today/player/ui/dialog/LiveSourceDialog$OnChangeLiveListener;)Lcom/today/player/ui/dialog/LiveSourceDialog;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/today/player/ui/dialog/LiveSourceDialog;->liveListener:Lcom/today/player/ui/dialog/LiveSourceDialog$OnChangeLiveListener;

    return-object p0
.end method

.method public show()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/today/player/ui/dialog/LiveSourceDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/today/player/ui/dialog/LiveSourceDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
