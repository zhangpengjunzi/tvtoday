.class Lcom/today/player/ui/dialog/RemoteConnect$1;
.super Ljava/lang/Object;
.source "RemoteConnect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/dialog/RemoteConnect;->a(Landroid/content/Context;)Lcom/today/player/ui/dialog/RemoteConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/ui/dialog/RemoteConnect;


# direct methods
.method constructor <init>(Lcom/today/player/ui/dialog/RemoteConnect;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/today/player/ui/dialog/RemoteConnect$1;->this$0:Lcom/today/player/ui/dialog/RemoteConnect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 50
    iget-object p1, p0, Lcom/today/player/ui/dialog/RemoteConnect$1;->this$0:Lcom/today/player/ui/dialog/RemoteConnect;

    invoke-static {p1}, Lcom/today/player/ui/dialog/RemoteConnect;->access$000(Lcom/today/player/ui/dialog/RemoteConnect;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/today/player/ui/dialog/RemoteConnect$1;->this$0:Lcom/today/player/ui/dialog/RemoteConnect;

    invoke-static {p1}, Lcom/today/player/ui/dialog/RemoteConnect;->access$000(Lcom/today/player/ui/dialog/RemoteConnect;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 52
    iget-object p1, p0, Lcom/today/player/ui/dialog/RemoteConnect$1;->this$0:Lcom/today/player/ui/dialog/RemoteConnect;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/today/player/ui/dialog/RemoteConnect;->access$002(Lcom/today/player/ui/dialog/RemoteConnect;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
