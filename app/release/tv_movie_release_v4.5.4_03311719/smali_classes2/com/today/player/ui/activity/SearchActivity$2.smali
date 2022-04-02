.class Lcom/today/player/ui/activity/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/SearchActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/SearchActivity;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/today/player/ui/activity/SearchActivity$2;->this$0:Lcom/today/player/ui/activity/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 104
    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 105
    iget-object p1, p0, Lcom/today/player/ui/activity/SearchActivity$2;->this$0:Lcom/today/player/ui/activity/SearchActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/SearchActivity;->access$100(Lcom/today/player/ui/activity/SearchActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/today/player/ui/activity/SearchActivity$2;->this$0:Lcom/today/player/ui/activity/SearchActivity;

    invoke-static {v0, p1}, Lcom/today/player/ui/activity/SearchActivity;->access$200(Lcom/today/player/ui/activity/SearchActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/activity/SearchActivity$2;->this$0:Lcom/today/player/ui/activity/SearchActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/SearchActivity;->access$300(Lcom/today/player/ui/activity/SearchActivity;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "\u8f93\u5165\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
