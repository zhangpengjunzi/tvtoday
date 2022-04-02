.class Lcom/today/player/ui/fragment/LiveFragment$1;
.super Ljava/lang/Object;
.source "LiveFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/fragment/LiveFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/fragment/LiveFragment$1$C0031a;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/fragment/LiveFragment;

.field final synthetic val$arrayList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/today/player/ui/fragment/LiveFragment;Ljava/util/List;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/today/player/ui/fragment/LiveFragment$1;->this$0:Lcom/today/player/ui/fragment/LiveFragment;

    iput-object p2, p0, Lcom/today/player/ui/fragment/LiveFragment$1;->val$arrayList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    .line 82
    invoke-static {p2}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 83
    iget-object p1, p0, Lcom/today/player/ui/fragment/LiveFragment$1;->val$arrayList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/PlayerModel$LiveDTO;

    .line 84
    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$LiveDTO;->isForAdd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance p1, Lcom/today/player/ui/dialog/RemoteConnect;

    invoke-direct {p1}, Lcom/today/player/ui/dialog/RemoteConnect;-><init>()V

    .line 86
    iget-object p2, p0, Lcom/today/player/ui/fragment/LiveFragment$1;->this$0:Lcom/today/player/ui/fragment/LiveFragment;

    invoke-static {p2}, Lcom/today/player/ui/fragment/LiveFragment;->access$000(Lcom/today/player/ui/fragment/LiveFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/today/player/ui/dialog/RemoteConnect;->a(Landroid/content/Context;)Lcom/today/player/ui/dialog/RemoteConnect;

    .line 87
    invoke-virtual {p1}, Lcom/today/player/ui/dialog/RemoteConnect;->a()V

    return-void

    .line 90
    :cond_0
    new-instance v0, Lcom/today/player/ui/dialog/LiveParseDialog;

    invoke-direct {v0}, Lcom/today/player/ui/dialog/LiveParseDialog;-><init>()V

    .line 91
    new-instance v1, Lcom/today/player/ui/fragment/LiveFragment$1$C0031a;

    invoke-direct {v1, p0, p3}, Lcom/today/player/ui/fragment/LiveFragment$1$C0031a;-><init>(Lcom/today/player/ui/fragment/LiveFragment$1;I)V

    iput-object v1, v0, Lcom/today/player/ui/dialog/LiveParseDialog;->d:Lcom/today/player/ui/dialog/LiveParseDialog$a;

    .line 92
    iput-object p1, v0, Lcom/today/player/ui/dialog/LiveParseDialog;->e:Lcom/today/player/bean/PlayerModel$LiveDTO;

    .line 93
    iget-object p1, p0, Lcom/today/player/ui/fragment/LiveFragment$1;->this$0:Lcom/today/player/ui/fragment/LiveFragment;

    invoke-static {p1}, Lcom/today/player/ui/fragment/LiveFragment;->access$100(Lcom/today/player/ui/fragment/LiveFragment;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/today/player/ui/dialog/LiveParseDialog;->a:Landroid/content/Context;

    .line 95
    iget-object p1, p0, Lcom/today/player/ui/fragment/LiveFragment$1;->this$0:Lcom/today/player/ui/fragment/LiveFragment;

    invoke-static {p1}, Lcom/today/player/ui/fragment/LiveFragment;->access$200(Lcom/today/player/ui/fragment/LiveFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0b0046

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lcom/today/player/ui/dialog/LiveParseDialog;->b:Landroid/view/View;

    .line 96
    new-instance p1, Landroid/app/Dialog;

    iget-object p3, p0, Lcom/today/player/ui/fragment/LiveFragment$1;->this$0:Lcom/today/player/ui/fragment/LiveFragment;

    invoke-static {p3}, Lcom/today/player/ui/fragment/LiveFragment;->access$300(Lcom/today/player/ui/fragment/LiveFragment;)Landroid/content/Context;

    move-result-object p3

    const v2, 0x7f0f00dd

    invoke-direct {p1, p3, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 97
    iput-object p1, v0, Lcom/today/player/ui/dialog/LiveParseDialog;->c:Landroid/app/Dialog;

    const/4 p3, 0x0

    .line 98
    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 99
    iget-object p1, v0, Lcom/today/player/ui/dialog/LiveParseDialog;->c:Landroid/app/Dialog;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 100
    iget-object p1, v0, Lcom/today/player/ui/dialog/LiveParseDialog;->c:Landroid/app/Dialog;

    iget-object p3, v0, Lcom/today/player/ui/dialog/LiveParseDialog;->b:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 101
    iget-object p1, v0, Lcom/today/player/ui/dialog/LiveParseDialog;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    const p3, 0x7f0802c5

    .line 103
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 105
    :cond_1
    check-cast v1, Landroid/widget/TextView;

    .line 106
    iget-object p1, v0, Lcom/today/player/ui/dialog/LiveParseDialog;->e:Lcom/today/player/bean/PlayerModel$LiveDTO;

    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$LiveDTO;->isInternal()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, -0x777778

    goto :goto_0

    :cond_2
    const/high16 p1, -0x1000000

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object p1, v0, Lcom/today/player/ui/dialog/LiveParseDialog;->e:Lcom/today/player/bean/PlayerModel$LiveDTO;

    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$LiveDTO;->isInternal()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "\u5185\u7f6e\u6e90\u4e0d\u53ef\u5220\u9664"

    goto :goto_1

    :cond_3
    const-string p1, "\u5220\u9664\u6b64\u76f4\u64ad\u6e90"

    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    new-instance p1, Lcom/today/player/ui/fragment/LiveFragment$1$1;

    invoke-direct {p1, p0, p2, v0}, Lcom/today/player/ui/fragment/LiveFragment$1$1;-><init>(Lcom/today/player/ui/fragment/LiveFragment$1;Landroid/view/View;Lcom/today/player/ui/dialog/LiveParseDialog;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object p1, v0, Lcom/today/player/ui/dialog/LiveParseDialog;->c:Landroid/app/Dialog;

    if-eqz p1, :cond_4

    .line 130
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 131
    iget-object p1, v0, Lcom/today/player/ui/dialog/LiveParseDialog;->c:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_4
    return-void
.end method
