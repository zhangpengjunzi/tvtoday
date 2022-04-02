.class Lcom/bt/jrsdk/httplib/adapter/ResponseBMPAdapter$1;
.super Ljava/lang/Object;
.source "ResponseBMPAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bt/jrsdk/httplib/adapter/ResponseBMPAdapter;->dealStream(Ljava/net/HttpURLConnection;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/jrsdk/httplib/adapter/ResponseBMPAdapter;

.field final synthetic val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;


# direct methods
.method constructor <init>(Lcom/bt/jrsdk/httplib/adapter/ResponseBMPAdapter;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseBMPAdapter$1;->this$0:Lcom/bt/jrsdk/httplib/adapter/ResponseBMPAdapter;

    iput-object p2, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseBMPAdapter$1;->val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseBMPAdapter$1;->val$callback:Lcom/bt/jrsdk/httplib/iml/ResponseCallback;

    iget-object v1, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseBMPAdapter$1;->this$0:Lcom/bt/jrsdk/httplib/adapter/ResponseBMPAdapter;

    iget-object v1, v1, Lcom/bt/jrsdk/httplib/adapter/ResponseBMPAdapter;->map:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bt/jrsdk/httplib/iml/ResponseCallback;->success(Ljava/lang/Object;)V

    return-void
.end method
