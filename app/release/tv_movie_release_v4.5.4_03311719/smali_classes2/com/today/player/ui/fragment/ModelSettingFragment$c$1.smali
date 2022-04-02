.class Lcom/today/player/ui/fragment/ModelSettingFragment$c$1;
.super Ljava/lang/Object;
.source "ModelSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/fragment/ModelSettingFragment$c;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/today/player/ui/fragment/ModelSettingFragment$c;

.field final synthetic val$intValue:I

.field final synthetic val$nkVar:Lcom/today/player/ui/dialog/ChanPlayDialog;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/today/player/ui/fragment/ModelSettingFragment$c;Landroid/view/View;ILcom/today/player/ui/dialog/ChanPlayDialog;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$c$1;->this$1:Lcom/today/player/ui/fragment/ModelSettingFragment$c;

    iput-object p2, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$c$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$c$1;->val$intValue:I

    iput-object p4, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$c$1;->val$nkVar:Lcom/today/player/ui/dialog/ChanPlayDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 156
    iget-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$c$1;->val$view:Landroid/view/View;

    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 157
    iget p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$c$1;->val$intValue:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$c$1;->val$nkVar:Lcom/today/player/ui/dialog/ChanPlayDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/ChanPlayDialog;->c:Lcom/today/player/ui/dialog/ChanPlayDialog$a;

    if-eqz p1, :cond_0

    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "play_type"

    invoke-static {v0, p1}, Lcom/orhanobut/hawk/Hawk;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 159
    iget-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$c$1;->val$nkVar:Lcom/today/player/ui/dialog/ChanPlayDialog;

    iget-object p1, p1, Lcom/today/player/ui/dialog/ChanPlayDialog;->c:Lcom/today/player/ui/dialog/ChanPlayDialog$a;

    check-cast p1, Lcom/today/player/ui/fragment/ModelSettingFragment$c$a;

    invoke-virtual {p1}, Lcom/today/player/ui/fragment/ModelSettingFragment$c$a;->a()V

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$c$1;->val$nkVar:Lcom/today/player/ui/dialog/ChanPlayDialog;

    invoke-virtual {p1}, Lcom/today/player/ui/dialog/ChanPlayDialog;->a()V

    return-void
.end method
