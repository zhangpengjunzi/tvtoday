.class Lcom/bytedance/sdk/openadsdk/core/q$4;
.super Lcom/bytedance/sdk/component/f/a/a;
.source "NetApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/q;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/f/o;ILcom/bytedance/sdk/openadsdk/core/p$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/f/b;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/p$a;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic e:I

.field final synthetic f:Lcom/bytedance/sdk/openadsdk/core/f/o;

.field final synthetic g:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic h:J

.field final synthetic i:Lcom/bytedance/sdk/openadsdk/core/q;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/q;Ljava/util/concurrent/atomic/AtomicLong;Lcom/bytedance/sdk/openadsdk/core/f/b;Lcom/bytedance/sdk/openadsdk/core/p$a;Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/core/f/o;Ljava/util/concurrent/atomic/AtomicLong;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q$4;->i:Lcom/bytedance/sdk/openadsdk/core/q;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/q$4;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/q$4;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/q$4;->c:Lcom/bytedance/sdk/openadsdk/core/p$a;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/q$4;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput p6, p0, Lcom/bytedance/sdk/openadsdk/core/q$4;->e:I

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/q$4;->f:Lcom/bytedance/sdk/openadsdk/core/f/o;

    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/core/q$4;->g:Ljava/util/concurrent/atomic/AtomicLong;

    iput-wide p9, p0, Lcom/bytedance/sdk/openadsdk/core/q$4;->h:J

    invoke-direct {p0}, Lcom/bytedance/sdk/component/f/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/f/b/c;Lcom/bytedance/sdk/component/f/b;)V
    .locals 24

    move-object/from16 v1, p0

    const-string v2, "p`ppaZ`fae"

    if-eqz p2, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/f/b;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    :try_start_0
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/f/b;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/j/f;->D()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getDebugLog()I

    move-result v4

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "P`ldh`YCmk\u007flS@aku"

    invoke-static {v6}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->i:Lcom/bytedance/sdk/openadsdk/core/q;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v4, v7}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->i:Lcom/bytedance/sdk/openadsdk/core/q;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->i:Lcom/bytedance/sdk/openadsdk/core/q;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->c:Lcom/bytedance/sdk/openadsdk/core/p$a;

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/core/p$a;Lcom/bytedance/sdk/openadsdk/core/f/b;)V

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->i:Lcom/bytedance/sdk/openadsdk/core/q;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/f/b;->g()J

    move-result-wide v6

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v8

    iget v9, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->e:I

    const/4 v10, 0x0

    const/4 v11, -0x1

    const-string v0, "m`vf$ugu{lUmmdb"

    invoke-static {v0}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v5 .. v12}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/q$a;ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->f:Lcom/bytedance/sdk/openadsdk/core/f/o;

    iget v6, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->e:I

    invoke-static {v0, v3, v4, v6}, Lcom/bytedance/sdk/openadsdk/core/q$a;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/f/o;I)Lcom/bytedance/sdk/openadsdk/core/q$a;

    move-result-object v12

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    iget-object v4, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Ljava/util/ArrayList;)V

    iget-object v3, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/f/a;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/b$a;->a(Lcom/bytedance/sdk/openadsdk/core/f/a;)V

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->i:Lcom/bytedance/sdk/openadsdk/core/q;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->i:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget v3, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->d:I

    const/16 v4, 0x4e20

    if-eq v3, v4, :cond_3

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    iget v3, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->d:I

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/j/f;->o()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->d:I

    const v3, 0x9c5d

    if-ne v0, v3, :cond_2

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->c:Lcom/bytedance/sdk/openadsdk/core/p$a;

    const/16 v3, -0x64

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-interface {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/p$a;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->c:Lcom/bytedance/sdk/openadsdk/core/p$a;

    iget v3, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->d:I

    iget-object v4, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->e:Ljava/lang/String;

    goto :goto_0

    :goto_1
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/b;)V

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->i:Lcom/bytedance/sdk/openadsdk/core/q;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/f/b;->g()J

    move-result-wide v8

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v10

    iget v11, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->e:I

    iget v13, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->d:I

    iget v0, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {v7 .. v14}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/q$a;ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    iget-object v3, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/f/a;

    if-nez v3, :cond_4

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->i:Lcom/bytedance/sdk/openadsdk/core/q;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->c:Lcom/bytedance/sdk/openadsdk/core/p$a;

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/core/p$a;Lcom/bytedance/sdk/openadsdk/core/f/b;)V

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->i:Lcom/bytedance/sdk/openadsdk/core/q;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/f/b;->g()J

    move-result-wide v8

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v10

    iget v11, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->e:I

    const/4 v13, -0x1

    invoke-static {v2}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {v7 .. v14}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/q$a;ILjava/lang/String;)V

    return-void

    :cond_4
    iget-object v3, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/f/a;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/f/a;->c(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->f:Lcom/bytedance/sdk/openadsdk/core/f/o;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->f:Lcom/bytedance/sdk/openadsdk/core/f/o;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/f/o;->i:Lcom/bytedance/sdk/openadsdk/core/f/r;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->f:Lcom/bytedance/sdk/openadsdk/core/f/o;

    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/f/o;->i:Lcom/bytedance/sdk/openadsdk/core/f/r;

    iget-wide v14, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->h:J

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    iget v0, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->a:I

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v19

    move/from16 v18, v0

    invoke-virtual/range {v13 .. v20}, Lcom/bytedance/sdk/openadsdk/core/f/r;->a(JJIJ)V

    :cond_5
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->c:Lcom/bytedance/sdk/openadsdk/core/p$a;

    iget-object v3, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/f/a;

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-interface {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/p$a;->a(Lcom/bytedance/sdk/openadsdk/core/f/a;Lcom/bytedance/sdk/openadsdk/core/f/b;)V

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->i:Lcom/bytedance/sdk/openadsdk/core/q;

    iget-object v3, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/f/a;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/core/f/a;)V

    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/f/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/a;)Ljava/util/Map;

    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/f/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x3

    if-eqz v0, :cond_8

    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/f/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->h:Lcom/bytedance/sdk/openadsdk/core/f/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/a;->b()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/f/n;

    iget v4, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->e:I

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/k/t;->b(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->f:Lcom/bytedance/sdk/openadsdk/core/f/o;

    if-eqz v7, :cond_6

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->f:Lcom/bytedance/sdk/openadsdk/core/f/o;

    iget-wide v7, v7, Lcom/bytedance/sdk/openadsdk/core/f/o;->g:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_6

    const-string v7, "cmkfjqYt|hx\u007fSygbu"

    invoke-static {v7}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->h:J

    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->f:Lcom/bytedance/sdk/openadsdk/core/f/o;

    iget-wide v10, v10, Lcom/bytedance/sdk/openadsdk/core/f/o;->g:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "lncg[qu"

    invoke-static {v7}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->f:Lcom/bytedance/sdk/openadsdk/core/f/o;

    iget-wide v8, v8, Lcom/bytedance/sdk/openadsdk/core/f/o;->g:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "tnvbhZrnel"

    invoke-static {v7}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->f:Lcom/bytedance/sdk/openadsdk/core/f/o;

    iget-wide v10, v10, Lcom/bytedance/sdk/openadsdk/core/f/o;->g:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v7, "rdsvavrX|z"

    invoke-static {v7}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->h:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "s^pfrlebW}y"

    invoke-static {v7}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "s^qfjaYs{"

    invoke-static {v7}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->c:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "c^pfrlebW}y"

    invoke-static {v7}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "c^gm`Zrt"

    invoke-static {v7}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "ndvtkwmX|`gn"

    invoke-static {v7}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/f/b;->g()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "gn]wmhc"

    invoke-static {v7}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->b:J

    iget-wide v10, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->h:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "sdtfvZrnel"

    invoke-static {v7}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget v8, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "b`ah[qojm"

    invoke-static {v7}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    iget-wide v10, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->c:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "cmkfjqYbfmU\u007fe`k"

    invoke-static {v7}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v4, v6}, Lcom/bytedance/sdk/openadsdk/b/e;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->i:Lcom/bytedance/sdk/openadsdk/core/q;

    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->f:Lcom/bytedance/sdk/openadsdk/core/f/o;

    iget-wide v6, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->h:J

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v17

    iget v8, v12, Lcom/bytedance/sdk/openadsdk/core/q$a;->a:I

    iget-object v9, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v20

    move-wide v15, v6

    move/from16 v19, v8

    move-object/from16 v22, v0

    move-object/from16 v23, v4

    invoke-static/range {v13 .. v23}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/core/f/o;JJIJLcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    const/16 v0, 0x63

    goto :goto_3

    :cond_8
    const/16 v0, 0x5c

    const/4 v2, 0x1

    :goto_2
    if-eq v2, v5, :cond_9

    const/4 v4, 0x2

    if-eq v2, v4, :cond_a

    if-eq v2, v3, :cond_c

    goto :goto_3

    :cond_9
    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :goto_3
    :pswitch_0
    const/4 v2, 0x3

    goto :goto_2

    :cond_a
    :goto_4
    :pswitch_1
    return-void

    :catchall_0
    move-exception v0

    const-string v3, "NdvBtlOjxe"

    invoke-static {v3}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gdv#ea&bz{ey6-"

    invoke-static {v4}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->i:Lcom/bytedance/sdk/openadsdk/core/q;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->c:Lcom/bytedance/sdk/openadsdk/core/p$a;

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;Lcom/bytedance/sdk/openadsdk/core/p$a;Lcom/bytedance/sdk/openadsdk/core/f/b;)V

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->i:Lcom/bytedance/sdk/openadsdk/core/q;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/f/b;->g()J

    move-result-wide v6

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v8

    iget v9, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->e:I

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-static {v2}, Lcom/bytedance/sdk/component/e/c/d;->d1648021086425dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v5 .. v12}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/q$a;ILjava/lang/String;)V

    goto :goto_5

    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/f/b;->a()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/f/b;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->c:Lcom/bytedance/sdk/openadsdk/core/p$a;

    invoke-interface {v3, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/p$a;->a(ILjava/lang/String;)V

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(I)V

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/b;)V

    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->i:Lcom/bytedance/sdk/openadsdk/core/q;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/f/b;->g()J

    move-result-wide v14

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v16

    iget v3, v1, Lcom/bytedance/sdk/openadsdk/core/q$4;->e:I

    const/16 v18, 0x0

    move/from16 v17, v3

    move/from16 v19, v0

    move-object/from16 v20, v2

    invoke-static/range {v13 .. v20}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/q$a;ILjava/lang/String;)V

    :cond_c
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/bytedance/sdk/component/f/b/c;Ljava/io/IOException;)V
    .locals 15

    move-object v0, p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/j/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/j/f;->D()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getDebugLog()I

    move-result v1

    if-ne v1, v2, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "P`ldh`YCmk\u007flS@aku"

    invoke-static {v3}, Lcom/bytedance/sdk/component/c/b/a/c;->c1648021086466dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/q$4;->i:Lcom/bytedance/sdk/openadsdk/core/q;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/bytedance/sdk/openadsdk/k/t;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/component/f/b/c;->c()Ljava/util/Map;

    move-result-object v1

    const-string v3, "eyvqeZrnelUxxl|{"

    invoke-static {v3}, Lcom/bytedance/sdk/component/e/c/f;->f1648021086446dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    move-object v14, v1

    const/16 v1, 0x25a

    if-eqz p2, :cond_3

    const-class v7, Ljava/net/SocketTimeoutException;

    invoke-virtual/range {p2 .. p2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/q$4;->c:Lcom/bytedance/sdk/openadsdk/core/p$a;

    invoke-interface {v7, v1, v14}, Lcom/bytedance/sdk/openadsdk/core/p$a;->a(ILjava/lang/String;)V

    :cond_3
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/q$4;->c:Lcom/bytedance/sdk/openadsdk/core/p$a;

    invoke-interface {v7, v1, v14}, Lcom/bytedance/sdk/openadsdk/core/p$a;->a(ILjava/lang/String;)V

    const-string v1, "NdvBtlOjxe"

    invoke-static {v1}, Lcom/bytedance/sdk/component/c/b/a/c;->c1648021086466dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "ooDbmisum3*"

    invoke-static {v9}, Lcom/bytedance/sdk/component/c/b/a/c;->c1648021086466dc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x259

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v2

    invoke-static {v1, v7}, Lcom/bytedance/sdk/component/utils/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/q$4;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(I)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/q$4;->b:Lcom/bytedance/sdk/openadsdk/core/f/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/f/b;->a(Lcom/bytedance/sdk/openadsdk/core/f/b;)V

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/q$4;->i:Lcom/bytedance/sdk/openadsdk/core/q;

    sub-long v8, v5, v3

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/q$4;->d:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v10

    iget v11, v0, Lcom/bytedance/sdk/openadsdk/core/q$4;->e:I

    const/4 v12, 0x0

    const/16 v13, 0x259

    invoke-static/range {v7 .. v14}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/q$a;ILjava/lang/String;)V

    return-void
.end method
