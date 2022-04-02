.class public Lcom/today/player/ui/dialog/PasswordDialog;
.super Ljava/lang/Object;
.source "PasswordDialog.java"


# instance fields
.field private cEditText:Landroid/widget/EditText;

.field private mDialog:Landroid/app/Dialog;

.field private nEditText:Landroid/widget/EditText;

.field private oEditText:Landroid/widget/EditText;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/ui/dialog/PasswordDialog;)Landroid/widget/EditText;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/today/player/ui/dialog/PasswordDialog;->oEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/today/player/ui/dialog/PasswordDialog;)Landroid/widget/EditText;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/today/player/ui/dialog/PasswordDialog;->nEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/today/player/ui/dialog/PasswordDialog;)Landroid/widget/EditText;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/today/player/ui/dialog/PasswordDialog;->cEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/today/player/ui/dialog/PasswordDialog;)Landroid/app/Dialog;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/today/player/ui/dialog/PasswordDialog;->mDialog:Landroid/app/Dialog;

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

    .line 99
    iget-object v0, p0, Lcom/today/player/ui/dialog/PasswordDialog;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 100
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

    const v0, 0x7f080086

    .line 46
    invoke-direct {p0, v0}, Lcom/today/player/ui/dialog/PasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/today/player/ui/dialog/PasswordDialog;->oEditText:Landroid/widget/EditText;

    const v0, 0x7f080085

    .line 47
    invoke-direct {p0, v0}, Lcom/today/player/ui/dialog/PasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/today/player/ui/dialog/PasswordDialog;->nEditText:Landroid/widget/EditText;

    const v0, 0x7f080084

    .line 48
    invoke-direct {p0, v0}, Lcom/today/player/ui/dialog/PasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/today/player/ui/dialog/PasswordDialog;->cEditText:Landroid/widget/EditText;

    const v0, 0x7f080296

    .line 49
    invoke-direct {p0, v0}, Lcom/today/player/ui/dialog/PasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/today/player/ui/dialog/PasswordDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/today/player/ui/dialog/PasswordDialog$1;-><init>(Lcom/today/player/ui/dialog/PasswordDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080292

    .line 82
    invoke-direct {p0, p1}, Lcom/today/player/ui/dialog/PasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/today/player/ui/dialog/PasswordDialog$2;

    invoke-direct {v0, p0}, Lcom/today/player/ui/dialog/PasswordDialog$2;-><init>(Lcom/today/player/ui/dialog/PasswordDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/today/player/ui/dialog/PasswordDialog;
    .locals 3

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/ui/dialog/PasswordDialog;->rootView:Landroid/view/View;

    .line 37
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0f00dd

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/today/player/ui/dialog/PasswordDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 39
    iget-object v0, p0, Lcom/today/player/ui/dialog/PasswordDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 40
    iget-object v0, p0, Lcom/today/player/ui/dialog/PasswordDialog;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/today/player/ui/dialog/PasswordDialog;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/today/player/ui/dialog/PasswordDialog;->init(Landroid/content/Context;)V

    return-object p0
.end method

.method public show()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/today/player/ui/dialog/PasswordDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/today/player/ui/dialog/PasswordDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
