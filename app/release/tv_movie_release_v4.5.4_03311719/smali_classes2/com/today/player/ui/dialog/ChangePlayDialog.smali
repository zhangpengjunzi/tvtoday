.class public Lcom/today/player/ui/dialog/ChangePlayDialog;
.super Ljava/lang/Object;
.source "ChangePlayDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/dialog/ChangePlayDialog$OnChangePlayListener;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private playListener:Lcom/today/player/ui/dialog/ChangePlayDialog$OnChangePlayListener;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/ui/dialog/ChangePlayDialog;)Lcom/today/player/ui/dialog/ChangePlayDialog$OnChangePlayListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/today/player/ui/dialog/ChangePlayDialog;->playListener:Lcom/today/player/ui/dialog/ChangePlayDialog$OnChangePlayListener;

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

    .line 91
    iget-object v0, p0, Lcom/today/player/ui/dialog/ChangePlayDialog;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    const v0, 0x7f0802a2

    .line 42
    invoke-direct {p0, v0}, Lcom/today/player/ui/dialog/ChangePlayDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08029d

    .line 43
    invoke-direct {p0, v1}, Lcom/today/player/ui/dialog/ChangePlayDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "play_type"

    invoke-static {v4, v3}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0x7f050033

    if-ne v3, v2, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    :goto_0
    new-instance p1, Lcom/today/player/ui/dialog/ChangePlayDialog$1;

    invoke-direct {p1, p0, v3}, Lcom/today/player/ui/dialog/ChangePlayDialog$1;-><init>(Lcom/today/player/ui/dialog/ChangePlayDialog;I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance p1, Lcom/today/player/ui/dialog/ChangePlayDialog$2;

    invoke-direct {p1, p0, v3}, Lcom/today/player/ui/dialog/ChangePlayDialog$2;-><init>(Lcom/today/player/ui/dialog/ChangePlayDialog;I)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/today/player/ui/dialog/ChangePlayDialog;
    .locals 3

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/ui/dialog/ChangePlayDialog;->rootView:Landroid/view/View;

    .line 33
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0f00dd

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/today/player/ui/dialog/ChangePlayDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 35
    iget-object v0, p0, Lcom/today/player/ui/dialog/ChangePlayDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 36
    iget-object v0, p0, Lcom/today/player/ui/dialog/ChangePlayDialog;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/today/player/ui/dialog/ChangePlayDialog;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/today/player/ui/dialog/ChangePlayDialog;->init(Landroid/content/Context;)V

    return-object p0
.end method

.method public dismiss()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/today/player/ui/dialog/ChangePlayDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/today/player/ui/dialog/ChangePlayDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public setOnChangePlayListener(Lcom/today/player/ui/dialog/ChangePlayDialog$OnChangePlayListener;)Lcom/today/player/ui/dialog/ChangePlayDialog;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/today/player/ui/dialog/ChangePlayDialog;->playListener:Lcom/today/player/ui/dialog/ChangePlayDialog$OnChangePlayListener;

    return-object p0
.end method

.method public show()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/today/player/ui/dialog/ChangePlayDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/today/player/ui/dialog/ChangePlayDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
