.class Lcom/today/player/ui/fragment/ParseFragment$1;
.super Ljava/lang/Object;
.source "ParseFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/fragment/ParseFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/fragment/ParseFragment$1$C0033a;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/fragment/ParseFragment;


# direct methods
.method constructor <init>(Lcom/today/player/ui/fragment/ParseFragment;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/today/player/ui/fragment/ParseFragment$1;->this$0:Lcom/today/player/ui/fragment/ParseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    .line 92
    invoke-static {p2}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 93
    iget-object p1, p0, Lcom/today/player/ui/fragment/ParseFragment$1;->this$0:Lcom/today/player/ui/fragment/ParseFragment;

    invoke-static {p1}, Lcom/today/player/ui/fragment/ParseFragment;->access$000(Lcom/today/player/ui/fragment/ParseFragment;)Lcom/today/player/ui/adapter/PraseAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/today/player/ui/adapter/PraseAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    .line 94
    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->isForAdd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    new-instance p1, Lcom/today/player/ui/dialog/RemoteConnect;

    invoke-direct {p1}, Lcom/today/player/ui/dialog/RemoteConnect;-><init>()V

    .line 96
    iget-object p2, p0, Lcom/today/player/ui/fragment/ParseFragment$1;->this$0:Lcom/today/player/ui/fragment/ParseFragment;

    invoke-static {p2}, Lcom/today/player/ui/fragment/ParseFragment;->access$100(Lcom/today/player/ui/fragment/ParseFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/today/player/ui/dialog/RemoteConnect;->a(Landroid/content/Context;)Lcom/today/player/ui/dialog/RemoteConnect;

    .line 97
    invoke-virtual {p1}, Lcom/today/player/ui/dialog/RemoteConnect;->a()V

    return-void

    .line 100
    :cond_0
    new-instance v0, Lcom/today/player/ui/dialog/ParseTipDialog;

    invoke-direct {v0}, Lcom/today/player/ui/dialog/ParseTipDialog;-><init>()V

    .line 101
    new-instance v1, Lcom/today/player/ui/fragment/ParseFragment$1$C0033a;

    invoke-direct {v1, p0, p3}, Lcom/today/player/ui/fragment/ParseFragment$1$C0033a;-><init>(Lcom/today/player/ui/fragment/ParseFragment$1;I)V

    iput-object v1, v0, Lcom/today/player/ui/dialog/ParseTipDialog;->d:Lcom/today/player/ui/dialog/ParseTipDialog$a;

    .line 102
    iput-object p1, v0, Lcom/today/player/ui/dialog/ParseTipDialog;->e:Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    .line 103
    iget-object p1, p0, Lcom/today/player/ui/fragment/ParseFragment$1;->this$0:Lcom/today/player/ui/fragment/ParseFragment;

    invoke-static {p1}, Lcom/today/player/ui/fragment/ParseFragment;->access$200(Lcom/today/player/ui/fragment/ParseFragment;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/today/player/ui/dialog/ParseTipDialog;->a:Landroid/content/Context;

    .line 105
    iget-object p1, p0, Lcom/today/player/ui/fragment/ParseFragment$1;->this$0:Lcom/today/player/ui/fragment/ParseFragment;

    invoke-static {p1}, Lcom/today/player/ui/fragment/ParseFragment;->access$300(Lcom/today/player/ui/fragment/ParseFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0b004a

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lcom/today/player/ui/dialog/ParseTipDialog;->b:Landroid/view/View;

    .line 106
    new-instance p1, Landroid/app/Dialog;

    iget-object p3, p0, Lcom/today/player/ui/fragment/ParseFragment$1;->this$0:Lcom/today/player/ui/fragment/ParseFragment;

    invoke-static {p3}, Lcom/today/player/ui/fragment/ParseFragment;->access$400(Lcom/today/player/ui/fragment/ParseFragment;)Landroid/content/Context;

    move-result-object p3

    const v2, 0x7f0f00dd

    invoke-direct {p1, p3, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 107
    iput-object p1, v0, Lcom/today/player/ui/dialog/ParseTipDialog;->c:Landroid/app/Dialog;

    const/4 p3, 0x0

    .line 108
    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 109
    iget-object p1, v0, Lcom/today/player/ui/dialog/ParseTipDialog;->c:Landroid/app/Dialog;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 110
    iget-object p1, v0, Lcom/today/player/ui/dialog/ParseTipDialog;->c:Landroid/app/Dialog;

    iget-object p3, v0, Lcom/today/player/ui/dialog/ParseTipDialog;->b:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 111
    iget-object p1, v0, Lcom/today/player/ui/dialog/ParseTipDialog;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    const p3, 0x7f0802c4

    .line 112
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    check-cast p1, Landroid/widget/TextView;

    check-cast p1, Landroid/widget/TextView;

    .line 113
    iget-object p3, v0, Lcom/today/player/ui/dialog/ParseTipDialog;->b:Landroid/view/View;

    if-eqz p3, :cond_2

    const v1, 0x7f0802c5

    .line 115
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 117
    :cond_2
    check-cast v1, Landroid/widget/TextView;

    .line 118
    iget-object p3, v0, Lcom/today/player/ui/dialog/ParseTipDialog;->e:Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    invoke-virtual {p3}, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->isDefault()Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, "\u5f53\u524d\u9ed8\u8ba4\u89e3\u6790\u5730\u5740"

    goto :goto_1

    :cond_3
    const-string p3, "\u8bbe\u4e3a\u9ed8\u8ba4\u89e3\u6790\u5730\u5740"

    :goto_1
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object p3, v0, Lcom/today/player/ui/dialog/ParseTipDialog;->e:Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    invoke-virtual {p3}, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->isDefault()Z

    move-result p3

    const v2, -0x777778

    if-eqz p3, :cond_4

    .line 121
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p3, "\u9ed8\u8ba4\u89e3\u6790\u5730\u5740\u4e0d\u53ef\u5220\u9664"

    .line 123
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 125
    :cond_4
    iget-object p3, v0, Lcom/today/player/ui/dialog/ParseTipDialog;->e:Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    invoke-virtual {p3}, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->isInternal()Z

    move-result p3

    if-nez p3, :cond_5

    const/high16 v2, -0x1000000

    .line 128
    :cond_5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object p3, v0, Lcom/today/player/ui/dialog/ParseTipDialog;->e:Lcom/today/player/bean/PlayerModel$ParseUrlDTO;

    invoke-virtual {p3}, Lcom/today/player/bean/PlayerModel$ParseUrlDTO;->isInternal()Z

    move-result p3

    if-eqz p3, :cond_6

    const-string p3, "\u5185\u7f6e\u89e3\u6790\u4e0d\u53ef\u5220\u9664"

    goto :goto_2

    :cond_6
    const-string p3, "\u5220\u9664\ufffd\ufffd\u89e3\u6790\u5730\u5740"

    :goto_2
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_3
    new-instance p3, Lcom/today/player/ui/fragment/ParseFragment$1$1;

    invoke-direct {p3, p0, p2, v0}, Lcom/today/player/ui/fragment/ParseFragment$1$1;-><init>(Lcom/today/player/ui/fragment/ParseFragment$1;Landroid/view/View;Lcom/today/player/ui/dialog/ParseTipDialog;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    new-instance p1, Lcom/today/player/ui/fragment/ParseFragment$1$2;

    invoke-direct {p1, p0, p2, v0}, Lcom/today/player/ui/fragment/ParseFragment$1$2;-><init>(Lcom/today/player/ui/fragment/ParseFragment$1;Landroid/view/View;Lcom/today/player/ui/dialog/ParseTipDialog;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object p1, v0, Lcom/today/player/ui/dialog/ParseTipDialog;->c:Landroid/app/Dialog;

    if-eqz p1, :cond_7

    .line 172
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_7

    .line 173
    iget-object p1, v0, Lcom/today/player/ui/dialog/ParseTipDialog;->c:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_7
    return-void
.end method
