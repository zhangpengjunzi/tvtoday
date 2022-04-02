.class Lcom/today/player/ui/activity/DetailActivity$3;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


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

    .line 177
    iput-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 180
    invoke-static {p2}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 181
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 182
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object p1

    iget p1, p1, Lcom/today/player/bean/VodInfo;->playIndex:I

    if-eq p1, p3, :cond_0

    .line 183
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$100(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/adapter/SeriesAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/today/player/ui/adapter/SeriesAdapter;->getData()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p2}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object p2

    iget p2, p2, Lcom/today/player/bean/VodInfo;->playIndex:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/VodInfo$VodSeries;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/today/player/bean/VodInfo$VodSeries;->selected:Z

    .line 184
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/today/player/bean/VodInfo;->seriesMap:Ljava/util/LinkedHashMap;

    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    iget-object v1, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v1}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v1

    iget v1, v1, Lcom/today/player/bean/VodInfo;->playFlag:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/VodInfo$VodFrom;

    iget-object v0, v0, Lcom/today/player/bean/VodInfo$VodFrom;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v0

    iget v0, v0, Lcom/today/player/bean/VodInfo;->playIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/VodInfo$VodSeries;

    iput-boolean p2, p1, Lcom/today/player/bean/VodInfo$VodSeries;->selected:Z

    .line 185
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$100(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/adapter/SeriesAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p2}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object p2

    iget p2, p2, Lcom/today/player/bean/VodInfo;->playIndex:I

    invoke-virtual {p1, p2}, Lcom/today/player/ui/adapter/SeriesAdapter;->notifyItemChanged(I)V

    .line 186
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$100(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/adapter/SeriesAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/today/player/ui/adapter/SeriesAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/VodInfo$VodSeries;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/today/player/bean/VodInfo$VodSeries;->selected:Z

    .line 187
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$100(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/adapter/SeriesAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/today/player/ui/adapter/SeriesAdapter;->notifyItemChanged(I)V

    .line 188
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object p1

    iput p3, p1, Lcom/today/player/bean/VodInfo;->playIndex:I

    .line 189
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/today/player/bean/VodInfo;->seriesMap:Ljava/util/LinkedHashMap;

    iget-object p3, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p3}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object p3

    iget-object p3, p3, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v0

    iget v0, v0, Lcom/today/player/bean/VodInfo;->playFlag:I

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/today/player/bean/VodInfo$VodFrom;

    iget-object p3, p3, Lcom/today/player/bean/VodInfo$VodFrom;->name:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object p3, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p3}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object p3

    iget p3, p3, Lcom/today/player/bean/VodInfo;->playIndex:I

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/VodInfo$VodSeries;

    iput-boolean p2, p1, Lcom/today/player/bean/VodInfo$VodSeries;->selected:Z

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$200(Lcom/today/player/ui/activity/DetailActivity;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p3}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/today/player/ui/activity/DetailActivity;->access$300(Lcom/today/player/ui/activity/DetailActivity;Ljava/lang/String;Lcom/today/player/bean/VodInfo;)V

    .line 193
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 194
    iget-object p2, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p2}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object p2

    const-string p3, "VodInfo"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 195
    iget-object p2, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p2}, Lcom/today/player/ui/activity/DetailActivity;->access$400(Lcom/today/player/ui/activity/DetailActivity;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "sourceKey"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 196
    iget-object p2, p0, Lcom/today/player/ui/activity/DetailActivity$3;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    const-class p3, Lcom/today/player/ui/activity/PlayActivity;

    invoke-virtual {p2, p3, p1}, Lcom/today/player/ui/activity/DetailActivity;->jumpActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method
