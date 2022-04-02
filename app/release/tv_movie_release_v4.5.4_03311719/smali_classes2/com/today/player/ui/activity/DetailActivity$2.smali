.class Lcom/today/player/ui/activity/DetailActivity$2;
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

    .line 139
    iput-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    .line 142
    invoke-static {p2}, Lcom/today/player/util/FastClickCheckUtil;->check(Landroid/view/View;)V

    .line 143
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_5

    if-ne p3, p2, :cond_4

    .line 146
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/VodInfo$VodFrom;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/today/player/bean/VodInfo$VodFrom;->selected:Z

    .line 147
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v0

    iput p3, v0, Lcom/today/player/bean/VodInfo;->playFlag:I

    .line 148
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/today/player/bean/VodInfo;->seriesMap:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/today/player/bean/VodInfo$VodFrom;

    iget-object v2, v2, Lcom/today/player/bean/VodInfo$VodFrom;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 149
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    .line 151
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 152
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/today/player/bean/VodInfo$VodSeries;

    iget-boolean v3, v3, Lcom/today/player/bean/VodInfo$VodSeries;->selected:Z

    if-eqz v3, :cond_0

    .line 154
    iget-object v3, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v3}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v3

    iput v2, v3, Lcom/today/player/bean/VodInfo;->playIndex:I

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 158
    :goto_2
    iget-object v3, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v3}, Lcom/today/player/ui/activity/DetailActivity;->access$500(Lcom/today/player/ui/activity/DetailActivity;)V

    .line 159
    iget-object v3, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v3}, Lcom/today/player/ui/activity/DetailActivity;->access$100(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/adapter/SeriesAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/today/player/ui/adapter/SeriesAdapter;->setNewData(Ljava/util/List;)V

    if-nez v2, :cond_2

    .line 161
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v0

    iput p1, v0, Lcom/today/player/bean/VodInfo;->playIndex:I

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/today/player/bean/VodInfo;->seriesMap:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/today/player/bean/VodInfo$VodFrom;

    iget-object v2, v2, Lcom/today/player/bean/VodInfo$VodFrom;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v2

    iget v2, v2, Lcom/today/player/bean/VodInfo;->playIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/VodInfo$VodSeries;

    iput-boolean v1, v0, Lcom/today/player/bean/VodInfo$VodSeries;->selected:Z

    .line 164
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$100(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/adapter/SeriesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/ui/adapter/SeriesAdapter;->getData()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v2

    iget v2, v2, Lcom/today/player/bean/VodInfo;->playIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/VodInfo$VodSeries;

    iput-boolean v1, v0, Lcom/today/player/bean/VodInfo$VodSeries;->selected:Z

    .line 165
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$100(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/adapter/SeriesAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v1}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v1

    iget v1, v1, Lcom/today/player/bean/VodInfo;->playIndex:I

    invoke-virtual {v0, v1}, Lcom/today/player/ui/adapter/SeriesAdapter;->notifyItemChanged(I)V

    goto :goto_3

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$600(Lcom/today/player/ui/activity/DetailActivity;)V

    goto :goto_3

    .line 170
    :cond_4
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/VodInfo$VodFrom;

    iput-boolean p1, v0, Lcom/today/player/bean/VodInfo$VodFrom;->selected:Z

    .line 172
    :goto_3
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$2;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$700(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/adapter/SourceFromAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/today/player/ui/adapter/SourceFromAdapter;->notifyItemChanged(I)V

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method
