.class public Lcom/upa/view/ConfirmSourceDialog;
.super Landroid/app/Dialog;
.source "ConfirmSourceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;
    }
.end annotation


# instance fields
.field private confirmCLickListener:Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;

.field private isCancleFocus:Z

.field private isDownFocus:Z

.field private mContext:Landroid/content/Context;

.field private source_cancle:Landroid/widget/TextView;

.field private source_confirm_button:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;)V
    .locals 1

    const v0, 0x7f0f02ad

    .line 41
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/upa/view/ConfirmSourceDialog;->isCancleFocus:Z

    .line 42
    iput-object p1, p0, Lcom/upa/view/ConfirmSourceDialog;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/upa/view/ConfirmSourceDialog;->confirmCLickListener:Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/upa/view/ConfirmSourceDialog;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/upa/view/ConfirmSourceDialog;->source_confirm_button:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/upa/view/ConfirmSourceDialog;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/upa/view/ConfirmSourceDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/upa/view/ConfirmSourceDialog;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/upa/view/ConfirmSourceDialog;->isDownFocus:Z

    return p1
.end method

.method static synthetic access$300(Lcom/upa/view/ConfirmSourceDialog;)Landroid/widget/TextView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/upa/view/ConfirmSourceDialog;->source_cancle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/upa/view/ConfirmSourceDialog;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/upa/view/ConfirmSourceDialog;->isCancleFocus:Z

    return p1
.end method

.method static synthetic access$500(Lcom/upa/view/ConfirmSourceDialog;)Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/upa/view/ConfirmSourceDialog;->confirmCLickListener:Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;

    return-object p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f080147

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/upa/view/ConfirmSourceDialog;->source_confirm_button:Landroid/widget/TextView;

    const v0, 0x7f080146

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/upa/view/ConfirmSourceDialog;->source_cancle:Landroid/widget/TextView;

    .line 74
    iget-object p1, p0, Lcom/upa/view/ConfirmSourceDialog;->source_confirm_button:Landroid/widget/TextView;

    new-instance v0, Lcom/upa/view/ConfirmSourceDialog$2;

    invoke-direct {v0, p0}, Lcom/upa/view/ConfirmSourceDialog$2;-><init>(Lcom/upa/view/ConfirmSourceDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 90
    iget-object p1, p0, Lcom/upa/view/ConfirmSourceDialog;->source_cancle:Landroid/widget/TextView;

    new-instance v0, Lcom/upa/view/ConfirmSourceDialog$3;

    invoke-direct {v0, p0}, Lcom/upa/view/ConfirmSourceDialog$3;-><init>(Lcom/upa/view/ConfirmSourceDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 107
    iget-object p1, p0, Lcom/upa/view/ConfirmSourceDialog;->source_cancle:Landroid/widget/TextView;

    new-instance v0, Lcom/upa/view/ConfirmSourceDialog$4;

    invoke-direct {v0, p0}, Lcom/upa/view/ConfirmSourceDialog$4;-><init>(Lcom/upa/view/ConfirmSourceDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object p1, p0, Lcom/upa/view/ConfirmSourceDialog;->source_confirm_button:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 119
    iget-object p1, p0, Lcom/upa/view/ConfirmSourceDialog;->source_confirm_button:Landroid/widget/TextView;

    new-instance v0, Lcom/upa/view/ConfirmSourceDialog$5;

    invoke-direct {v0, p0}, Lcom/upa/view/ConfirmSourceDialog$5;-><init>(Lcom/upa/view/ConfirmSourceDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/upa/view/ConfirmSourceDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x11

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 53
    iget-object p1, p0, Lcom/upa/view/ConfirmSourceDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0030

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/upa/view/ConfirmSourceDialog;->view:Landroid/view/View;

    .line 54
    invoke-virtual {p0, p1}, Lcom/upa/view/ConfirmSourceDialog;->setContentView(Landroid/view/View;)V

    .line 55
    iget-object p1, p0, Lcom/upa/view/ConfirmSourceDialog;->view:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/upa/view/ConfirmSourceDialog;->initView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lcom/upa/view/ConfirmSourceDialog;->setCanceledOnTouchOutside(Z)V

    .line 59
    new-instance p1, Lcom/upa/view/ConfirmSourceDialog$1;

    invoke-direct {p1, p0}, Lcom/upa/view/ConfirmSourceDialog$1;-><init>(Lcom/upa/view/ConfirmSourceDialog;)V

    invoke-virtual {p0, p1}, Lcom/upa/view/ConfirmSourceDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 141
    iget-boolean v0, p0, Lcom/upa/view/ConfirmSourceDialog;->isDownFocus:Z

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/upa/view/ConfirmSourceDialog;->source_confirm_button:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 143
    iget-object v0, p0, Lcom/upa/view/ConfirmSourceDialog;->source_cancle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    .line 148
    :cond_1
    iget-boolean v0, p0, Lcom/upa/view/ConfirmSourceDialog;->isCancleFocus:Z

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/upa/view/ConfirmSourceDialog;->source_cancle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 150
    iget-object v0, p0, Lcom/upa/view/ConfirmSourceDialog;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 151
    iget-object v0, p0, Lcom/upa/view/ConfirmSourceDialog;->source_confirm_button:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 156
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
