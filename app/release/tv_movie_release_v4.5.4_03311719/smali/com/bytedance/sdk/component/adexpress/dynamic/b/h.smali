.class public Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;
.super Ljava/lang/Object;
.source "DynamicLayoutUnit.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V
    .locals 5

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "id"

    const-string v1, "root"

    .line 209
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->b(Ljava/lang/String;)V

    const-string v0, "x"

    const-wide/16 v1, 0x0

    .line 210
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v0, v3

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->c(F)V

    const-string v0, "y"

    .line 211
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v0, v3

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->d(F)V

    const-string v0, "width"

    .line 212
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v0, v3

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->e(F)V

    const-string v0, "height"

    .line 213
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v0, v3

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->f(F)V

    const-string v0, "remainWidth"

    .line 214
    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->g(F)V

    .line 215
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;-><init>()V

    const-string v1, "brick"

    .line 216
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;)V

    .line 217
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;)V

    .line 218
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->b(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V

    const-string p2, "children"

    .line 219
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 220
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-gtz p2, :cond_1

    goto :goto_3

    :cond_1
    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 223
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 224
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 228
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 231
    :cond_3
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 232
    :goto_1
    move-object v3, v1

    check-cast v3, Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 233
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 234
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    invoke-direct {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;-><init>()V

    .line 235
    invoke-static {v3, v4, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V

    .line 236
    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->m:Ljava/lang/String;

    return-object v0
.end method

.method public a(F)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->d:F

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->i:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->j:Ljava/util/List;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->m:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;",
            ">;)V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->j:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(F)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->e:F

    return-void
.end method

.method public b(Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->k:Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;",
            ">;>;)V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->l:Ljava/util/List;

    return-void
.end method

.method public c()F
    .locals 1

    .line 45
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->d:F

    return v0
.end method

.method public c(F)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->b:F

    return-void
.end method

.method public d()F
    .locals 1

    .line 53
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->e:F

    return v0
.end method

.method public d(F)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->c:F

    return-void
.end method

.method public e()F
    .locals 1

    .line 61
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->b:F

    return v0
.end method

.method public e(F)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->f:F

    return-void
.end method

.method public f()F
    .locals 1

    .line 69
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->c:F

    return v0
.end method

.method public f(F)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->g:F

    return-void
.end method

.method public g()F
    .locals 1

    .line 77
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->f:F

    return v0
.end method

.method public g(F)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->h:F

    return-void
.end method

.method public h()F
    .locals 1

    .line 85
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->g:F

    return v0
.end method

.method public i()Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->i:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->j:Ljava/util/List;

    return-object v0
.end method

.method public k()Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->k:Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;

    return-object v0
.end method

.method public l()I
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->i:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->C()I

    move-result v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->D()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public m()I
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->i:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->A()I

    move-result v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->B()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public n()F
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->i:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->l()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->g()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->h()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->d()F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v0, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public o()F
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->i:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->m()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->i()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->f()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->d()F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v0, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;",
            ">;>;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->l:Ljava/util/List;

    return-object v0
.end method

.method public q()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public r()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->l:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 173
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 176
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 177
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_2
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->l:Ljava/util/List;

    :cond_3
    :goto_1
    return-void
.end method

.method public s()Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->i:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->r()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flex"

    .line 187
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->i:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->W()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->i:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->X()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->i:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    .line 244
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->U()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->i:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;->e()Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/b/f;->V()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicLayoutUnit{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", remainWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rootBrick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->i:Lcom/bytedance/sdk/component/adexpress/dynamic/b/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", childrenBrickUnits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/b/h;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
