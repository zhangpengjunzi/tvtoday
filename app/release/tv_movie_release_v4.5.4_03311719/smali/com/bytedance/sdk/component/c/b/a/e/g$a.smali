.class public Lcom/bytedance/sdk/component/c/b/a/e/g$a;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/c/b/a/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/net/Socket;

.field b:Ljava/lang/String;

.field c:Lcom/bytedance/sdk/component/c/a/e;

.field d:Lcom/bytedance/sdk/component/c/a/d;

.field e:Lcom/bytedance/sdk/component/c/b/a/e/g$b;

.field f:Lcom/bytedance/sdk/component/c/b/a/e/m;

.field g:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    sget-object v0, Lcom/bytedance/sdk/component/c/b/a/e/g$b;->f:Lcom/bytedance/sdk/component/c/b/a/e/g$b;

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g$a;->e:Lcom/bytedance/sdk/component/c/b/a/e/g$b;

    .line 535
    sget-object v0, Lcom/bytedance/sdk/component/c/b/a/e/m;->a:Lcom/bytedance/sdk/component/c/b/a/e/m;

    iput-object v0, p0, Lcom/bytedance/sdk/component/c/b/a/e/g$a;->f:Lcom/bytedance/sdk/component/c/b/a/e/m;

    .line 543
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g$a;->g:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/c/b/a/e/g$b;)Lcom/bytedance/sdk/component/c/b/a/e/g$a;
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g$a;->e:Lcom/bytedance/sdk/component/c/b/a/e/g$b;

    return-object p0
.end method

.method public a(Ljava/net/Socket;Ljava/lang/String;Lcom/bytedance/sdk/component/c/a/e;Lcom/bytedance/sdk/component/c/a/d;)Lcom/bytedance/sdk/component/c/b/a/e/g$a;
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/bytedance/sdk/component/c/b/a/e/g$a;->a:Ljava/net/Socket;

    .line 554
    iput-object p2, p0, Lcom/bytedance/sdk/component/c/b/a/e/g$a;->b:Ljava/lang/String;

    .line 555
    iput-object p3, p0, Lcom/bytedance/sdk/component/c/b/a/e/g$a;->c:Lcom/bytedance/sdk/component/c/a/e;

    .line 556
    iput-object p4, p0, Lcom/bytedance/sdk/component/c/b/a/e/g$a;->d:Lcom/bytedance/sdk/component/c/a/d;

    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/component/c/b/a/e/g;
    .locals 1

    .line 571
    new-instance v0, Lcom/bytedance/sdk/component/c/b/a/e/g;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/c/b/a/e/g;-><init>(Lcom/bytedance/sdk/component/c/b/a/e/g$a;)V

    return-object v0
.end method
