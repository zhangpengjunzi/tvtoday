.class public Lcom/today/player/ui/fragment/ModelSettingFragment$k;
.super Ljava/lang/Object;
.source "ModelSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/fragment/ModelSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/fragment/ModelSettingFragment;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$k;->this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 261
    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 262
    iget-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$k;->this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;

    invoke-static {p1}, Lcom/today/player/ui/fragment/ModelSettingFragment;->access$900(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0b0041

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 263
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$k;->this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;

    invoke-static {v1}, Lcom/today/player/ui/fragment/ModelSettingFragment;->access$1000(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f00dd

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 264
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const/4 v1, 0x1

    .line 265
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 266
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 267
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 268
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
