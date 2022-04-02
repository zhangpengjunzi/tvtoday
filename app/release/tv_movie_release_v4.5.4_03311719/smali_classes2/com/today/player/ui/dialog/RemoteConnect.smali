.class public Lcom/today/player/ui/dialog/RemoteConnect;
.super Ljava/lang/Object;
.source "RemoteConnect.java"


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/app/Dialog;

.field private bitmap:Landroid/graphics/Bitmap;

.field public c:Landroid/content/Context;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/today/player/ui/dialog/RemoteConnect;)Landroid/graphics/Bitmap;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/today/player/ui/dialog/RemoteConnect;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$002(Lcom/today/player/ui/dialog/RemoteConnect;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/today/player/ui/dialog/RemoteConnect;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/today/player/ui/dialog/RemoteConnect;
    .locals 4

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f0b009d

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/today/player/ui/dialog/RemoteConnect;->a:Landroid/view/View;

    .line 43
    new-instance v0, Landroid/app/Dialog;

    const v2, 0x7f0f00dd

    invoke-direct {v0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 44
    iput-object v0, p0, Lcom/today/player/ui/dialog/RemoteConnect;->b:Landroid/app/Dialog;

    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 46
    iget-object v0, p0, Lcom/today/player/ui/dialog/RemoteConnect;->b:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/today/player/ui/dialog/RemoteConnect;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 47
    iget-object v0, p0, Lcom/today/player/ui/dialog/RemoteConnect;->b:Landroid/app/Dialog;

    new-instance v3, Lcom/today/player/ui/dialog/RemoteConnect$1;

    invoke-direct {v3, p0}, Lcom/today/player/ui/dialog/RemoteConnect$1;-><init>(Lcom/today/player/ui/dialog/RemoteConnect;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 56
    iput-object p1, p0, Lcom/today/player/ui/dialog/RemoteConnect;->c:Landroid/content/Context;

    .line 57
    iget-object p1, p0, Lcom/today/player/ui/dialog/RemoteConnect;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    const v0, 0x7f0800b9

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    check-cast p1, Landroid/widget/ImageView;

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/today/player/ui/dialog/RemoteConnect;->d:Landroid/widget/ImageView;

    .line 59
    iget-object p1, p0, Lcom/today/player/ui/dialog/RemoteConnect;->a:Landroid/view/View;

    if-eqz p1, :cond_1

    const v0, 0x7f080290

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 63
    :cond_1
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/today/player/ui/dialog/RemoteConnect;->e:Landroid/widget/TextView;

    .line 64
    iget-object p1, p0, Lcom/today/player/ui/dialog/RemoteConnect;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/today/player/server/RemoteServer;->getServerAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/today/player/ui/dialog/RemoteConnect;->d:Landroid/widget/ImageView;

    const/16 v1, 0xc8

    invoke-static {p1, v1, v1}, Lcom/tv/QRCodeGen;->generateBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 66
    iget-object v0, p0, Lcom/today/player/ui/dialog/RemoteConnect;->e:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "\u624b\u673a/\u7535\u8111\u626b\u63cf\u4e0b\u9762\u4e8c\u7ef4\u7801\u6216\u8005\u76f4\u63a5\u6d4f\u89c8\u5668\u8bbf\u95ee\u5730\u5740\n%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public a()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/today/player/ui/dialog/RemoteConnect;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/today/player/ui/dialog/RemoteConnect;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
