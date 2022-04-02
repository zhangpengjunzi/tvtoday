.class public Lcom/today/player/ui/dialog/UpdateHintDialog;
.super Ljava/lang/Object;
.source "UpdateHintDialog.java"


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 55
    iget-object v0, p0, Lcom/today/player/ui/dialog/UpdateHintDialog;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/today/player/ui/dialog/UpdateHintDialog;
    .locals 3

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0052

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/ui/dialog/UpdateHintDialog;->rootView:Landroid/view/View;

    .line 28
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0f00dd

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/today/player/ui/dialog/UpdateHintDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 30
    iget-object v0, p0, Lcom/today/player/ui/dialog/UpdateHintDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 31
    iget-object v0, p0, Lcom/today/player/ui/dialog/UpdateHintDialog;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/today/player/ui/dialog/UpdateHintDialog;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/today/player/ui/dialog/UpdateHintDialog;->init(Landroid/content/Context;)V

    return-object p0
.end method

.method public dismiss()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/today/player/ui/dialog/UpdateHintDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/today/player/ui/dialog/UpdateHintDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/today/player/ui/dialog/UpdateHintDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/today/player/ui/dialog/UpdateHintDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
