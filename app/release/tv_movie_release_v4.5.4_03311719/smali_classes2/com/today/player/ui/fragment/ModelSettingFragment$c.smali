.class public Lcom/today/player/ui/fragment/ModelSettingFragment$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/fragment/ModelSettingFragment$c$a;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/fragment/ModelSettingFragment;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$c;->this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 134
    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 135
    new-instance v0, Lcom/today/player/ui/dialog/ChanPlayDialog;

    invoke-direct {v0}, Lcom/today/player/ui/dialog/ChanPlayDialog;-><init>()V

    .line 136
    new-instance v1, Lcom/today/player/ui/fragment/ModelSettingFragment$c$a;

    invoke-direct {v1, p0}, Lcom/today/player/ui/fragment/ModelSettingFragment$c$a;-><init>(Lcom/today/player/ui/fragment/ModelSettingFragment$c;)V

    iput-object v1, v0, Lcom/today/player/ui/dialog/ChanPlayDialog;->c:Lcom/today/player/ui/dialog/ChanPlayDialog$a;

    .line 137
    iget-object v1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$c;->this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;

    invoke-static {v1}, Lcom/today/player/ui/fragment/ModelSettingFragment;->access$100(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f0b0043

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/today/player/ui/dialog/ChanPlayDialog;->a:Landroid/view/View;

    .line 138
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$c;->this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;

    invoke-static {v2}, Lcom/today/player/ui/fragment/ModelSettingFragment;->access$200(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f00dd

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 139
    iput-object v1, v0, Lcom/today/player/ui/dialog/ChanPlayDialog;->b:Landroid/app/Dialog;

    const/4 v2, 0x0

    .line 140
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 141
    iget-object v1, v0, Lcom/today/player/ui/dialog/ChanPlayDialog;->b:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 142
    iget-object v1, v0, Lcom/today/player/ui/dialog/ChanPlayDialog;->b:Landroid/app/Dialog;

    iget-object v3, v0, Lcom/today/player/ui/dialog/ChanPlayDialog;->a:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v1, 0x7f0802a2

    .line 143
    invoke-virtual {v0, v1}, Lcom/today/player/ui/dialog/ChanPlayDialog;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f08029d

    .line 144
    invoke-virtual {v0, v3}, Lcom/today/player/ui/dialog/ChanPlayDialog;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 145
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "play_type"

    invoke-static {v5, v4}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x7f050033

    if-ne v4, v2, :cond_0

    .line 147
    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 148
    iget-object v2, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$c;->this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;

    invoke-static {v2}, Lcom/today/player/ui/fragment/ModelSettingFragment;->access$300(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 151
    iget-object v2, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$c;->this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;

    invoke-static {v2}, Lcom/today/player/ui/fragment/ModelSettingFragment;->access$400(Lcom/today/player/ui/fragment/ModelSettingFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    :goto_0
    new-instance v2, Lcom/today/player/ui/fragment/ModelSettingFragment$c$1;

    invoke-direct {v2, p0, p1, v4, v0}, Lcom/today/player/ui/fragment/ModelSettingFragment$c$1;-><init>(Lcom/today/player/ui/fragment/ModelSettingFragment$c;Landroid/view/View;ILcom/today/player/ui/dialog/ChanPlayDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance v1, Lcom/today/player/ui/fragment/ModelSettingFragment$c$2;

    invoke-direct {v1, p0, p1, v4, v0}, Lcom/today/player/ui/fragment/ModelSettingFragment$c$2;-><init>(Lcom/today/player/ui/fragment/ModelSettingFragment$c;Landroid/view/View;ILcom/today/player/ui/dialog/ChanPlayDialog;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object p1, v0, Lcom/today/player/ui/dialog/ChanPlayDialog;->b:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    .line 176
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 177
    iget-object p1, v0, Lcom/today/player/ui/dialog/ChanPlayDialog;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
