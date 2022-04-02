.class public Lcom/today/player/dkplayer/VideoAnalysis$l;
.super Landroid/webkit/WebViewClient;
.source "VideoAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/dkplayer/VideoAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/dkplayer/VideoAnalysis$l$a;
    }
.end annotation


# instance fields
.field public a:Lcom/today/player/dkplayer/VideoAnalysis$play;

.field final synthetic this$0:Lcom/today/player/dkplayer/VideoAnalysis;


# direct methods
.method public constructor <init>(Lcom/today/player/dkplayer/VideoAnalysis;Lcom/today/player/dkplayer/VideoAnalysis$play;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis$l;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 271
    iput-object p2, p0, Lcom/today/player/dkplayer/VideoAnalysis$l;->a:Lcom/today/player/dkplayer/VideoAnalysis$play;

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 275
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 279
    iget-object p1, p0, Lcom/today/player/dkplayer/VideoAnalysis$l;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    invoke-static {p1}, Lcom/today/player/dkplayer/VideoAnalysis;->access$200(Lcom/today/player/dkplayer/VideoAnalysis;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 280
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/today/player/dkplayer/VideoAnalysis$l;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    invoke-static {p3}, Lcom/today/player/dkplayer/VideoAnalysis;->access$200(Lcom/today/player/dkplayer/VideoAnalysis;)Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p3, "SSL\u8bc1\u4e66\u9a8c\u8bc1\u5931\u8d25"

    .line 281
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 282
    new-instance p3, Lcom/today/player/dkplayer/VideoAnalysis$l$1;

    invoke-direct {p3, p0, p2}, Lcom/today/player/dkplayer/VideoAnalysis$l$1;-><init>(Lcom/today/player/dkplayer/VideoAnalysis$l;Landroid/webkit/SslErrorHandler;)V

    const-string v0, "continue"

    invoke-virtual {p1, v0, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 288
    new-instance p3, Lcom/today/player/dkplayer/VideoAnalysis$l$2;

    invoke-direct {p3, p0, p2}, Lcom/today/player/dkplayer/VideoAnalysis$l$2;-><init>(Lcom/today/player/dkplayer/VideoAnalysis$l;Landroid/webkit/SslErrorHandler;)V

    const-string p2, "cancel"

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2

    const-string v0, "url"

    .line 299
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/favicon.ico"

    .line 300
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    new-instance p1, Landroid/webkit/WebResourceResponse;

    const/4 p2, 0x0

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    check-cast p2, Ljava/io/InputStream;

    const-string v1, "image/png"

    invoke-direct {p1, v1, v0, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis$l;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    iget-boolean v0, v0, Lcom/today/player/dkplayer/VideoAnalysis;->f38j:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/today/player/dkplayer/om;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis$l;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/today/player/dkplayer/VideoAnalysis;->f38j:Z

    .line 305
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis$l;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    iget-object v0, v0, Lcom/today/player/dkplayer/VideoAnalysis;->i:Landroid/os/Handler;

    new-instance v1, Lcom/today/player/dkplayer/VideoAnalysis$l$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/today/player/dkplayer/VideoAnalysis$l$a;-><init>(Lcom/today/player/dkplayer/VideoAnalysis$l;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/today/player/dkplayer/VideoAnalysis$l;->this$0:Lcom/today/player/dkplayer/VideoAnalysis;

    iget-boolean v0, v0, Lcom/today/player/dkplayer/VideoAnalysis;->f38j:Z

    if-eqz v0, :cond_2

    .line 308
    new-instance p1, Landroid/webkit/WebResourceResponse;

    new-instance p2, Ljava/io/ByteArrayInputStream;

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v0, "text/plain"

    const-string v1, "utf-8"

    invoke-direct {p1, v0, v1, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    .line 310
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
