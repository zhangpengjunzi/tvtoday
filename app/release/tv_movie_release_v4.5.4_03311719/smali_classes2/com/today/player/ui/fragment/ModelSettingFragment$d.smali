.class public Lcom/today/player/ui/fragment/ModelSettingFragment$d;
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
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/fragment/ModelSettingFragment$d$a;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/fragment/ModelSettingFragment;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$d;->this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 199
    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 200
    new-instance v0, Lcom/today/player/ui/dialog/ChangeRenderDialog;

    invoke-direct {v0}, Lcom/today/player/ui/dialog/ChangeRenderDialog;-><init>()V

    .line 201
    new-instance v1, Lcom/today/player/ui/fragment/ModelSettingFragment$d$a;

    invoke-direct {v1, p0}, Lcom/today/player/ui/fragment/ModelSettingFragment$d$a;-><init>(Lcom/today/player/ui/fragment/ModelSettingFragment$d;)V

    iput-object v1, v0, Lcom/today/player/ui/dialog/ChangeRenderDialog;->c:Lcom/today/player/ui/dialog/ChangeRenderDialog$a;

    .line 202
    iget-object v1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$d;->this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;

    invoke-static {v1}, Lcom/today/player/ui/fragment/ModelSettingFragment;->access$500(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f0b0044

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/today/player/ui/dialog/ChangeRenderDialog;->a:Landroid/view/View;

    .line 203
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$d;->this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;

    invoke-static {v2}, Lcom/today/player/ui/fragment/ModelSettingFragment;->access$600(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f00dd

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 204
    iput-object v1, v0, Lcom/today/player/ui/dialog/ChangeRenderDialog;->b:Landroid/app/Dialog;

    const/4 v2, 0x0

    .line 205
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 206
    iget-object v1, v0, Lcom/today/player/ui/dialog/ChangeRenderDialog;->b:Landroid/app/Dialog;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 207
    iget-object v1, v0, Lcom/today/player/ui/dialog/ChangeRenderDialog;->b:Landroid/app/Dialog;

    iget-object v4, v0, Lcom/today/player/ui/dialog/ChangeRenderDialog;->a:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 208
    iget-object v1, v0, Lcom/today/player/ui/dialog/ChangeRenderDialog;->a:Landroid/view/View;

    const v4, 0x7f0802c9

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 209
    iget-object v4, v0, Lcom/today/player/ui/dialog/ChangeRenderDialog;->a:Landroid/view/View;

    const v5, 0x7f0802c8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 210
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "play_render"

    invoke-static {v5, v2}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v5, 0x7f050033

    if-ne v2, v3, :cond_0

    .line 212
    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    .line 213
    iget-object v3, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$d;->this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;

    invoke-static {v3}, Lcom/today/player/ui/fragment/ModelSettingFragment;->access$700(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 216
    iget-object v3, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$d;->this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;

    invoke-static {v3}, Lcom/today/player/ui/fragment/ModelSettingFragment;->access$800(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    :goto_0
    new-instance v3, Lcom/today/player/ui/fragment/ModelSettingFragment$d$1;

    invoke-direct {v3, p0, p1, v2, v0}, Lcom/today/player/ui/fragment/ModelSettingFragment$d$1;-><init>(Lcom/today/player/ui/fragment/ModelSettingFragment$d;Landroid/view/View;ILcom/today/player/ui/dialog/ChangeRenderDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    new-instance v1, Lcom/today/player/ui/fragment/ModelSettingFragment$d$2;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/today/player/ui/fragment/ModelSettingFragment$d$2;-><init>(Lcom/today/player/ui/fragment/ModelSettingFragment$d;Landroid/view/View;ILcom/today/player/ui/dialog/ChangeRenderDialog;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object p1, v0, Lcom/today/player/ui/dialog/ChangeRenderDialog;->b:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    .line 249
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 250
    iget-object p1, v0, Lcom/today/player/ui/dialog/ChangeRenderDialog;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
