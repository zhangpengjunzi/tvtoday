.class public Lcom/today/player/ui/dialog/TestSpeed$wl$a$b;
.super Ljava/lang/Object;
.source "TestSpeed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/dialog/TestSpeed$wl$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/today/player/ui/dialog/TestSpeed$wl$a;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/dialog/TestSpeed$wl$a;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a$b;->this$1:Lcom/today/player/ui/dialog/TestSpeed$wl$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a$b;->this$1:Lcom/today/player/ui/dialog/TestSpeed$wl$a;

    iget-object v0, v0, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->this$0:Lcom/today/player/ui/dialog/TestSpeed$wl;

    iget-object v0, v0, Lcom/today/player/ui/dialog/TestSpeed$wl;->c:Lcom/today/player/ui/dialog/TestSpeed;

    iget-object v0, v0, Lcom/today/player/ui/dialog/TestSpeed;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 95
    iget-object v0, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a$b;->this$1:Lcom/today/player/ui/dialog/TestSpeed$wl$a;

    iget-object v0, v0, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->this$0:Lcom/today/player/ui/dialog/TestSpeed$wl;

    iget-object v0, v0, Lcom/today/player/ui/dialog/TestSpeed$wl;->c:Lcom/today/player/ui/dialog/TestSpeed;

    iget-object v0, v0, Lcom/today/player/ui/dialog/TestSpeed;->c:Lcom/today/player/ui/adapter/TestSpeedAdapter;

    invoke-virtual {v0}, Lcom/today/player/ui/adapter/TestSpeedAdapter;->notifyDataSetChanged()V

    .line 96
    iget-object v0, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a$b;->this$1:Lcom/today/player/ui/dialog/TestSpeed$wl$a;

    iget-object v0, v0, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->this$0:Lcom/today/player/ui/dialog/TestSpeed$wl;

    iget-object v0, v0, Lcom/today/player/ui/dialog/TestSpeed$wl;->c:Lcom/today/player/ui/dialog/TestSpeed;

    iget-object v0, v0, Lcom/today/player/ui/dialog/TestSpeed;->d:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    return-void
.end method
