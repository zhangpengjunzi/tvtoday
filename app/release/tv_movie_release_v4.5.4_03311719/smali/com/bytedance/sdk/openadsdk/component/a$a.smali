.class Lcom/bytedance/sdk/openadsdk/component/a$a;
.super Lcom/bytedance/sdk/component/g/g;
.source "TTAppOpenAdCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/a;

.field private final b:Lcom/bytedance/sdk/openadsdk/component/e/a;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/a;Lcom/bytedance/sdk/openadsdk/component/e/a;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/a$a;->a:Lcom/bytedance/sdk/openadsdk/component/a;

    const-string p1, "App Open Ad Write Cache"

    .line 606
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/g/g;-><init>(Ljava/lang/String;)V

    .line 607
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/a$a;->b:Lcom/bytedance/sdk/openadsdk/component/e/a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/a$a;->b:Lcom/bytedance/sdk/openadsdk/component/e/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/e/a;->b()Lcom/bytedance/sdk/openadsdk/core/f/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f/n;->ar()Lorg/json/JSONObject;

    move-result-object v0

    .line 615
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/a;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->c()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "material"

    const-string v3, "tt_openad_materialMeta"

    if-eqz v1, :cond_0

    .line 617
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a$a;->b:Lcom/bytedance/sdk/openadsdk/component/e/a;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/e/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 619
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/a$a;->a:Lcom/bytedance/sdk/openadsdk/component/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/a;->a(Lcom/bytedance/sdk/openadsdk/component/a;)Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 620
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 622
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/a$a;->b:Lcom/bytedance/sdk/openadsdk/component/e/a;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/e/a;->a()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method
