.class public Lcom/bytedance/sdk/component/adexpress/b/l;
.super Ljava/lang/Object;
.source "RenderRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/adexpress/b/l$a;
    }
.end annotation


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Ljava/lang/String;

.field private c:Lcom/bytedance/sdk/component/adexpress/b/h;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:J

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/b/l$a;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->a(Lcom/bytedance/sdk/component/adexpress/b/l$a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->a:Lorg/json/JSONObject;

    .line 40
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->b(Lcom/bytedance/sdk/component/adexpress/b/l$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->b:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->c(Lcom/bytedance/sdk/component/adexpress/b/l$a;)Lcom/bytedance/sdk/component/adexpress/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->c:Lcom/bytedance/sdk/component/adexpress/b/h;

    .line 42
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->d(Lcom/bytedance/sdk/component/adexpress/b/l$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->d:I

    .line 43
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->e(Lcom/bytedance/sdk/component/adexpress/b/l$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->e:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->f(Lcom/bytedance/sdk/component/adexpress/b/l$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->f:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->g(Lcom/bytedance/sdk/component/adexpress/b/l$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->g:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->h(Lcom/bytedance/sdk/component/adexpress/b/l$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->h:Z

    .line 47
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->i(Lcom/bytedance/sdk/component/adexpress/b/l$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->i:I

    .line 48
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->j(Lcom/bytedance/sdk/component/adexpress/b/l$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->j:J

    .line 49
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->k(Lcom/bytedance/sdk/component/adexpress/b/l$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->k:I

    .line 50
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->l(Lcom/bytedance/sdk/component/adexpress/b/l$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->l:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->m(Lcom/bytedance/sdk/component/adexpress/b/l$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->m:Ljava/util/Map;

    .line 52
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->n(Lcom/bytedance/sdk/component/adexpress/b/l$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->n:I

    .line 53
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->o(Lcom/bytedance/sdk/component/adexpress/b/l$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->o:Z

    .line 54
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->p(Lcom/bytedance/sdk/component/adexpress/b/l$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->p:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->q(Lcom/bytedance/sdk/component/adexpress/b/l$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->q:I

    .line 56
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->r(Lcom/bytedance/sdk/component/adexpress/b/l$a;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->r:I

    .line 57
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/b/l$a;->s(Lcom/bytedance/sdk/component/adexpress/b/l$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/bytedance/sdk/component/adexpress/b/h;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->c:Lcom/bytedance/sdk/component/adexpress/b/h;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->d:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->h:Z

    return v0
.end method

.method public i()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->i:I

    return v0
.end method

.method public j()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->j:J

    return-wide v0
.end method

.method public k()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->k:I

    return v0
.end method

.method public l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->m:Ljava/util/Map;

    return-object v0
.end method

.method public m()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->n:I

    return v0
.end method

.method public n()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->o:Z

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->p:Ljava/lang/String;

    return-object v0
.end method

.method public p()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->q:I

    return v0
.end method

.method public q()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->r:I

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/b/l;->s:Ljava/lang/String;

    return-object v0
.end method
