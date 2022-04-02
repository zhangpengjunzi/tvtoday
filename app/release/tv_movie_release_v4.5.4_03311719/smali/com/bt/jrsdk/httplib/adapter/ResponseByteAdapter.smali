.class public Lcom/bt/jrsdk/httplib/adapter/ResponseByteAdapter;
.super Ljava/lang/Object;
.source "ResponseByteAdapter.java"

# interfaces
.implements Lcom/bt/jrsdk/httplib/iml/IAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bt/jrsdk/httplib/iml/IAdapter<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dealStream(Ljava/net/HttpURLConnection;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/bt/jrsdk/httplib/iml/ResponseCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 16
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 18
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 21
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    .line 22
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 25
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 27
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-eqz p2, :cond_1

    .line 29
    new-instance v1, Lcom/bt/jrsdk/httplib/adapter/ResponseByteAdapter$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/bt/jrsdk/httplib/adapter/ResponseByteAdapter$1;-><init>(Lcom/bt/jrsdk/httplib/adapter/ResponseByteAdapter;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;[B)V

    invoke-static {v1}, Lcom/bt/jrsdk/httplib/MainThread;->run(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz p1, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception v0

    .line 37
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p2, :cond_2

    .line 39
    new-instance v1, Lcom/bt/jrsdk/httplib/adapter/ResponseByteAdapter$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/bt/jrsdk/httplib/adapter/ResponseByteAdapter$2;-><init>(Lcom/bt/jrsdk/httplib/adapter/ResponseByteAdapter;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;Ljava/io/IOException;)V

    invoke-static {v1}, Lcom/bt/jrsdk/httplib/MainThread;->run(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz p1, :cond_3

    .line 48
    :goto_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-void

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 50
    :cond_4
    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method
