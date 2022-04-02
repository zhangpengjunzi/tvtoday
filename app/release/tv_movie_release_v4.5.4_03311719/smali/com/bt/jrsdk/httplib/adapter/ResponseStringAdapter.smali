.class public Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter;
.super Ljava/lang/Object;
.source "ResponseStringAdapter.java"

# interfaces
.implements Lcom/bt/jrsdk/httplib/iml/IAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bt/jrsdk/httplib/iml/IAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dealStream(Ljava/net/HttpURLConnection;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/bt/jrsdk/httplib/iml/ResponseCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 18
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 20
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 25
    new-instance v3, Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter$1;

    invoke-direct {v3, p0, p2, v2}, Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter$1;-><init>(Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;Ljava/lang/StringBuffer;)V

    invoke-static {v3}, Lcom/bt/jrsdk/httplib/MainThread;->run(Ljava/lang/Runnable;)V

    .line 32
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 33
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception v0

    .line 35
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p2, :cond_2

    .line 37
    new-instance v1, Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter$2;-><init>(Lcom/bt/jrsdk/httplib/adapter/ResponseStringAdapter;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;Ljava/io/IOException;)V

    invoke-static {v1}, Lcom/bt/jrsdk/httplib/MainThread;->run(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz p1, :cond_3

    .line 46
    :goto_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    return-void

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 48
    :cond_4
    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method
