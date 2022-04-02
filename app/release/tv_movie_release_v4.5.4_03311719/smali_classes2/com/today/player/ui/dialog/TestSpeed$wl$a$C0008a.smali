.class public Lcom/today/player/ui/dialog/TestSpeed$wl$a$C0008a;
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
    name = "C0008a"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/today/player/ui/dialog/TestSpeed$wl$a;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/dialog/TestSpeed$wl$a;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a$C0008a;->this$1:Lcom/today/player/ui/dialog/TestSpeed$wl$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/today/player/ui/dialog/TestSpeed$wl$a$C0008a;->this$1:Lcom/today/player/ui/dialog/TestSpeed$wl$a;

    iget-object v0, v0, Lcom/today/player/ui/dialog/TestSpeed$wl$a;->this$0:Lcom/today/player/ui/dialog/TestSpeed$wl;

    .line 85
    iget-object v1, v0, Lcom/today/player/ui/dialog/TestSpeed$wl;->c:Lcom/today/player/ui/dialog/TestSpeed;

    iget-object v1, v1, Lcom/today/player/ui/dialog/TestSpeed;->c:Lcom/today/player/ui/adapter/TestSpeedAdapter;

    iget v0, v0, Lcom/today/player/ui/dialog/TestSpeed$wl;->b:I

    invoke-virtual {v1, v0}, Lcom/today/player/ui/adapter/TestSpeedAdapter;->notifyItemChanged(I)V

    return-void
.end method
