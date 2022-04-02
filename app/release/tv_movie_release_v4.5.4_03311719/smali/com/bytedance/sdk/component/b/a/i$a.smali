.class public final Lcom/bytedance/sdk/component/b/a/i$a;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/b/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/b/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public b:J

.field public c:Ljava/util/concurrent/TimeUnit;

.field public d:J

.field public e:Ljava/util/concurrent/TimeUnit;

.field public f:J

.field public g:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/b/a/i$a;->a:Ljava/util/List;

    const-wide/16 v0, 0x2710

    .line 36
    iput-wide v0, p0, Lcom/bytedance/sdk/component/b/a/i$a;->b:J

    .line 37
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v2, p0, Lcom/bytedance/sdk/component/b/a/i$a;->c:Ljava/util/concurrent/TimeUnit;

    .line 38
    iput-wide v0, p0, Lcom/bytedance/sdk/component/b/a/i$a;->d:J

    .line 39
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v2, p0, Lcom/bytedance/sdk/component/b/a/i$a;->e:Ljava/util/concurrent/TimeUnit;

    .line 40
    iput-wide v0, p0, Lcom/bytedance/sdk/component/b/a/i$a;->f:J

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/b/a/i$a;->g:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/b/a/i;)V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/b/a/i$a;->a:Ljava/util/List;

    const-wide/16 v0, 0x2710

    .line 36
    iput-wide v0, p0, Lcom/bytedance/sdk/component/b/a/i$a;->b:J

    .line 37
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v2, p0, Lcom/bytedance/sdk/component/b/a/i$a;->c:Ljava/util/concurrent/TimeUnit;

    .line 38
    iput-wide v0, p0, Lcom/bytedance/sdk/component/b/a/i$a;->d:J

    .line 39
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v2, p0, Lcom/bytedance/sdk/component/b/a/i$a;->e:Ljava/util/concurrent/TimeUnit;

    .line 40
    iput-wide v0, p0, Lcom/bytedance/sdk/component/b/a/i$a;->f:J

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/b/a/i$a;->g:Ljava/util/concurrent/TimeUnit;

    .line 48
    iget-wide v0, p1, Lcom/bytedance/sdk/component/b/a/i;->b:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/b/a/i$a;->b:J

    .line 49
    iget-object v0, p1, Lcom/bytedance/sdk/component/b/a/i;->c:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/b/a/i$a;->c:Ljava/util/concurrent/TimeUnit;

    .line 50
    iget-wide v0, p1, Lcom/bytedance/sdk/component/b/a/i;->d:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/b/a/i$a;->d:J

    .line 51
    iget-object v0, p1, Lcom/bytedance/sdk/component/b/a/i;->e:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/b/a/i$a;->e:Ljava/util/concurrent/TimeUnit;

    .line 52
    iget-wide v0, p1, Lcom/bytedance/sdk/component/b/a/i;->f:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/b/a/i$a;->f:J

    .line 53
    iget-object p1, p1, Lcom/bytedance/sdk/component/b/a/i;->g:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/bytedance/sdk/component/b/a/i$a;->g:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/b/a/i$a;
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/bytedance/sdk/component/b/a/i$a;->b:J

    .line 58
    iput-object p3, p0, Lcom/bytedance/sdk/component/b/a/i$a;->c:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/component/b/a/g;)Lcom/bytedance/sdk/component/b/a/i$a;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/component/b/a/i$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/component/b/a/i;
    .locals 1

    .line 80
    invoke-static {p0}, Lcom/bytedance/sdk/component/b/a/a/a;->a(Lcom/bytedance/sdk/component/b/a/i$a;)Lcom/bytedance/sdk/component/b/a/i;

    move-result-object v0

    return-object v0
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/b/a/i$a;
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/bytedance/sdk/component/b/a/i$a;->d:J

    .line 64
    iput-object p3, p0, Lcom/bytedance/sdk/component/b/a/i$a;->e:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public c(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/b/a/i$a;
    .locals 0

    .line 69
    iput-wide p1, p0, Lcom/bytedance/sdk/component/b/a/i$a;->f:J

    .line 70
    iput-object p3, p0, Lcom/bytedance/sdk/component/b/a/i$a;->g:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method
