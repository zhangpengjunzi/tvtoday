.class Lcom/today/player/ui/fragment/ModelSettingFragment$d$2;
.super Ljava/lang/Object;
.source "ModelSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/fragment/ModelSettingFragment$d;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/today/player/ui/fragment/ModelSettingFragment$d;

.field final synthetic val$intValue:I

.field final synthetic val$qkVar:Lcom/today/player/ui/dialog/ChangeRenderDialog;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/today/player/ui/fragment/ModelSettingFragment$d;Landroid/view/View;ILcom/today/player/ui/dialog/ChangeRenderDialog;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$d$2;->this$1:Lcom/today/player/ui/fragment/ModelSettingFragment$d;

    iput-object p2, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$d$2;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$d$2;->val$intValue:I

    iput-object p4, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$d$2;->val$qkVar:Lcom/today/player/ui/dialog/ChangeRenderDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 236
    iget-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$d$2;->val$view:Landroid/view/View;

    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 237
    iget p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$d$2;->val$intValue:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$d$2;->val$qkVar:Lcom/today/player/ui/dialog/ChangeRenderDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/ChangeRenderDialog;->c:Lcom/today/player/ui/dialog/ChangeRenderDialog$a;

    if-eqz p1, :cond_0

    .line 238
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "play_render"

    invoke-static {v0, p1}, Lcom/orhanobut/hawk/Hawk;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 239
    iget-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$d$2;->val$qkVar:Lcom/today/player/ui/dialog/ChangeRenderDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/ChangeRenderDialog;->c:Lcom/today/player/ui/dialog/ChangeRenderDialog$a;

    check-cast p1, Lcom/today/player/ui/fragment/ModelSettingFragment$d$a;

    invoke-virtual {p1}, Lcom/today/player/ui/fragment/ModelSettingFragment$d$a;->a()V

    .line 241
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$d$2;->val$qkVar:Lcom/today/player/ui/dialog/ChangeRenderDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/ChangeRenderDialog;->b:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    .line 242
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 243
    iget-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$d$2;->val$qkVar:Lcom/today/player/ui/dialog/ChangeRenderDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/ChangeRenderDialog;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method
