.class Lcom/bytedance/sdk/component/b/a/a/b/a$2;
.super Ljava/lang/Object;
.source "NetCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/b/a/a/b/a;->a(Lcom/bytedance/sdk/component/b/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/b/a/c;

.field final synthetic b:Lcom/bytedance/sdk/component/b/a/a/b/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/b/a/a/b/a;Lcom/bytedance/sdk/component/b/a/c;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/bytedance/sdk/component/b/a/a/b/a$2;->b:Lcom/bytedance/sdk/component/b/a/a/b/a;

    iput-object p2, p0, Lcom/bytedance/sdk/component/b/a/a/b/a$2;->a:Lcom/bytedance/sdk/component/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/b/a$2;->b:Lcom/bytedance/sdk/component/b/a/a/b/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/a/b/a;->a()Lcom/bytedance/sdk/component/b/a/m;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/a/b/a$2;->a:Lcom/bytedance/sdk/component/b/a/c;

    iget-object v1, p0, Lcom/bytedance/sdk/component/b/a/a/b/a$2;->b:Lcom/bytedance/sdk/component/b/a/a/b/a;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "response is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/b/a/c;->a(Lcom/bytedance/sdk/component/b/a/b;Ljava/io/IOException;)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/b/a/a/b/a$2;->a:Lcom/bytedance/sdk/component/b/a/c;

    iget-object v2, p0, Lcom/bytedance/sdk/component/b/a/a/b/a$2;->b:Lcom/bytedance/sdk/component/b/a/a/b/a;

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/component/b/a/c;->a(Lcom/bytedance/sdk/component/b/a/b;Lcom/bytedance/sdk/component/b/a/m;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 127
    iget-object v1, p0, Lcom/bytedance/sdk/component/b/a/a/b/a$2;->a:Lcom/bytedance/sdk/component/b/a/c;

    iget-object v2, p0, Lcom/bytedance/sdk/component/b/a/a/b/a$2;->b:Lcom/bytedance/sdk/component/b/a/a/b/a;

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/component/b/a/c;->a(Lcom/bytedance/sdk/component/b/a/b;Ljava/io/IOException;)V

    :goto_0
    return-void
.end method
