.class Lcom/upa/source/VideoSource$1;
.super Ljava/lang/Object;
.source "VideoSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upa/source/VideoSource;->httpByte(Ljava/lang/String;Lcom/upa/source/ISourceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upa/source/VideoSource;

.field final synthetic val$listener:Lcom/upa/source/ISourceListener;


# direct methods
.method constructor <init>(Lcom/upa/source/VideoSource;Lcom/upa/source/ISourceListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/upa/source/VideoSource$1;->this$0:Lcom/upa/source/VideoSource;

    iput-object p2, p0, Lcom/upa/source/VideoSource$1;->val$listener:Lcom/upa/source/ISourceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 74
    invoke-static {}, Lcom/today/player/base/App;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "tv_source_file_name"

    const-string v2, "tv_source_local_data"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/upa/source/PreferencesUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "https://lfqdy.oss-cn-hongkong.aliyuncs.com/lfqdyapp/gp/tvsgp2"

    if-eqz v2, :cond_0

    .line 76
    iget-object v0, p0, Lcom/upa/source/VideoSource$1;->this$0:Lcom/upa/source/VideoSource;

    iget-object v1, p0, Lcom/upa/source/VideoSource$1;->val$listener:Lcom/upa/source/ISourceListener;

    invoke-virtual {v0, v4, v1}, Lcom/upa/source/VideoSource;->request(Ljava/lang/String;Lcom/upa/source/ISourceListener;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {}, Lcom/today/player/base/App;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string v5, "tv_source_net_md5"

    invoke-static {v2, v1, v5, v3}, Lcom/upa/source/PreferencesUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {}, Lcom/today/player/base/App;->getInstance()Landroid/app/Application;

    move-result-object v5

    const-string v6, "tv_source_local_md5"

    invoke-static {v5, v1, v6, v3}, Lcom/upa/source/PreferencesUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/upa/source/VideoSource$1;->this$0:Lcom/upa/source/VideoSource;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/upa/source/VideoSource;->access$002(Lcom/upa/source/VideoSource;[B)[B

    .line 84
    iget-object v0, p0, Lcom/upa/source/VideoSource$1;->val$listener:Lcom/upa/source/ISourceListener;

    iget-object v1, p0, Lcom/upa/source/VideoSource$1;->this$0:Lcom/upa/source/VideoSource;

    invoke-static {v1}, Lcom/upa/source/VideoSource;->access$000(Lcom/upa/source/VideoSource;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/upa/source/ISourceListener;->getSourceSuccess([B)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/upa/source/VideoSource$1;->this$0:Lcom/upa/source/VideoSource;

    iget-object v1, p0, Lcom/upa/source/VideoSource$1;->val$listener:Lcom/upa/source/ISourceListener;

    invoke-virtual {v0, v4, v1}, Lcom/upa/source/VideoSource;->request(Ljava/lang/String;Lcom/upa/source/ISourceListener;)V

    :goto_0
    return-void
.end method
