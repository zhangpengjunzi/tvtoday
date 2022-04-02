.class final Lcom/bytedance/sdk/openadsdk/core/k/c/a$1;
.super Ljava/util/HashSet;
.source "ResourceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/k/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string v0, "image/jpeg"

    .line 114
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/k/c/a$1;->add(Ljava/lang/Object;)Z

    const-string v0, "image/png"

    .line 115
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/k/c/a$1;->add(Ljava/lang/Object;)Z

    const-string v0, "image/bmp"

    .line 116
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/k/c/a$1;->add(Ljava/lang/Object;)Z

    const-string v0, "image/gif"

    .line 117
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/k/c/a$1;->add(Ljava/lang/Object;)Z

    const-string v0, "image/jpg"

    .line 118
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/k/c/a$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
