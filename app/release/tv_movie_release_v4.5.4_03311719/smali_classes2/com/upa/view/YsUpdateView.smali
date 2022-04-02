.class public Lcom/upa/view/YsUpdateView;
.super Landroid/app/Dialog;
.source "YsUpdateView.java"


# instance fields
.field private button:Landroid/widget/TextView;

.field private cancle:Landroid/widget/TextView;

.field private content:Landroid/widget/TextView;

.field private installUrl:Ljava/lang/String;

.field private isCancleFocus:Z

.field private isDownFocus:Z

.field private mContext:Landroid/content/Context;

.field private model:Lcom/upa/UpdateModel;

.field private progressBar:Lcom/upa/view/CustomProgressBar;

.field private title:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/upa/UpdateModel;)V
    .locals 1

    const v0, 0x7f0f02ad

    .line 57
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/upa/view/YsUpdateView;->isCancleFocus:Z

    .line 58
    iput-object p1, p0, Lcom/upa/view/YsUpdateView;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/upa/view/YsUpdateView;->model:Lcom/upa/UpdateModel;

    return-void
.end method

.method static synthetic access$000(Lcom/upa/view/YsUpdateView;)Lcom/upa/UpdateModel;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/upa/view/YsUpdateView;->model:Lcom/upa/UpdateModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/upa/view/YsUpdateView;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/upa/view/YsUpdateView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/upa/view/YsUpdateView;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/upa/view/YsUpdateView;->button:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/upa/view/YsUpdateView;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/upa/view/YsUpdateView;->isDownFocus:Z

    return p1
.end method

.method static synthetic access$400(Lcom/upa/view/YsUpdateView;)Landroid/widget/TextView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/upa/view/YsUpdateView;->cancle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$502(Lcom/upa/view/YsUpdateView;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/upa/view/YsUpdateView;->isCancleFocus:Z

    return p1
.end method

.method static synthetic access$600(Lcom/upa/view/YsUpdateView;)Lcom/upa/view/CustomProgressBar;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/upa/view/YsUpdateView;->progressBar:Lcom/upa/view/CustomProgressBar;

    return-object p0
.end method

.method static synthetic access$700(Lcom/upa/view/YsUpdateView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/upa/view/YsUpdateView;->download()V

    return-void
.end method

.method static synthetic access$800(Lcom/upa/view/YsUpdateView;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/upa/view/YsUpdateView;->installUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/upa/view/YsUpdateView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/upa/view/YsUpdateView;->installUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/upa/view/YsUpdateView;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/upa/view/YsUpdateView;->downLoadError(Ljava/lang/String;)V

    return-void
.end method

.method private downLoadError(Ljava/lang/String;)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/upa/view/YsUpdateView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 244
    iget-object p1, p0, Lcom/upa/view/YsUpdateView;->cancle:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 245
    iget-object p1, p0, Lcom/upa/view/YsUpdateView;->button:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 246
    iget-object p1, p0, Lcom/upa/view/YsUpdateView;->button:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object p1, p0, Lcom/upa/view/YsUpdateView;->progressBar:Lcom/upa/view/CustomProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/upa/view/CustomProgressBar;->setVisibility(I)V

    return-void
.end method

.method private download()V
    .locals 4

    .line 190
    invoke-static {}, Lcom/upa/DownloadManager;->getInstance()Lcom/upa/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/upa/view/YsUpdateView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/upa/view/YsUpdateView;->model:Lcom/upa/UpdateModel;

    invoke-virtual {v2}, Lcom/upa/UpdateModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/upa/view/YsUpdateView$8;

    invoke-direct {v3, p0}, Lcom/upa/view/YsUpdateView$8;-><init>(Lcom/upa/view/YsUpdateView;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/upa/DownloadManager;->download(Landroid/content/Context;Ljava/lang/String;Lcom/upa/im/IDownloadListener;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0802f2

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/upa/view/YsUpdateView;->title:Landroid/widget/TextView;

    const v0, 0x7f0802ef

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/upa/view/YsUpdateView;->content:Landroid/widget/TextView;

    .line 91
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f0802ed

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/upa/view/YsUpdateView;->button:Landroid/widget/TextView;

    const v0, 0x7f0802ee

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/upa/view/YsUpdateView;->cancle:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/upa/view/YsUpdateView;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/upa/view/YsUpdateView;->model:Lcom/upa/UpdateModel;

    invoke-virtual {v1}, Lcom/upa/UpdateModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/upa/view/YsUpdateView;->content:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/upa/view/YsUpdateView;->model:Lcom/upa/UpdateModel;

    invoke-virtual {v1}, Lcom/upa/UpdateModel;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0802f1

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/upa/view/CustomProgressBar;

    iput-object p1, p0, Lcom/upa/view/YsUpdateView;->progressBar:Lcom/upa/view/CustomProgressBar;

    .line 97
    iget-object p1, p0, Lcom/upa/view/YsUpdateView;->button:Landroid/widget/TextView;

    new-instance v0, Lcom/upa/view/YsUpdateView$2;

    invoke-direct {v0, p0}, Lcom/upa/view/YsUpdateView$2;-><init>(Lcom/upa/view/YsUpdateView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 114
    iget-object p1, p0, Lcom/upa/view/YsUpdateView;->cancle:Landroid/widget/TextView;

    new-instance v0, Lcom/upa/view/YsUpdateView$3;

    invoke-direct {v0, p0}, Lcom/upa/view/YsUpdateView$3;-><init>(Lcom/upa/view/YsUpdateView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 132
    iget-object p1, p0, Lcom/upa/view/YsUpdateView;->button:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    .line 133
    iget-object p1, p0, Lcom/upa/view/YsUpdateView;->model:Lcom/upa/UpdateModel;

    invoke-virtual {p1}, Lcom/upa/UpdateModel;->getForce()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/upa/view/YsUpdateView;->cancle:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object p1, p0, Lcom/upa/view/YsUpdateView;->cancle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/upa/view/YsUpdateView;->cancle:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object p1, p0, Lcom/upa/view/YsUpdateView;->cancle:Landroid/widget/TextView;

    new-instance v0, Lcom/upa/view/YsUpdateView$4;

    invoke-direct {v0, p0}, Lcom/upa/view/YsUpdateView$4;-><init>(Lcom/upa/view/YsUpdateView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    :goto_0
    iget-object p1, p0, Lcom/upa/view/YsUpdateView;->button:Landroid/widget/TextView;

    new-instance v0, Lcom/upa/view/YsUpdateView$5;

    invoke-direct {v0, p0}, Lcom/upa/view/YsUpdateView$5;-><init>(Lcom/upa/view/YsUpdateView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object p1, p0, Lcom/upa/view/YsUpdateView;->progressBar:Lcom/upa/view/CustomProgressBar;

    new-instance v0, Lcom/upa/view/YsUpdateView$6;

    invoke-direct {v0, p0}, Lcom/upa/view/YsUpdateView$6;-><init>(Lcom/upa/view/YsUpdateView;)V

    invoke-virtual {p1, v0}, Lcom/upa/view/CustomProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object p1, p0, Lcom/upa/view/YsUpdateView;->progressBar:Lcom/upa/view/CustomProgressBar;

    new-instance v0, Lcom/upa/view/YsUpdateView$7;

    invoke-direct {v0, p0}, Lcom/upa/view/YsUpdateView$7;-><init>(Lcom/upa/view/YsUpdateView;)V

    invoke-virtual {p1, v0}, Lcom/upa/view/CustomProgressBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/upa/view/YsUpdateView;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x11

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 69
    iget-object p1, p0, Lcom/upa/view/YsUpdateView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0119

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/upa/view/YsUpdateView;->view:Landroid/view/View;

    .line 70
    invoke-virtual {p0, p1}, Lcom/upa/view/YsUpdateView;->setContentView(Landroid/view/View;)V

    .line 71
    iget-object p1, p0, Lcom/upa/view/YsUpdateView;->view:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/upa/view/YsUpdateView;->initView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, p1}, Lcom/upa/view/YsUpdateView;->setCanceledOnTouchOutside(Z)V

    .line 75
    new-instance p1, Lcom/upa/view/YsUpdateView$1;

    invoke-direct {p1, p0}, Lcom/upa/view/YsUpdateView$1;-><init>(Lcom/upa/view/YsUpdateView;)V

    invoke-virtual {p0, p1}, Lcom/upa/view/YsUpdateView;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 259
    iget-boolean v0, p0, Lcom/upa/view/YsUpdateView;->isDownFocus:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/upa/view/YsUpdateView;->cancle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/upa/view/YsUpdateView;->button:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 261
    iget-object v0, p0, Lcom/upa/view/YsUpdateView;->cancle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    .line 266
    :cond_1
    iget-boolean v0, p0, Lcom/upa/view/YsUpdateView;->isCancleFocus:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/upa/view/YsUpdateView;->button:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/upa/view/YsUpdateView;->cancle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 268
    iget-object v0, p0, Lcom/upa/view/YsUpdateView;->progressBar:Lcom/upa/view/CustomProgressBar;

    invoke-virtual {v0}, Lcom/upa/view/CustomProgressBar;->clearFocus()V

    .line 269
    iget-object v0, p0, Lcom/upa/view/YsUpdateView;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 270
    iget-object v0, p0, Lcom/upa/view/YsUpdateView;->button:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 275
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
