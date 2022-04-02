.class Lcom/bt/jrsdk/activity/SplashAdActivity$SplashHandler;
.super Landroid/os/Handler;
.source "SplashAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bt/jrsdk/activity/SplashAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SplashHandler"
.end annotation


# instance fields
.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bt/jrsdk/activity/SplashAdActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bt/jrsdk/activity/SplashAdActivity;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 140
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity$SplashHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/bt/jrsdk/activity/SplashAdActivity$SplashHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bt/jrsdk/activity/SplashAdActivity;

    if-eqz v0, :cond_3

    .line 148
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x1021

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    sub-int/2addr p1, v1

    .line 154
    invoke-static {v0}, Lcom/bt/jrsdk/activity/SplashAdActivity;->access$200(Lcom/bt/jrsdk/activity/SplashAdActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u79d2\u8df3\u8fc7"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {p0}, Lcom/bt/jrsdk/activity/SplashAdActivity$SplashHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 156
    iput v2, v0, Landroid/os/Message;->what:I

    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v1, 0x3e8

    .line 158
    invoke-virtual {p0, v0, v1, v2}, Lcom/bt/jrsdk/activity/SplashAdActivity$SplashHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 160
    :cond_1
    invoke-static {}, Lcom/bt/jrsdk/util/Utils;->getDeviceType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 161
    invoke-static {v0}, Lcom/bt/jrsdk/activity/SplashAdActivity;->access$300(Lcom/bt/jrsdk/activity/SplashAdActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    invoke-static {v0}, Lcom/bt/jrsdk/activity/SplashAdActivity;->access$200(Lcom/bt/jrsdk/activity/SplashAdActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 164
    :cond_2
    invoke-static {v0}, Lcom/bt/jrsdk/activity/SplashAdActivity;->access$200(Lcom/bt/jrsdk/activity/SplashAdActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u6309\u8fd4\u56de\u952e\u5173\u95ed"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method
