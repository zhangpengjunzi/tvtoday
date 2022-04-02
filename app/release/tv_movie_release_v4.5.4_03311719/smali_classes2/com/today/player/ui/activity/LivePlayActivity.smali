.class public Lcom/today/player/ui/activity/LivePlayActivity;
.super Lcom/today/player/base/BaseActivity;
.source "LivePlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/activity/LivePlayActivity$e;,
        Lcom/today/player/ui/activity/LivePlayActivity$d;,
        Lcom/today/player/ui/activity/LivePlayActivity$c;,
        Lcom/today/player/ui/activity/LivePlayActivity$b;,
        Lcom/today/player/ui/activity/LivePlayActivity$a;
    }
.end annotation


# instance fields
.field public c:Lxyz/doikki/videoplayer/player/VideoView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public f167p:Ljava/lang/String;

.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public h:Lcom/today/player/ui/adapter/LiveChannelAdapter;

.field public i:Landroid/os/Handler;

.field public k:Lcom/today/player/bean/PlayerModel$LiveDTO;

.field public l:Ljava/lang/Runnable;

.field public liveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/today/player/bean/PlayerModel$LiveDTO;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/lang/Runnable;

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/today/player/base/BaseActivity;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->i:Landroid/os/Handler;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->liveList:Ljava/util/List;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->k:Lcom/today/player/bean/PlayerModel$LiveDTO;

    .line 53
    new-instance v0, Lcom/today/player/ui/activity/LivePlayActivity$b;

    invoke-direct {v0, p0}, Lcom/today/player/ui/activity/LivePlayActivity$b;-><init>(Lcom/today/player/ui/activity/LivePlayActivity;)V

    iput-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->l:Ljava/lang/Runnable;

    .line 54
    new-instance v0, Lcom/today/player/ui/activity/LivePlayActivity$c;

    invoke-direct {v0, p0}, Lcom/today/player/ui/activity/LivePlayActivity$c;-><init>(Lcom/today/player/ui/activity/LivePlayActivity;)V

    iput-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->m:Ljava/lang/Runnable;

    .line 55
    new-instance v0, Lcom/today/player/ui/activity/LivePlayActivity$d;

    invoke-direct {v0, p0}, Lcom/today/player/ui/activity/LivePlayActivity$d;-><init>(Lcom/today/player/ui/activity/LivePlayActivity;)V

    iput-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->n:Ljava/lang/Runnable;

    .line 56
    new-instance v0, Lcom/today/player/ui/activity/LivePlayActivity$e;

    invoke-direct {v0, p0}, Lcom/today/player/ui/activity/LivePlayActivity$e;-><init>(Lcom/today/player/ui/activity/LivePlayActivity;)V

    iput-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->o:Ljava/lang/Runnable;

    const-string v0, ""

    .line 59
    iput-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->f167p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->f167p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/today/player/ui/activity/LivePlayActivity;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 374
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/today/player/ui/activity/LivePlayActivity;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 375
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 376
    iget-object v2, p0, Lcom/today/player/ui/activity/LivePlayActivity;->f167p:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 377
    iput-object p1, p0, Lcom/today/player/ui/activity/LivePlayActivity;->f167p:Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object p1, p0, Lcom/today/player/ui/activity/LivePlayActivity;->i:Landroid/os/Handler;

    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->m:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/today/player/bean/PlayerModel$LiveDTO;Z)Z
    .locals 4

    .line 384
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->k:Lcom/today/player/bean/PlayerModel$LiveDTO;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    return v1

    .line 387
    :cond_2
    iget-object p2, p0, Lcom/today/player/ui/activity/LivePlayActivity;->k:Lcom/today/player/bean/PlayerModel$LiveDTO;

    if-eqz p2, :cond_3

    .line 389
    invoke-virtual {p2, v1}, Lcom/today/player/bean/PlayerModel$LiveDTO;->setDefault(Z)V

    .line 391
    :cond_3
    iget-object p2, p0, Lcom/today/player/ui/activity/LivePlayActivity;->h:Lcom/today/player/ui/adapter/LiveChannelAdapter;

    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->liveList:Ljava/util/List;

    iget-object v2, p0, Lcom/today/player/ui/activity/LivePlayActivity;->k:Lcom/today/player/bean/PlayerModel$LiveDTO;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/today/player/ui/adapter/LiveChannelAdapter;->notifyItemChanged(I)V

    .line 392
    iput-object p1, p0, Lcom/today/player/ui/activity/LivePlayActivity;->k:Lcom/today/player/bean/PlayerModel$LiveDTO;

    const/4 p2, 0x1

    .line 393
    invoke-virtual {p1, p2}, Lcom/today/player/bean/PlayerModel$LiveDTO;->setDefault(Z)V

    .line 394
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->h:Lcom/today/player/ui/adapter/LiveChannelAdapter;

    iget-object v2, p0, Lcom/today/player/ui/activity/LivePlayActivity;->liveList:Ljava/util/List;

    iget-object v3, p0, Lcom/today/player/ui/activity/LivePlayActivity;->k:Lcom/today/player/bean/PlayerModel$LiveDTO;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/today/player/ui/adapter/LiveChannelAdapter;->notifyItemChanged(I)V

    .line 395
    invoke-virtual {p0}, Lcom/today/player/ui/activity/LivePlayActivity;->e()V

    .line 396
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/today/player/ui/activity/LivePlayActivity;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 398
    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$LiveDTO;->getChannelName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "last_live_channel_name"

    invoke-static {v1, v0}, Lcom/orhanobut/hawk/Hawk;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 399
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->c:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->release()V

    .line 400
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->c:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {p1}, Lcom/today/player/bean/PlayerModel$LiveDTO;->getCurrentChannelUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lxyz/doikki/videoplayer/player/VideoView;->setUrl(Ljava/lang/String;)V

    .line 401
    iget-object p1, p0, Lcom/today/player/ui/activity/LivePlayActivity;->c:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {p1}, Lxyz/doikki/videoplayer/player/VideoView;->start()V

    return p2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 253
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 254
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ne v0, v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 256
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->liveList:Ljava/util/List;

    iget-object v2, p0, Lcom/today/player/ui/activity/LivePlayActivity;->k:Lcom/today/player/bean/PlayerModel$LiveDTO;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    .line 257
    iget-object v1, p0, Lcom/today/player/ui/activity/LivePlayActivity;->liveList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/today/player/ui/activity/LivePlayActivity;->liveList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/PlayerModel$LiveDTO;

    invoke-virtual {p0, v0, v3}, Lcom/today/player/ui/activity/LivePlayActivity;->a(Lcom/today/player/bean/PlayerModel$LiveDTO;Z)Z

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x13

    if-ne v0, v2, :cond_3

    .line 261
    iget-object v2, p0, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 262
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->liveList:Ljava/util/List;

    iget-object v2, p0, Lcom/today/player/ui/activity/LivePlayActivity;->k:Lcom/today/player/bean/PlayerModel$LiveDTO;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v0, v1

    if-gez v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->liveList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/today/player/ui/activity/LivePlayActivity;->liveList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/today/player/bean/PlayerModel$LiveDTO;

    invoke-virtual {p0, v0, v3}, Lcom/today/player/ui/activity/LivePlayActivity;->a(Lcom/today/player/bean/PlayerModel$LiveDTO;Z)Z

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x15

    if-ne v0, v2, :cond_4

    .line 267
    iget-object v2, p0, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 268
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->k:Lcom/today/player/bean/PlayerModel$LiveDTO;

    .line 269
    iget v2, v0, Lcom/today/player/bean/PlayerModel$LiveDTO;->sourceIdx:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/today/player/bean/PlayerModel$LiveDTO;->sourceIdx:I

    .line 270
    invoke-virtual {p0, v0, v1}, Lcom/today/player/ui/activity/LivePlayActivity;->a(Lcom/today/player/bean/PlayerModel$LiveDTO;Z)Z

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x16

    if-ne v0, v2, :cond_5

    .line 271
    iget-object v2, p0, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 272
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->k:Lcom/today/player/bean/PlayerModel$LiveDTO;

    .line 273
    iget v2, v0, Lcom/today/player/bean/PlayerModel$LiveDTO;->sourceIdx:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/today/player/bean/PlayerModel$LiveDTO;->sourceIdx:I

    .line 274
    invoke-virtual {p0, v0, v1}, Lcom/today/player/ui/activity/LivePlayActivity;->a(Lcom/today/player/bean/PlayerModel$LiveDTO;Z)Z

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x7

    if-eq v0, v1, :cond_6

    const/16 v1, 0x17

    if-eq v0, v1, :cond_6

    const/16 v1, 0x55

    if-eq v0, v1, :cond_6

    const/16 v1, 0x42

    if-ne v0, v1, :cond_7

    .line 275
    :cond_6
    iget-object v1, p0, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_8

    .line 276
    :cond_7
    iget-object v1, p0, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_a

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "9"

    .line 306
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/LivePlayActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "8"

    .line 303
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/LivePlayActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "7"

    .line 300
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/LivePlayActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "6"

    .line 297
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/LivePlayActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "5"

    .line 294
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/LivePlayActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "4"

    .line 291
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/LivePlayActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    const-string v0, "3"

    .line 288
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/LivePlayActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    const-string v0, "2"

    .line 285
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/LivePlayActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    const-string v0, "1"

    .line 282
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/LivePlayActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_9
    const-string v0, "0"

    .line 279
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/LivePlayActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_8
    invoke-virtual {p0}, Lcom/today/player/ui/activity/LivePlayActivity;->f()V

    goto :goto_0

    .line 313
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    .line 314
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/today/player/ui/activity/LivePlayActivity;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 316
    :cond_a
    :goto_0
    invoke-super {p0, p1}, Lcom/today/player/base/BaseActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()V
    .locals 4

    .line 321
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/today/player/ui/activity/LivePlayActivity;->k:Lcom/today/player/bean/PlayerModel$LiveDTO;

    invoke-virtual {v1}, Lcom/today/player/bean/PlayerModel$LiveDTO;->getCurrentChannelUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->f:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/today/player/ui/activity/LivePlayActivity;->k:Lcom/today/player/bean/PlayerModel$LiveDTO;

    invoke-virtual {v2}, Lcom/today/player/bean/PlayerModel$LiveDTO;->getChannelNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final f()V
    .locals 4

    .line 326
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iget-object v1, p0, Lcom/today/player/ui/activity/LivePlayActivity;->liveList:Ljava/util/List;

    iget-object v2, p0, Lcom/today/player/ui/activity/LivePlayActivity;->k:Lcom/today/player/bean/PlayerModel$LiveDTO;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 330
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/today/player/ui/activity/LivePlayActivity;->o:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected getLayoutResID()I
    .locals 1

    const v0, 0x7f0b0022

    return v0
.end method

.method public init()V
    .locals 7

    const v0, 0x7f0800d8

    .line 188
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/LivePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lxyz/doikki/videoplayer/player/VideoView;

    iput-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->c:Lxyz/doikki/videoplayer/player/VideoView;

    .line 189
    invoke-static {v0}, Lcom/today/player/util/PlayUtils;->a(Lxyz/doikki/videoplayer/player/VideoView;)V

    const v0, 0x7f0800d2

    .line 190
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/LivePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    iput-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    const v0, 0x7f080293

    .line 191
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/LivePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f08029e

    .line 192
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/LivePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0802cc

    .line 193
    invoke-virtual {p0, v0}, Lcom/today/player/ui/activity/LivePlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->e:Landroid/widget/TextView;

    .line 194
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setHasFixedSize(Z)V

    .line 195
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    iget-object v3, p0, Lcom/today/player/ui/activity/LivePlayActivity;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 196
    new-instance v0, Lcom/today/player/dkplayer/SimonVideoController;

    invoke-direct {v0, p0}, Lcom/today/player/dkplayer/SimonVideoController;-><init>(Landroid/content/Context;)V

    .line 197
    new-instance v2, Lcom/today/player/ui/activity/LivePlayActivity$a;

    invoke-direct {v2, p0}, Lcom/today/player/ui/activity/LivePlayActivity$a;-><init>(Lcom/today/player/ui/activity/LivePlayActivity;)V

    invoke-virtual {v0, v2}, Lcom/today/player/dkplayer/SimonVideoController;->setScreenTapListener(Lcom/today/player/dkplayer/SimonVideoController$a;)V

    new-array v2, v1, [Lxyz/doikki/videoplayer/controller/IControlComponent;

    .line 198
    new-instance v3, Lcom/today/player/ui/weight/GestureView;

    invoke-direct {v3, p0}, Lcom/today/player/ui/weight/GestureView;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/today/player/dkplayer/SimonVideoController;->addControlComponent([Lxyz/doikki/videoplayer/controller/IControlComponent;)V

    .line 199
    invoke-virtual {v0, v4}, Lcom/today/player/dkplayer/SimonVideoController;->setCanChangePosition(Z)V

    .line 200
    invoke-virtual {v0, v1}, Lcom/today/player/dkplayer/SimonVideoController;->setEnableInNormal(Z)V

    .line 201
    invoke-virtual {v0, v1}, Lcom/today/player/dkplayer/SimonVideoController;->setGestureEnabled(Z)V

    .line 202
    iget-object v1, p0, Lcom/today/player/ui/activity/LivePlayActivity;->c:Lxyz/doikki/videoplayer/player/VideoView;

    invoke-virtual {v1, v0}, Lxyz/doikki/videoplayer/player/VideoView;->setVideoController(Lxyz/doikki/videoplayer/controller/BaseVideoController;)V

    .line 204
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->c:Lxyz/doikki/videoplayer/player/VideoView;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lxyz/doikki/videoplayer/player/ProgressManager;

    invoke-virtual {v0, v2}, Lxyz/doikki/videoplayer/player/VideoView;->setProgressManager(Lxyz/doikki/videoplayer/player/ProgressManager;)V

    .line 205
    new-instance v0, Lcom/today/player/ui/adapter/LiveChannelAdapter;

    invoke-direct {v0}, Lcom/today/player/ui/adapter/LiveChannelAdapter;-><init>()V

    iput-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->h:Lcom/today/player/ui/adapter/LiveChannelAdapter;

    .line 206
    iget-object v2, p0, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v2, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 207
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    new-instance v2, Lcom/today/player/ui/activity/LivePlayActivity$1;

    invoke-direct {v2, p0}, Lcom/today/player/ui/activity/LivePlayActivity$1;-><init>(Lcom/today/player/ui/activity/LivePlayActivity;)V

    invoke-virtual {v0, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 217
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->h:Lcom/today/player/ui/adapter/LiveChannelAdapter;

    new-instance v2, Lcom/today/player/ui/activity/LivePlayActivity$2;

    invoke-direct {v2, p0}, Lcom/today/player/ui/activity/LivePlayActivity$2;-><init>(Lcom/today/player/ui/activity/LivePlayActivity;)V

    invoke-virtual {v0, v2}, Lcom/today/player/ui/adapter/LiveChannelAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    const-string v0, "last_live_channel_name"

    const-string v2, ""

    .line 228
    invoke-static {v0, v2}, Lcom/orhanobut/hawk/Hawk;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    iget-object v2, p0, Lcom/today/player/ui/activity/LivePlayActivity;->liveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 230
    iget-object v2, p0, Lcom/today/player/ui/activity/LivePlayActivity;->liveList:Ljava/util/List;

    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/today/player/api/ApiConfig;->getChannelList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 232
    iget-object v2, p0, Lcom/today/player/ui/activity/LivePlayActivity;->liveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v3, 0x1f4

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/today/player/bean/PlayerModel$LiveDTO;

    .line 233
    invoke-virtual {v5}, Lcom/today/player/bean/PlayerModel$LiveDTO;->getChannelName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v5

    .line 236
    :cond_1
    invoke-virtual {v5}, Lcom/today/player/bean/PlayerModel$LiveDTO;->isInternal()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/today/player/bean/PlayerModel$LiveDTO;->isForAdd()Z

    move-result v6

    if-nez v6, :cond_0

    .line 237
    invoke-virtual {v5, v3}, Lcom/today/player/bean/PlayerModel$LiveDTO;->setChannelNum(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 242
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->liveList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/today/player/bean/PlayerModel$LiveDTO;

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->h:Lcom/today/player/ui/adapter/LiveChannelAdapter;

    iget-object v2, p0, Lcom/today/player/ui/activity/LivePlayActivity;->liveList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/today/player/ui/adapter/LiveChannelAdapter;->setNewData(Ljava/util/List;)V

    .line 247
    invoke-virtual {p0, v1, v4}, Lcom/today/player/ui/activity/LivePlayActivity;->a(Lcom/today/player/bean/PlayerModel$LiveDTO;Z)Z

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/today/player/ui/activity/LivePlayActivity;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 338
    :cond_0
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 344
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onDestroy()V

    .line 345
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->c:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->release()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 352
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onPause()V

    .line 353
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->c:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->pause()V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 361
    invoke-super {p0}, Lcom/today/player/base/BaseActivity;->onResume()V

    .line 362
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->c:Lxyz/doikki/videoplayer/player/VideoView;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Lxyz/doikki/videoplayer/player/VideoView;->resume()V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    invoke-virtual {v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/today/player/ui/activity/LivePlayActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/today/player/ui/activity/LivePlayActivity;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/today/player/ui/activity/LivePlayActivity;->f()V

    .line 170
    :cond_0
    invoke-super {p0, p1}, Lcom/today/player/base/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
