.class Lcom/bt/jrsdk/activity/VideoFullActivity$3$1;
.super Ljava/lang/Object;
.source "VideoFullActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/activity/VideoFullActivity$3;->currentTime(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bt/jrsdk/activity/VideoFullActivity$3;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/activity/VideoFullActivity$3;J)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$3$1;->this$1:Lcom/bt/jrsdk/activity/VideoFullActivity$3;

    iput-wide p2, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$3$1;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 148
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$3$1;->this$1:Lcom/bt/jrsdk/activity/VideoFullActivity$3;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoFullActivity$3;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-static {v0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->access$000(Lcom/bt/jrsdk/activity/VideoFullActivity;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$3$1;->val$time:J

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    const-wide/16 v4, 0x2bc

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$3$1;->this$1:Lcom/bt/jrsdk/activity/VideoFullActivity$3;

    iget-object v2, v2, Lcom/bt/jrsdk/activity/VideoFullActivity$3;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-static {v2}, Lcom/bt/jrsdk/activity/VideoFullActivity;->access$300(Lcom/bt/jrsdk/activity/VideoFullActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 150
    :cond_1
    :goto_0
    invoke-static {}, Lcom/bt/jrsdk/util/VideoTimeUtil;->recycler()V

    .line 151
    invoke-static {}, Lcom/bt/jrsdk/util/Utils;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$3$1;->this$1:Lcom/bt/jrsdk/activity/VideoFullActivity$3;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoFullActivity$3;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-static {v0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->access$300(Lcom/bt/jrsdk/activity/VideoFullActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v3, "\u6309\u8fd4\u56de\u952e\u5173\u95ed"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$3$1;->this$1:Lcom/bt/jrsdk/activity/VideoFullActivity$3;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoFullActivity$3;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-static {v0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->access$300(Lcom/bt/jrsdk/activity/VideoFullActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$3$1;->this$1:Lcom/bt/jrsdk/activity/VideoFullActivity$3;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoFullActivity$3;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-static {v0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->access$500(Lcom/bt/jrsdk/activity/VideoFullActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    :goto_1
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$3$1;->this$1:Lcom/bt/jrsdk/activity/VideoFullActivity$3;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoFullActivity$3;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-static {v0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->access$200(Lcom/bt/jrsdk/activity/VideoFullActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/bt/jrsdk/activity/VideoFullActivity$3$1;->this$1:Lcom/bt/jrsdk/activity/VideoFullActivity$3;

    iget-object v0, v0, Lcom/bt/jrsdk/activity/VideoFullActivity$3;->this$0:Lcom/bt/jrsdk/activity/VideoFullActivity;

    invoke-static {v0}, Lcom/bt/jrsdk/activity/VideoFullActivity;->access$100(Lcom/bt/jrsdk/activity/VideoFullActivity;)Lxyz/doikki/videoplayer/player/VideoView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lxyz/doikki/videoplayer/player/VideoView;->setVisibility(I)V

    :goto_2
    return-void
.end method
