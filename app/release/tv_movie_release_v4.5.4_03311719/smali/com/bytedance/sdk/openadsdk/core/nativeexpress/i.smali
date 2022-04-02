.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;
.super Ljava/lang/Object;
.source "ExpressRenderEventMonitor.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/b/h;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/b/u;

.field private b:Ljava/lang/String;

.field private c:Lcom/bytedance/sdk/openadsdk/core/f/n;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/b/u;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    .line 29
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->d:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Lcom/bytedance/sdk/openadsdk/core/f/n;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/u;->a()V

    const-string v0, "ExpressRenderEvent"

    const-string v1, "start render "

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/b/u;->a(I)V

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(ILjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    const-string p1, "ExpressRenderEvent"

    const-string v0, "WebView render fail"

    .line 64
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(IIZ)V
    .locals 2

    const-string v0, "ExpressRenderEvent"

    const-string v1, "dynamic fail"

    .line 142
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 144
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/b/u;->a(Z)V

    :cond_0
    const/4 p3, 0x3

    if-ne p1, p3, :cond_1

    .line 147
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    const-string p3, "dynamic_render2_error"

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/b/u;->b(ILjava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    const-string p3, "dynamic_render_error"

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/b/u;->b(ILjava/lang/String;)V

    .line 152
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->b:Ljava/lang/String;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->c:Lcom/bytedance/sdk/openadsdk/core/f/n;

    invoke-static {p2, p1, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/h;->a(ILjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/b/u;->b(I)V

    const-string p1, "ExpressRenderEvent"

    const-string v0, "webview start request"

    .line 45
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "ExpressRenderEvent"

    const-string v1, "WebView start load"

    .line 50
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .locals 2

    const-string v0, "ExpressRenderEvent"

    const-string v1, "dynamic start render"

    .line 69
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->e:J

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 72
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    const-string v0, "dynamic_render2_start"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/b/u;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    const-string v0, "dynamic_render_start"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/b/u;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "ExpressRenderEvent"

    const-string v1, "webview render success"

    .line 55
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/u;->b()V

    return-void
.end method

.method public c(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 82
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    const-string v0, "dynamic_sub_analysis2_start"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/b/u;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    const-string v0, "dynamic_sub_analysis_start"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/b/u;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "ExpressRenderEvent"

    const-string v1, "native render start"

    .line 157
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/u;->c()V

    return-void
.end method

.method public d(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 92
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    const-string v0, "dynamic_sub_analysis2_end"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/b/u;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    const-string v0, "dynamic_sub_analysis_end"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/b/u;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    const-string v0, "ExpressRenderEvent"

    const-string v1, "native success"

    .line 163
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/b/u;->a(Z)V

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/u;->n()V

    .line 167
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;

    const-string v1, "native_success"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/g/e;->b(Lcom/bytedance/sdk/component/g/g;)V

    return-void
.end method

.method public e(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 101
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    const-string v0, "dynamic_sub_render2_start"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/b/u;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    const-string v0, "dynamic_sub_render_start"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/b/u;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "ExpressRenderEvent"

    const-string v1, "no native render"

    .line 179
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/u;->o()V

    return-void
.end method

.method public f(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 110
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    const-string v0, "dynamic_sub_render2_end"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/b/u;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    const-string v0, "dynamic_sub_render_end"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/b/u;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "ExpressRenderEvent"

    const-string v1, "render fail"

    .line 185
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/u;->p()V

    return-void
.end method

.method public g(I)V
    .locals 5

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->f:J

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dynamic render success render type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; ****cost time(ms): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->f:J

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->e:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExpressRenderEvent"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 123
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    const-string v0, "dynamic_render2_success"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/b/u;->e(Ljava/lang/String;)V

    const-string p1, "dynamic2_render"

    goto :goto_0

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    const-string v0, "dynamic_render_success"

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/b/u;->e(Ljava/lang/String;)V

    const-string p1, "dynamic_backup_native_render"

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/b/u;->a(Z)V

    .line 131
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;

    const-string v1, "dynamic_success"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/g/e;->b(Lcom/bytedance/sdk/component/g/g;)V

    return-void
.end method

.method public h()V
    .locals 2

    const-string v0, "ExpressRenderEvent"

    const-string v1, "render success"

    .line 190
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/u;->b()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/u;->l()V

    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/i;->a:Lcom/bytedance/sdk/openadsdk/b/u;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/b/u;->m()V

    return-void
.end method
