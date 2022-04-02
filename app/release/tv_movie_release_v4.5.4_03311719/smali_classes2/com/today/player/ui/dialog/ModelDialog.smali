.class public Lcom/today/player/ui/dialog/ModelDialog;
.super Ljava/lang/Object;
.source "ModelDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/dialog/ModelDialog$OnChangeModelListener;
    }
.end annotation


# instance fields
.field private editText:Landroid/widget/EditText;

.field private mDialog:Landroid/app/Dialog;

.field private modelListener:Lcom/today/player/ui/dialog/ModelDialog$OnChangeModelListener;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/ui/dialog/ModelDialog;)Landroid/widget/EditText;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/today/player/ui/dialog/ModelDialog;->editText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/today/player/ui/dialog/ModelDialog;)Lcom/today/player/ui/dialog/ModelDialog$OnChangeModelListener;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/today/player/ui/dialog/ModelDialog;->modelListener:Lcom/today/player/ui/dialog/ModelDialog$OnChangeModelListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/today/player/ui/dialog/ModelDialog;)Landroid/app/Dialog;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/today/player/ui/dialog/ModelDialog;->mDialog:Landroid/app/Dialog;

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
    iget-object v0, p0, Lcom/today/player/ui/dialog/ModelDialog;->rootView:Landroid/view/View;

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

    const v0, 0x7f080087

    .line 44
    invoke-direct {p0, v0}, Lcom/today/player/ui/dialog/ModelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/today/player/ui/dialog/ModelDialog;->editText:Landroid/widget/EditText;

    const v0, 0x7f080296

    .line 45
    invoke-direct {p0, v0}, Lcom/today/player/ui/dialog/ModelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/today/player/ui/dialog/ModelDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/today/player/ui/dialog/ModelDialog$1;-><init>(Lcom/today/player/ui/dialog/ModelDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080292

    .line 61
    invoke-direct {p0, p1}, Lcom/today/player/ui/dialog/ModelDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/today/player/ui/dialog/ModelDialog$2;

    invoke-direct {v0, p0}, Lcom/today/player/ui/dialog/ModelDialog$2;-><init>(Lcom/today/player/ui/dialog/ModelDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/today/player/ui/dialog/ModelDialog;
    .locals 3

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/ui/dialog/ModelDialog;->rootView:Landroid/view/View;

    .line 35
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0f00dd

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/today/player/ui/dialog/ModelDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 37
    iget-object v0, p0, Lcom/today/player/ui/dialog/ModelDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 38
    iget-object v0, p0, Lcom/today/player/ui/dialog/ModelDialog;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/today/player/ui/dialog/ModelDialog;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/today/player/ui/dialog/ModelDialog;->init(Landroid/content/Context;)V

    return-object p0
.end method

.method public setOnChangeModelListener(Lcom/today/player/ui/dialog/ModelDialog$OnChangeModelListener;)Lcom/today/player/ui/dialog/ModelDialog;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/today/player/ui/dialog/ModelDialog;->modelListener:Lcom/today/player/ui/dialog/ModelDialog$OnChangeModelListener;

    return-object p0
.end method

.method public show()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/today/player/ui/dialog/ModelDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/today/player/ui/dialog/ModelDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
