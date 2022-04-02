.class public Lcom/today/player/ui/dialog/HistoryDialog;
.super Ljava/lang/Object;
.source "HistoryDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/dialog/HistoryDialog$OnHistoryListener;
    }
.end annotation


# instance fields
.field private historyListener:Lcom/today/player/ui/dialog/HistoryDialog$OnHistoryListener;

.field private mDialog:Landroid/app/Dialog;

.field private rootView:Landroid/view/View;

.field private vodInfo:Lcom/today/player/bean/VodInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/ui/dialog/HistoryDialog;)Lcom/today/player/ui/dialog/HistoryDialog$OnHistoryListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/today/player/ui/dialog/HistoryDialog;->historyListener:Lcom/today/player/ui/dialog/HistoryDialog$OnHistoryListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/today/player/ui/dialog/HistoryDialog;)Lcom/today/player/bean/VodInfo;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/today/player/ui/dialog/HistoryDialog;->vodInfo:Lcom/today/player/bean/VodInfo;

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

    .line 78
    iget-object v0, p0, Lcom/today/player/ui/dialog/HistoryDialog;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    const p1, 0x7f0802a8

    .line 39
    invoke-direct {p0, p1}, Lcom/today/player/ui/dialog/HistoryDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f08029a

    .line 40
    invoke-direct {p0, v0}, Lcom/today/player/ui/dialog/HistoryDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    new-instance v1, Lcom/today/player/ui/dialog/HistoryDialog$1;

    invoke-direct {v1, p0}, Lcom/today/player/ui/dialog/HistoryDialog$1;-><init>(Lcom/today/player/ui/dialog/HistoryDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    new-instance p1, Lcom/today/player/ui/dialog/HistoryDialog$2;

    invoke-direct {p1, p0}, Lcom/today/player/ui/dialog/HistoryDialog$2;-><init>(Lcom/today/player/ui/dialog/HistoryDialog;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/today/player/bean/VodInfo;)Lcom/today/player/ui/dialog/HistoryDialog;
    .locals 3

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0045

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/ui/dialog/HistoryDialog;->rootView:Landroid/view/View;

    .line 29
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0f00dd

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/today/player/ui/dialog/HistoryDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 31
    iget-object v0, p0, Lcom/today/player/ui/dialog/HistoryDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 32
    iget-object v0, p0, Lcom/today/player/ui/dialog/HistoryDialog;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/today/player/ui/dialog/HistoryDialog;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 33
    iput-object p2, p0, Lcom/today/player/ui/dialog/HistoryDialog;->vodInfo:Lcom/today/player/bean/VodInfo;

    .line 34
    invoke-direct {p0, p1}, Lcom/today/player/ui/dialog/HistoryDialog;->init(Landroid/content/Context;)V

    return-object p0
.end method

.method public dismiss()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/today/player/ui/dialog/HistoryDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/today/player/ui/dialog/HistoryDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public setOnHistoryListener(Lcom/today/player/ui/dialog/HistoryDialog$OnHistoryListener;)Lcom/today/player/ui/dialog/HistoryDialog;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/today/player/ui/dialog/HistoryDialog;->historyListener:Lcom/today/player/ui/dialog/HistoryDialog$OnHistoryListener;

    return-object p0
.end method

.method public show()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/today/player/ui/dialog/HistoryDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/today/player/ui/dialog/HistoryDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
