.class public Lcom/today/player/ui/dialog/RemoteDialog;
.super Ljava/lang/Object;
.source "RemoteDialog.java"


# instance fields
.field private ivQRCode:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private rootView:Landroid/view/View;

.field private tvAddress:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
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

    .line 47
    iget-object v0, p0, Lcom/today/player/ui/dialog/RemoteDialog;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private init()V
    .locals 1

    const v0, 0x7f0800b9

    .line 54
    invoke-direct {p0, v0}, Lcom/today/player/ui/dialog/RemoteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/today/player/ui/dialog/RemoteDialog;->ivQRCode:Landroid/widget/ImageView;

    const v0, 0x7f080290

    .line 55
    invoke-direct {p0, v0}, Lcom/today/player/ui/dialog/RemoteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/dialog/RemoteDialog;->tvAddress:Landroid/widget/TextView;

    .line 56
    invoke-direct {p0}, Lcom/today/player/ui/dialog/RemoteDialog;->refreshQRCode()V

    return-void
.end method

.method private refreshQRCode()V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/today/player/ui/dialog/RemoteDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/today/player/server/RemoteServer;->getServerAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/today/player/ui/dialog/RemoteDialog;->tvAddress:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "\u624b\u673a/\u7535\u8111\u626b\u63cf\u5de6\u8fb9\u4e8c\u7ef4\u7801\u6216\u8005\u76f4\u63a5\u6d4f\u89c8\u5668\u8bbf\u95ee\u5730\u5740\n%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/today/player/ui/dialog/RemoteDialog;->ivQRCode:Landroid/widget/ImageView;

    const/16 v2, 0xc8

    invoke-static {v0, v2, v2}, Lcom/tv/QRCodeGen;->generateBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/today/player/ui/dialog/RemoteDialog;
    .locals 3

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b009d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/ui/dialog/RemoteDialog;->rootView:Landroid/view/View;

    .line 36
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0f00dd

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/today/player/ui/dialog/RemoteDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 38
    iget-object v0, p0, Lcom/today/player/ui/dialog/RemoteDialog;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/today/player/ui/dialog/RemoteDialog;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 39
    iput-object p1, p0, Lcom/today/player/ui/dialog/RemoteDialog;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/today/player/ui/dialog/RemoteDialog;->init()V

    return-object p0
.end method

.method public dismiss()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/today/player/ui/dialog/RemoteDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/today/player/ui/dialog/RemoteDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/today/player/ui/dialog/RemoteDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/today/player/ui/dialog/RemoteDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/today/player/ui/dialog/RemoteDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
