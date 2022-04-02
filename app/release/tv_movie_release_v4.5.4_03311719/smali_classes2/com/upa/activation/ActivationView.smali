.class public Lcom/upa/activation/ActivationView;
.super Landroid/app/Dialog;
.source "ActivationView.java"


# instance fields
.field private codeButton:Landroid/widget/TextView;

.field private isActive:Z

.field private isButtonFocus:Z

.field private isEditFocus:Z

.field private mContext:Landroid/content/Context;

.field private progressBar:Landroid/widget/ProgressBar;

.field private tvCode:Landroid/widget/EditText;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0f02ad

    .line 46
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/upa/activation/ActivationView;->isButtonFocus:Z

    .line 43
    iput-boolean v0, p0, Lcom/upa/activation/ActivationView;->isActive:Z

    .line 47
    iput-object p1, p0, Lcom/upa/activation/ActivationView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/upa/activation/ActivationView;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/upa/activation/ActivationView;->isActive:Z

    return p0
.end method

.method static synthetic access$002(Lcom/upa/activation/ActivationView;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/upa/activation/ActivationView;->isActive:Z

    return p1
.end method

.method static synthetic access$100(Lcom/upa/activation/ActivationView;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/upa/activation/ActivationView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/upa/activation/ActivationView;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/upa/activation/ActivationView;->codeButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/upa/activation/ActivationView;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/upa/activation/ActivationView;->isButtonFocus:Z

    return p1
.end method

.method static synthetic access$400(Lcom/upa/activation/ActivationView;)Landroid/widget/EditText;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/upa/activation/ActivationView;->tvCode:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$502(Lcom/upa/activation/ActivationView;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/upa/activation/ActivationView;->isEditFocus:Z

    return p1
.end method

.method static synthetic access$600(Lcom/upa/activation/ActivationView;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/upa/activation/ActivationView;->active(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/upa/activation/ActivationView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/upa/activation/ActivationView;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private active(Ljava/lang/String;)V
    .locals 3

    .line 197
    invoke-static {}, Lcom/upa/activation/ActivationManager;->getInstance()Lcom/upa/activation/ActivationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/upa/activation/ActivationView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/upa/activation/ActivationView$6;

    invoke-direct {v2, p0}, Lcom/upa/activation/ActivationView$6;-><init>(Lcom/upa/activation/ActivationView;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/upa/activation/ActivationManager;->active(Landroid/content/Context;Ljava/lang/String;Lcom/upa/im/ActivationResult;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f080044

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/upa/activation/ActivationView;->tvCode:Landroid/widget/EditText;

    const v0, 0x7f080043

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/upa/activation/ActivationView;->codeButton:Landroid/widget/TextView;

    const v0, 0x7f080042

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/upa/activation/ActivationView;->progressBar:Landroid/widget/ProgressBar;

    .line 81
    iget-object p1, p0, Lcom/upa/activation/ActivationView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/upa/tool/Tools;->isTvOrPhone(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/upa/activation/ActivationView;->codeButton:Landroid/widget/TextView;

    new-instance v0, Lcom/upa/activation/ActivationView$2;

    invoke-direct {v0, p0}, Lcom/upa/activation/ActivationView$2;-><init>(Lcom/upa/activation/ActivationView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/upa/activation/ActivationView;->codeButton:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    iget-object p1, p0, Lcom/upa/activation/ActivationView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/upa/activation/ActivationView;->codeButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/upa/tool/Tools;->shapeSolid(Landroid/content/Context;Landroid/view/View;I)V

    .line 100
    iget-object p1, p0, Lcom/upa/activation/ActivationView;->codeButton:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 102
    :goto_0
    iget-object p1, p0, Lcom/upa/activation/ActivationView;->tvCode:Landroid/widget/EditText;

    new-instance v0, Lcom/upa/activation/ActivationView$3;

    invoke-direct {v0, p0}, Lcom/upa/activation/ActivationView$3;-><init>(Lcom/upa/activation/ActivationView;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 116
    iget-object p1, p0, Lcom/upa/activation/ActivationView;->tvCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 117
    iget-object p1, p0, Lcom/upa/activation/ActivationView;->tvCode:Landroid/widget/EditText;

    new-instance v0, Lcom/upa/activation/ActivationView$4;

    invoke-direct {v0, p0}, Lcom/upa/activation/ActivationView$4;-><init>(Lcom/upa/activation/ActivationView;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 148
    iget-object p1, p0, Lcom/upa/activation/ActivationView;->codeButton:Landroid/widget/TextView;

    new-instance v0, Lcom/upa/activation/ActivationView$5;

    invoke-direct {v0, p0}, Lcom/upa/activation/ActivationView$5;-><init>(Lcom/upa/activation/ActivationView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/upa/activation/ActivationView;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x11

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 57
    iget-object p1, p0, Lcom/upa/activation/ActivationView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b001c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/upa/activation/ActivationView;->view:Landroid/view/View;

    .line 58
    invoke-virtual {p0, p1}, Lcom/upa/activation/ActivationView;->setContentView(Landroid/view/View;)V

    .line 59
    iget-object p1, p0, Lcom/upa/activation/ActivationView;->view:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/upa/activation/ActivationView;->initView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lcom/upa/activation/ActivationView;->setCanceledOnTouchOutside(Z)V

    .line 63
    new-instance p1, Lcom/upa/activation/ActivationView$1;

    invoke-direct {p1, p0}, Lcom/upa/activation/ActivationView$1;-><init>(Lcom/upa/activation/ActivationView;)V

    invoke-virtual {p0, p1}, Lcom/upa/activation/ActivationView;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/upa/activation/ActivationView;->isEditFocus:Z

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/upa/activation/ActivationView;->tvCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 175
    iget-object v0, p0, Lcom/upa/activation/ActivationView;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 176
    iget-object v0, p0, Lcom/upa/activation/ActivationView;->codeButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/upa/activation/ActivationView;->isButtonFocus:Z

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/upa/activation/ActivationView;->codeButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 183
    iget-object v0, p0, Lcom/upa/activation/ActivationView;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 184
    iget-object v0, p0, Lcom/upa/activation/ActivationView;->tvCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 192
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
