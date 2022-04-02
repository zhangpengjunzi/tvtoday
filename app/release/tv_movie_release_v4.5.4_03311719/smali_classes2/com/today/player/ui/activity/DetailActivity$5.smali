.class Lcom/today/player/ui/activity/DetailActivity$5;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/activity/DetailActivity;->initViewModel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/today/player/bean/AbsXml;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/DetailActivity;


# direct methods
.method constructor <init>(Lcom/today/player/ui/activity/DetailActivity;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/today/player/bean/AbsXml;)V
    .locals 6

    if-eqz p1, :cond_6

    .line 221
    iget-object v0, p1, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    iget-object v0, v0, Lcom/today/player/bean/Movie;->videoList:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    iget-object v0, v0, Lcom/today/player/bean/Movie;->videoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 222
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$1200(Lcom/today/player/ui/activity/DetailActivity;)V

    .line 223
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    iget-object v1, p1, Lcom/today/player/bean/AbsXml;->api:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/today/player/ui/activity/DetailActivity;->access$202(Lcom/today/player/ui/activity/DetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    iget-object p1, p1, Lcom/today/player/bean/AbsXml;->movie:Lcom/today/player/bean/Movie;

    iget-object p1, p1, Lcom/today/player/bean/Movie;->videoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/Movie$Video;

    invoke-static {v0, p1}, Lcom/today/player/ui/activity/DetailActivity;->access$802(Lcom/today/player/ui/activity/DetailActivity;Lcom/today/player/bean/Movie$Video;)Lcom/today/player/bean/Movie$Video;

    .line 225
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    new-instance v0, Lcom/today/player/bean/VodInfo;

    invoke-direct {v0}, Lcom/today/player/bean/VodInfo;-><init>()V

    invoke-static {p1, v0}, Lcom/today/player/ui/activity/DetailActivity;->access$002(Lcom/today/player/ui/activity/DetailActivity;Lcom/today/player/bean/VodInfo;)Lcom/today/player/bean/VodInfo;

    .line 226
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$200(Lcom/today/player/ui/activity/DetailActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$1300(Lcom/today/player/ui/activity/DetailActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/today/player/cache/RoomDataManger;->getVodInfo(Ljava/lang/String;I)Lcom/today/player/bean/VodInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v0

    iget v2, p1, Lcom/today/player/bean/VodInfo;->playIndex:I

    iput v2, v0, Lcom/today/player/bean/VodInfo;->playIndex:I

    .line 229
    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v0

    iget p1, p1, Lcom/today/player/bean/VodInfo;->playFlag:I

    iput p1, v0, Lcom/today/player/bean/VodInfo;->playFlag:I

    .line 231
    :cond_0
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$800(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/Movie$Video;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/today/player/bean/VodInfo;->setVideo(Lcom/today/player/bean/Movie$Video;)V

    .line 232
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 233
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$1400(Lcom/today/player/ui/activity/DetailActivity;)Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/today/player/ui/activity/DetailActivity;->access$1500(Lcom/today/player/ui/activity/DetailActivity;Landroid/view/View;)V

    .line 234
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object p1

    iget p1, p1, Lcom/today/player/bean/VodInfo;->playFlag:I

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 235
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object p1

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    iput v2, p1, Lcom/today/player/bean/VodInfo;->playFlag:I

    .line 237
    :cond_1
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v2

    iget v2, v2, Lcom/today/player/bean/VodInfo;->playFlag:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/today/player/bean/VodInfo$VodFrom;

    iput-boolean v0, p1, Lcom/today/player/bean/VodInfo$VodFrom;->selected:Z

    .line 238
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$700(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/adapter/SourceFromAdapter;

    move-result-object p1

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/today/player/ui/adapter/SourceFromAdapter;->setNewData(Ljava/util/List;)V

    .line 239
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/today/player/bean/VodInfo;->seriesMap:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/today/player/bean/VodInfo;->fromList:Ljava/util/List;

    iget-object v3, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v3}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v3

    iget v3, v3, Lcom/today/player/bean/VodInfo;->playFlag:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/today/player/bean/VodInfo$VodFrom;

    iget-object v2, v2, Lcom/today/player/bean/VodInfo$VodFrom;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    .line 240
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 241
    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$1600(Lcom/today/player/ui/activity/DetailActivity;)V

    .line 242
    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v2

    iget v2, v2, Lcom/today/player/bean/VodInfo;->playIndex:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 243
    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    iput v3, v2, Lcom/today/player/bean/VodInfo;->playIndex:I

    .line 245
    :cond_2
    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v2

    iget v2, v2, Lcom/today/player/bean/VodInfo;->playIndex:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/today/player/bean/VodInfo$VodSeries;

    iput-boolean v0, v2, Lcom/today/player/bean/VodInfo$VodSeries;->selected:Z

    .line 246
    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$100(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/ui/adapter/SeriesAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/today/player/ui/adapter/SeriesAdapter;->setNewData(Ljava/util/List;)V

    .line 247
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$1400(Lcom/today/player/ui/activity/DetailActivity;)Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    move-result-object p1

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$000(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/VodInfo;

    move-result-object v2

    iget v2, v2, Lcom/today/player/bean/VodInfo;->playIndex:I

    invoke-virtual {p1, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 249
    :cond_3
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$1700(Lcom/today/player/ui/activity/DetailActivity;)V

    .line 252
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$1800(Lcom/today/player/ui/activity/DetailActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$800(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/Movie$Video;

    move-result-object v2

    iget-object v2, v2, Lcom/today/player/bean/Movie$Video;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$1900(Lcom/today/player/ui/activity/DetailActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$800(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/Movie$Video;

    move-result-object v2

    iget-object v2, v2, Lcom/today/player/bean/Movie$Video;->sourceKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$2100(Lcom/today/player/ui/activity/DetailActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$800(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/Movie$Video;

    move-result-object v3

    iget v3, v3, Lcom/today/player/bean/Movie$Video;->year:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u5e74\u4efd\uff1a"

    invoke-static {v2, v4, v3}, Lcom/today/player/ui/activity/DetailActivity;->access$2000(Lcom/today/player/ui/activity/DetailActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$2200(Lcom/today/player/ui/activity/DetailActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$800(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/Movie$Video;

    move-result-object v3

    iget-object v3, v3, Lcom/today/player/bean/Movie$Video;->area:Ljava/lang/String;

    const-string v4, "\u5730\u533a\uff1a"

    invoke-static {v2, v4, v3}, Lcom/today/player/ui/activity/DetailActivity;->access$2000(Lcom/today/player/ui/activity/DetailActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$2300(Lcom/today/player/ui/activity/DetailActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$800(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/Movie$Video;

    move-result-object v3

    iget-object v3, v3, Lcom/today/player/bean/Movie$Video;->lang:Ljava/lang/String;

    const-string v4, "\u8bed\u8a00\uff1a"

    invoke-static {v2, v4, v3}, Lcom/today/player/ui/activity/DetailActivity;->access$2000(Lcom/today/player/ui/activity/DetailActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$2400(Lcom/today/player/ui/activity/DetailActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$800(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/Movie$Video;

    move-result-object v3

    iget-object v3, v3, Lcom/today/player/bean/Movie$Video;->type:Ljava/lang/String;

    const-string v4, "\u7c7b\u578b\uff1a"

    invoke-static {v2, v4, v3}, Lcom/today/player/ui/activity/DetailActivity;->access$2000(Lcom/today/player/ui/activity/DetailActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$2500(Lcom/today/player/ui/activity/DetailActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$800(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/Movie$Video;

    move-result-object v3

    iget-object v3, v3, Lcom/today/player/bean/Movie$Video;->actor:Ljava/lang/String;

    const-string v4, "\u6f14\u5458\uff1a"

    invoke-static {v2, v4, v3}, Lcom/today/player/ui/activity/DetailActivity;->access$2000(Lcom/today/player/ui/activity/DetailActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$2600(Lcom/today/player/ui/activity/DetailActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$800(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/Movie$Video;

    move-result-object v3

    iget-object v3, v3, Lcom/today/player/bean/Movie$Video;->director:Ljava/lang/String;

    const-string v4, "\u5bfc\u6f14\uff1a"

    invoke-static {v2, v4, v3}, Lcom/today/player/ui/activity/DetailActivity;->access$2000(Lcom/today/player/ui/activity/DetailActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$2700(Lcom/today/player/ui/activity/DetailActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v2}, Lcom/today/player/ui/activity/DetailActivity;->access$800(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/Movie$Video;

    move-result-object v3

    iget-object v3, v3, Lcom/today/player/bean/Movie$Video;->des:Ljava/lang/String;

    const-string v4, "\u5185\u5bb9\u7b80\u4ecb\uff1a"

    invoke-static {v2, v4, v3}, Lcom/today/player/ui/activity/DetailActivity;->access$2000(Lcom/today/player/ui/activity/DetailActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$800(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/Movie$Video;

    move-result-object p1

    iget-object p1, p1, Lcom/today/player/bean/Movie$Video;->pic:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const v2, 0x7f07009f

    if-nez p1, :cond_5

    .line 262
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object p1

    iget-object v3, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    .line 263
    invoke-static {v3}, Lcom/today/player/ui/activity/DetailActivity;->access$800(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/Movie$Video;

    move-result-object v3

    iget-object v3, v3, Lcom/today/player/bean/Movie$Video;->pic:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    new-instance v3, Lcom/today/player/picasso/RoundTransformation;

    iget-object v4, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    .line 264
    invoke-static {v4}, Lcom/today/player/ui/activity/DetailActivity;->access$800(Lcom/today/player/ui/activity/DetailActivity;)Lcom/today/player/bean/Movie$Video;

    move-result-object v4

    iget-object v4, v4, Lcom/today/player/bean/Movie$Video;->pic:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/today/player/picasso/RoundTransformation;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v3, v0}, Lcom/today/player/picasso/RoundTransformation;->centerCorp(Z)Lcom/today/player/picasso/RoundTransformation;

    move-result-object v0

    iget-object v3, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    .line 266
    invoke-static {v3}, Lcom/today/player/ui/activity/DetailActivity;->access$3000(Lcom/today/player/ui/activity/DetailActivity;)Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x43600000    # 224.0f

    invoke-static {v3, v4}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {v4}, Lcom/today/player/ui/activity/DetailActivity;->access$3100(Lcom/today/player/ui/activity/DetailActivity;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x439d8000    # 315.0f

    invoke-static {v4, v5}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/today/player/picasso/RoundTransformation;->override(II)Lcom/today/player/picasso/RoundTransformation;

    move-result-object v0

    iget-object v3, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    .line 267
    invoke-static {v3}, Lcom/today/player/ui/activity/DetailActivity;->access$2900(Lcom/today/player/ui/activity/DetailActivity;)Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v3, v4}, Lme/jessyan/autosize/utils/AutoSizeUtils;->pt2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v3, v1}, Lcom/today/player/picasso/RoundTransformation;->roundRadius(II)Lcom/today/player/picasso/RoundTransformation;

    move-result-object v0

    .line 264
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 268
    invoke-virtual {p1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 269
    invoke-virtual {p1, v2}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    .line 270
    invoke-static {v0}, Lcom/today/player/ui/activity/DetailActivity;->access$2800(Lcom/today/player/ui/activity/DetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 272
    :cond_5
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$2800(Lcom/today/player/ui/activity/DetailActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 275
    :cond_6
    iget-object p1, p0, Lcom/today/player/ui/activity/DetailActivity$5;->this$0:Lcom/today/player/ui/activity/DetailActivity;

    invoke-static {p1}, Lcom/today/player/ui/activity/DetailActivity;->access$3200(Lcom/today/player/ui/activity/DetailActivity;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 218
    check-cast p1, Lcom/today/player/bean/AbsXml;

    invoke-virtual {p0, p1}, Lcom/today/player/ui/activity/DetailActivity$5;->onChanged(Lcom/today/player/bean/AbsXml;)V

    return-void
.end method
