.class Lcom/today/player/ui/activity/SearchActivity$3;
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

    .line 113
    iput-object p1, p0, Lcom/today/player/ui/activity/SearchActivity$3;->this$0:Lcom/today/player/ui/activity/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 116
    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 117
    iget-object p1, p0, Lcom/today/player/ui/activity/SearchActivity$3;->this$0:Lcom/today/player/ui/activity/SearchActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/SearchActivity;->access$100(Lcom/today/player/ui/activity/SearchActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
