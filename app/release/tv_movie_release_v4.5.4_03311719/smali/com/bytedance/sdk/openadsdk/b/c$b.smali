.class Lcom/bytedance/sdk/openadsdk/b/c$b;
.super Lcom/bytedance/sdk/openadsdk/b/c;
.source "AdEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/b/c<",
        "Lcom/bytedance/sdk/openadsdk/g/c/c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/b/c$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/b/c;-><init>()V

    return-void
.end method

.method public static e()Lcom/bytedance/sdk/openadsdk/b/c$b;
    .locals 2

    .line 146
    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/c$b;->a:Lcom/bytedance/sdk/openadsdk/b/c$b;

    if-nez v0, :cond_1

    .line 147
    const-class v0, Lcom/bytedance/sdk/openadsdk/b/c$b;

    monitor-enter v0

    .line 148
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/b/c$b;->a:Lcom/bytedance/sdk/openadsdk/b/c$b;

    if-nez v1, :cond_0

    .line 149
    new-instance v1, Lcom/bytedance/sdk/openadsdk/b/c$b;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/b/c$b;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/b/c$b;->a:Lcom/bytedance/sdk/openadsdk/b/c$b;

    .line 151
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 153
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/b/c$b;->a:Lcom/bytedance/sdk/openadsdk/b/c$b;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 0

    monitor-enter p0

    .line 163
    monitor-exit p0

    return-void
.end method

.method public bridge synthetic a(Lcom/bytedance/sdk/openadsdk/b/k;)V
    .locals 0

    .line 142
    check-cast p1, Lcom/bytedance/sdk/openadsdk/g/c/c$a;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/b/c$b;->a(Lcom/bytedance/sdk/openadsdk/g/c/c$a;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/g/c/c$a;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
