.class final Lcom/bytedance/sdk/component/c/b/a/e/g$b$1;
.super Lcom/bytedance/sdk/component/c/b/a/e/g$b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/c/b/a/e/g$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 908
    invoke-direct {p0}, Lcom/bytedance/sdk/component/c/b/a/e/g$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/c/b/a/e/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 911
    sget-object v0, Lcom/bytedance/sdk/component/c/b/a/e/b;->e:Lcom/bytedance/sdk/component/c/b/a/e/b;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/c/b/a/e/i;->a(Lcom/bytedance/sdk/component/c/b/a/e/b;)V

    return-void
.end method
