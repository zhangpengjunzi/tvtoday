.class Lcom/bytedance/sdk/openadsdk/b/p$a;
.super Ljava/lang/Object;
.source "OpenAppSuccEvent.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public c:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/p$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 144
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/p$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/f/n;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/p$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 144
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/p$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 157
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/b/p$a;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    .line 158
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/b/p$a;->d:Ljava/lang/String;

    .line 159
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/b/p$a;->e:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/b/p$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/f/n;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/b/p$a;"
        }
    .end annotation

    .line 150
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/p$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/b/p$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/p$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/b/p$a;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/p$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object p0
.end method

.method public b()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/p$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public run()V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/p$a;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/p$a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/b/p$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "dpl_success"

    goto :goto_0

    :cond_1
    const-string v0, "dpl_failed"

    .line 184
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/b/p$a;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/b/p$a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/b/p$a;->e:Ljava/util/Map;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/b/e;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_2
    :goto_1
    const-string v0, "materialMeta or eventTag is null, pls check"

    .line 179
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/l;->a(Ljava/lang/String;)V

    return-void
.end method
