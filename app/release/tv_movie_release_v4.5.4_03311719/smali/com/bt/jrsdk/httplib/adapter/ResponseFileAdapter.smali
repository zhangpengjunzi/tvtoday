.class public Lcom/bt/jrsdk/httplib/adapter/ResponseFileAdapter;
.super Ljava/lang/Object;
.source "ResponseFileAdapter.java"

# interfaces
.implements Lcom/bt/jrsdk/httplib/iml/IAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bt/jrsdk/httplib/iml/IAdapter<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseFileAdapter;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dealStream(Ljava/net/HttpURLConnection;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/bt/jrsdk/httplib/iml/ResponseCallback<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 25
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 28
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    .line 29
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 32
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x800

    new-array v4, v4, [B

    .line 35
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/bt/jrsdk/httplib/adapter/ResponseFileAdapter;->mPath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 37
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 39
    :cond_0
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 42
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    const/4 v7, 0x0

    .line 43
    invoke-virtual {v2, v4, v7, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 44
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    int-to-long v9, v5

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 46
    new-instance v5, Ljava/math/BigDecimal;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-double v7, v7

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    :try_start_1
    invoke-direct {v5, v7, v8}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v7, 0x2

    const/4 v8, 0x4

    invoke-virtual {v5, v7, v8}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->doubleValue()D

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 52
    new-instance v0, Lcom/bt/jrsdk/httplib/adapter/ResponseFileAdapter$1;

    invoke-direct {v0, p0, p2, v6}, Lcom/bt/jrsdk/httplib/adapter/ResponseFileAdapter$1;-><init>(Lcom/bt/jrsdk/httplib/adapter/ResponseFileAdapter;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;Ljava/io/File;)V

    invoke-static {v0}, Lcom/bt/jrsdk/httplib/MainThread;->run(Ljava/lang/Runnable;)V

    .line 59
    :cond_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 60
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception v0

    .line 62
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p2, :cond_3

    .line 64
    new-instance v1, Lcom/bt/jrsdk/httplib/adapter/ResponseFileAdapter$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/bt/jrsdk/httplib/adapter/ResponseFileAdapter$2;-><init>(Lcom/bt/jrsdk/httplib/adapter/ResponseFileAdapter;Lcom/bt/jrsdk/httplib/iml/ResponseCallback;Ljava/io/IOException;)V

    invoke-static {v1}, Lcom/bt/jrsdk/httplib/MainThread;->run(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    if-eqz p1, :cond_4

    .line 73
    :goto_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-void

    :goto_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 75
    :cond_5
    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
.end method
