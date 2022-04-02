.class public Lcom/today/player/ui/activity/PlayActivity$a;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Lcom/today/player/dkplayer/VideoAnalysis$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/activity/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/activity/PlayActivity;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/activity/PlayActivity;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/today/player/ui/activity/PlayActivity$a;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$a;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-virtual {v0}, Lcom/today/player/ui/activity/PlayActivity;->f()V

    .line 334
    iget-object v0, p0, Lcom/today/player/ui/activity/PlayActivity$a;->this$0:Lcom/today/player/ui/activity/PlayActivity;

    invoke-virtual {v0}, Lcom/today/player/ui/activity/PlayActivity;->finish()V

    return-void
.end method
