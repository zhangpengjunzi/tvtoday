.class public Lcom/bt/jrsdk/httplib/adapter/ResponseBMPAdapter;
.super Ljava/lang/Object;
.source "ResponseBMPAdapter.java"

# interfaces
.implements Lcom/bt/jrsdk/httplib/iml/IAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bt/jrsdk/httplib/iml/IAdapter<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field map:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseBMPAdapter;->map:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public dealStream(Ljava/net/HttpURLConnection;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/bt/jrsdk/httplib/iml/ResponseCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 21
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseBMPAdapter;->map:Landroid/graphics/Bitmap;

    .line 23
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    if-eqz p2, :cond_0

    .line 26
    new-instance v0, Lcom/bt/jrsdk/httplib/adapter/ResponseBMPAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/bt/jrsdk/httplib/adapter/ResponseBMPAdapter$1;-><init>(Lcom/bt/jrsdk/httplib/adapter/ResponseBMPAdapter;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V

    invoke-static {v0}, Lcom/bt/jrsdk/httplib/MainThread;->run(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 34
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p2, :cond_1

    .line 36
    new-instance v1, Lcom/bt/jrsdk/httplib/adapter/ResponseBMPAdapter$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/bt/jrsdk/httplib/adapter/ResponseBMPAdapter$2;-><init>(Lcom/bt/jrsdk/httplib/adapter/ResponseBMPAdapter;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;Ljava/io/IOException;)V

    invoke-static {v1}, Lcom/bt/jrsdk/httplib/MainThread;->run(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz p1, :cond_2

    .line 45
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-void

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 47
    :cond_3
    throw p2
.end method
