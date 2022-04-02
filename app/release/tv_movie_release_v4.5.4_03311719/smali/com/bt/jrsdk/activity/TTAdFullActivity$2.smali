.class Lcom/bt/jrsdk/activity/TTAdFullActivity$2;
.super Ljava/lang/Object;
.source "TTAdFullActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/activity/TTAdFullActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/activity/TTAdFullActivity;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$2;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(JJ)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$2;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    invoke-static {v0}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->access$100(Lcom/bt/jrsdk/activity/TTAdFullActivity;)I

    move-result v0

    if-nez v0, :cond_1

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x3e8

    .line 140
    div-long/2addr p3, p1

    const-wide/16 p1, 0x0

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    .line 142
    iget-object p1, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$2;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    invoke-static {p1}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->access$200(Lcom/bt/jrsdk/activity/TTAdFullActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "s"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$2;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    invoke-static {p1}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->access$300(Lcom/bt/jrsdk/activity/TTAdFullActivity;)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$2;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    invoke-static {p1}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->access$300(Lcom/bt/jrsdk/activity/TTAdFullActivity;)V

    :goto_0
    return-void
.end method

.method public onVideoAdComplete(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    .line 153
    iget-object p1, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$2;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    invoke-static {p1}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->access$300(Lcom/bt/jrsdk/activity/TTAdFullActivity;)V

    return-void
.end method

.method public onVideoAdContinuePlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    return-void
.end method

.method public onVideoAdPaused(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    return-void
.end method

.method public onVideoAdStartPlay(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    return-void
.end method

.method public onVideoError(II)V
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/bt/jrsdk/activity/TTAdFullActivity$2;->this$0:Lcom/bt/jrsdk/activity/TTAdFullActivity;

    invoke-static {p1}, Lcom/bt/jrsdk/activity/TTAdFullActivity;->access$000(Lcom/bt/jrsdk/activity/TTAdFullActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onVideoLoad(Lcom/bytedance/sdk/openadsdk/TTFeedAd;)V
    .locals 0

    return-void
.end method
