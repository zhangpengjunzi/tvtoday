.class Lcom/today/player/ui/activity/DetailActivity$1;
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

    .line 123
    iput-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$1;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 126
    invoke-static {p1}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 127
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$1;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$1;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$100(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/adapter/SeriesAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/today/player/ui/adapter/SeriesAdapter;->getData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 128
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 129
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$1;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$100(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/adapter/SeriesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/ui/adapter/SeriesAdapter;->getData()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/today/player/ui/activity/DetailActivity$1;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v1}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v1

    iget v1, v1, Lcom/today/player/bean/VodInfo;->playIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/VodInfo$VodSeries;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/today/player/bean/VodInfo$VodSeries;->selected:Z

    .line 130
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$1;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$100(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/adapter/SeriesAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/today/player/ui/activity/DetailActivity$1;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v1}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v1

    iget v1, v1, Lcom/today/player/bean/VodInfo;->playIndex:I

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/SeriesAdapter;->notifyItemChanged(I)V

    .line 132
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$1;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$200(Lcom/today/player/ui/activity/DetailActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$1;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/today/player/ui/activity/DetailActivity;->access$300(Lcom/today/player/ui/activity/DetailActivity;Ljava/lang/String;Lcom/today/player/bean/VodInfo;)V

    .line 133
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$1;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v0

    const-string v1, "VodInfo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 134
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$1;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$400(Lcom/today/player/ui/activity/DetailActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sourceKey"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 135
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$1;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    const-class v1, Lcom/today/player/ui/activity/PlayActivity;

    invoke-virtual {v0, v1, p1}, Lcom/today/player/ui/activity/DetailActivity;->jumpActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
