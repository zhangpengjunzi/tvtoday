.class public Lcom/upa/tool/Ds;
.super Ljava/lang/Object;
.source "Ds.java"


# instance fields
.field public b:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/upa/tool/Ds;
    .locals 3

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0a0038

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 23
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f0e00a9

    invoke-direct {v1, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 24
    iput-object v1, p0, Lcom/upa/tool/Ds;->b:Landroid/app/Dialog;

    const/4 v2, 0x1

    .line 25
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 26
    iget-object v1, p0, Lcom/upa/tool/Ds;->b:Landroid/app/Dialog;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 27
    iget-object v1, p0, Lcom/upa/tool/Ds;->b:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 28
    iget-object v0, p0, Lcom/upa/tool/Ds;->b:Landroid/app/Dialog;

    new-instance v1, Lcom/upa/tool/Ds$1;

    invoke-direct {v1, p0, p1}, Lcom/upa/tool/Ds$1;-><init>(Lcom/upa/tool/Ds;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 35
    :try_start_0
    iget-object p1, p0, Lcom/upa/tool/Ds;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p0
.end method
