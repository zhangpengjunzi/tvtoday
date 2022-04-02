.class public Lcom/today/player/ui/dialog/PraseDialog;
.super Ljava/lang/Object;
.source "PraseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/dialog/PraseDialog$OnPraseListener;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private playListener:Lcom/today/player/ui/dialog/PraseDialog$OnPraseListener;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/ui/dialog/PraseDialog;)Lcom/today/player/ui/dialog/PraseDialog$OnPraseListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/today/player/ui/dialog/PraseDialog;->playListener:Lcom/today/player/ui/dialog/PraseDialog$OnPraseListener;

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

    .line 121
    iget-object v0, p0, Lcom/today/player/ui/dialog/PraseDialog;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 7

    const v0, 0x7f0802af

    .line 42
    invoke-direct {p0, v0}, Lcom/today/player/ui/dialog/PraseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0802b0

    .line 43
    invoke-direct {p0, v1}, Lcom/today/player/ui/dialog/PraseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0802b1

    .line 44
    invoke-direct {p0, v2}, Lcom/today/player/ui/dialog/PraseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0802b2

    .line 45
    invoke-direct {p0, v3}, Lcom/today/player/ui/dialog/PraseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x1

    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "default_prase_id"

    invoke-static {v6, v5}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const v6, 0x7f050033

    if-ne v5, v4, :cond_0

    .line 48
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne v5, v4, :cond_1

    .line 51
    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v5, v4, :cond_2

    .line 54
    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    :goto_0
    new-instance p1, Lcom/today/player/ui/dialog/PraseDialog$1;

    invoke-direct {p1, p0, v5}, Lcom/today/player/ui/dialog/PraseDialog$1;-><init>(Lcom/today/player/ui/dialog/PraseDialog;I)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance p1, Lcom/today/player/ui/dialog/PraseDialog$2;

    invoke-direct {p1, p0, v5}, Lcom/today/player/ui/dialog/PraseDialog$2;-><init>(Lcom/today/player/ui/dialog/PraseDialog;I)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance p1, Lcom/today/player/ui/dialog/PraseDialog$3;

    invoke-direct {p1, p0, v5}, Lcom/today/player/ui/dialog/PraseDialog$3;-><init>(Lcom/today/player/ui/dialog/PraseDialog;I)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance p1, Lcom/today/player/ui/dialog/PraseDialog$4;

    invoke-direct {p1, p0, v5}, Lcom/today/player/ui/dialog/PraseDialog$4;-><init>(Lcom/today/player/ui/dialog/PraseDialog;I)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/today/player/ui/dialog/PraseDialog;
    .locals 3

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b004c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/ui/dialog/PraseDialog;->rootView:Landroid/view/View;

    .line 33
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0f00dd

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/today/player/ui/dialog/PraseDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 35
    iget-object v0, p0, Lcom/today/player/ui/dialog/PraseDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 36
    iget-object v0, p0, Lcom/today/player/ui/dialog/PraseDialog;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/today/player/ui/dialog/PraseDialog;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/today/player/ui/dialog/PraseDialog;->init(Landroid/content/Context;)V

    return-object p0
.end method

.method public dismiss()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/today/player/ui/dialog/PraseDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/today/player/ui/dialog/PraseDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public setOnPraseListener(Lcom/today/player/ui/dialog/PraseDialog$OnPraseListener;)Lcom/today/player/ui/dialog/PraseDialog;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/today/player/ui/dialog/PraseDialog;->playListener:Lcom/today/player/ui/dialog/PraseDialog$OnPraseListener;

    return-object p0
.end method

.method public show()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/today/player/ui/dialog/PraseDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/today/player/ui/dialog/PraseDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
