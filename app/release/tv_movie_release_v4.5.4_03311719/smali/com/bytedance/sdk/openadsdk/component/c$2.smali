.class Lcom/bytedance/sdk/openadsdk/component/c$2;
.super Lcom/bytedance/sdk/component/g/g;
.source "TTAppOpenAdLoadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/c;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/c;Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/c$2;->a:Lcom/bytedance/sdk/openadsdk/component/c;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/g/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/c$2;->a:Lcom/bytedance/sdk/openadsdk/component/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/c;->b(Lcom/bytedance/sdk/openadsdk/component/c;)Lcom/bytedance/sdk/openadsdk/component/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/c$2;->a:Lcom/bytedance/sdk/openadsdk/component/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/c;->a(Lcom/bytedance/sdk/openadsdk/component/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/a;->e(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/c$2;->a:Lcom/bytedance/sdk/openadsdk/component/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/c;->b(Lcom/bytedance/sdk/openadsdk/component/c;)Lcom/bytedance/sdk/openadsdk/component/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/c$2;->a:Lcom/bytedance/sdk/openadsdk/component/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/c;->a(Lcom/bytedance/sdk/openadsdk/component/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/c$2;->a:Lcom/bytedance/sdk/openadsdk/component/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/c;->b(Lcom/bytedance/sdk/openadsdk/component/c;)Lcom/bytedance/sdk/openadsdk/component/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/c$2;->a:Lcom/bytedance/sdk/openadsdk/component/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/c;->a(Lcom/bytedance/sdk/openadsdk/component/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/c$2;->a:Lcom/bytedance/sdk/openadsdk/component/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/c;->b(Lcom/bytedance/sdk/openadsdk/component/c;)Lcom/bytedance/sdk/openadsdk/component/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/c$2;->a:Lcom/bytedance/sdk/openadsdk/component/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/c;->a(Lcom/bytedance/sdk/openadsdk/component/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/a;->g(I)V

    goto/16 :goto_2

    .line 162
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/c$2;->a:Lcom/bytedance/sdk/openadsdk/component/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/c;->b(Lcom/bytedance/sdk/openadsdk/component/c;)Lcom/bytedance/sdk/openadsdk/component/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/c$2;->a:Lcom/bytedance/sdk/openadsdk/component/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/c;->a(Lcom/bytedance/sdk/openadsdk/component/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/a;->f(I)Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/c$2;->a:Lcom/bytedance/sdk/openadsdk/component/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/c;->b(Lcom/bytedance/sdk/openadsdk/component/c;)Lcom/bytedance/sdk/openadsdk/component/a;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/c$2;->a:Lcom/bytedance/sdk/openadsdk/component/c;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/c;->a(Lcom/bytedance/sdk/openadsdk/component/c;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/a;->g(I)V

    const-string v1, "TTAppOpenAdLoadManager"

    if-nez v0, :cond_2

    const-string v0, "Cached material resolution failed"

    .line 167
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v2, "Cached material resolution success"

    .line 170
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v2

    const/16 v3, 0x65

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    .line 174
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/c$2;->a:Lcom/bytedance/sdk/openadsdk/component/c;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/c;->b(Lcom/bytedance/sdk/openadsdk/component/c;)Lcom/bytedance/sdk/openadsdk/component/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/a;->a(Lcom/bytedance/sdk/openadsdk/core/f/n;)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v2, v5, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "Video cache path not found"

    .line 179
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/d/a;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    goto :goto_2

    .line 177
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/c$2;->a:Lcom/bytedance/sdk/openadsdk/component/c;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/e/b;

    invoke-direct {v2, v4, v3, v0}, Lcom/bytedance/sdk/openadsdk/component/e/b;-><init>(IILcom/bytedance/sdk/openadsdk/core/f/n;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/c;->a(Lcom/bytedance/sdk/openadsdk/component/c;Lcom/bytedance/sdk/openadsdk/component/e/b;)V

    goto :goto_2

    .line 185
    :cond_5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/c$2;->a:Lcom/bytedance/sdk/openadsdk/component/c;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/c;->b(Lcom/bytedance/sdk/openadsdk/component/c;)Lcom/bytedance/sdk/openadsdk/component/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/a;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 186
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/c$2;->a:Lcom/bytedance/sdk/openadsdk/component/c;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/e/b;

    invoke-direct {v2, v4, v3, v0}, Lcom/bytedance/sdk/openadsdk/component/e/b;-><init>(IILcom/bytedance/sdk/openadsdk/core/f/n;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/c;->a(Lcom/bytedance/sdk/openadsdk/component/c;Lcom/bytedance/sdk/openadsdk/component/e/b;)V

    goto :goto_2

    :cond_6
    const-string v2, "Image cache path not found"

    .line 188
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/d/a;->b(Lcom/bytedance/sdk/openadsdk/core/f/n;)V

    :cond_7
    :goto_2
    return-void
.end method
