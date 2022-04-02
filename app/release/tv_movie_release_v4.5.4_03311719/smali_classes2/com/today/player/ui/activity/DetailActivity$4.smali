.class Lcom/today/player/ui/activity/DetailActivity$4;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/DetailActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/DetailActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/DetailActivity;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$4;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 205
    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 206
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$4;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$800(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/Movie$Video;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 207
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$4;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/today/player/ui/activity/DetailActivity;->access$902(Lcom/today/player/ui/activity/DetailActivity;I)I

    .line 208
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$4;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$800(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/Movie$Video;

    move-result-object v0

    iget-object v0, v0, Lcom/today/player/bean/Movie$Video;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/today/player/ui/activity/DetailActivity;->access$1002(Lcom/today/player/ui/activity/DetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$4;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$1100(Lcom/today/player/ui/activity/DetailActivity;)V

    :cond_0
    return-void
.end method
