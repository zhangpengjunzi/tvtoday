.class public Lcom/bytedance/sdk/openadsdk/core/j/a;
.super Ljava/lang/Object;
.source "AdSlotSetter.java"


# instance fields
.field public A:I

.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:Z

.field public u:I

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->b:I

    .line 28
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->c:I

    const/4 v1, 0x2

    .line 29
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->d:I

    .line 30
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->e:I

    const/16 v2, 0x64

    .line 32
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->f:I

    const/4 v2, 0x0

    .line 33
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->g:I

    .line 34
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->h:I

    .line 35
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->i:I

    const/4 v3, 0x3

    .line 36
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->j:I

    const/4 v3, -0x1

    .line 37
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->k:I

    .line 38
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->l:I

    .line 39
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->m:I

    .line 40
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->n:I

    const/16 v0, 0x5dc

    .line 41
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->o:I

    .line 42
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->p:I

    .line 43
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->q:I

    .line 44
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->r:I

    const/4 v0, 0x5

    .line 45
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->s:I

    .line 46
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->t:Z

    .line 47
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->u:I

    .line 49
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->w:I

    .line 50
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->x:I

    .line 51
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->y:I

    .line 52
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->z:I

    .line 53
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->A:I

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 1

    .line 19
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/j/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/j/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 56
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->x:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lorg/json/JSONArray;)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 3

    if-eqz p1, :cond_1

    .line 167
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 170
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->v:Ljava/util/List;

    const/4 v0, 0x0

    .line 172
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->v:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-object p0
.end method

.method public a(Z)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 186
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->t:Z

    return-object p0
.end method

.method public b(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 61
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->r:I

    return-object p0
.end method

.method public c(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 66
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->u:I

    return-object p0
.end method

.method public d(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 71
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->q:I

    return-object p0
.end method

.method public e(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 76
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->n:I

    return-object p0
.end method

.method public f(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 81
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->o:I

    return-object p0
.end method

.method public g(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 86
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->p:I

    return-object p0
.end method

.method public h(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 91
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->l:I

    return-object p0
.end method

.method public i(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 96
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->k:I

    return-object p0
.end method

.method public j(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 101
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->j:I

    return-object p0
.end method

.method public k(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 111
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->b:I

    return-object p0
.end method

.method public l(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 116
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->c:I

    return-object p0
.end method

.method public m(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 121
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->d:I

    return-object p0
.end method

.method public n(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 126
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->e:I

    return-object p0
.end method

.method public o(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 136
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->f:I

    return-object p0
.end method

.method public p(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 141
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->g:I

    return-object p0
.end method

.method public q(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 146
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->h:I

    return-object p0
.end method

.method public r(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 151
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->i:I

    return-object p0
.end method

.method public s(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 156
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->m:I

    return-object p0
.end method

.method public t(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 161
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->w:I

    return-object p0
.end method

.method public u(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 181
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->s:I

    return-object p0
.end method

.method public v(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 191
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->y:I

    return-object p0
.end method

.method public w(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 196
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->z:I

    return-object p0
.end method

.method public x(I)Lcom/bytedance/sdk/openadsdk/core/j/a;
    .locals 0

    .line 201
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/j/a;->A:I

    return-object p0
.end method
