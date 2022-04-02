.class public Lcom/umeng/umzid/ZIDManager$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/umzid/ZIDManager;->init(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/umzid/IZIDCompletionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/umeng/umzid/ZIDManager;


# direct methods
.method public constructor <init>(Lcom/umeng/umzid/ZIDManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/umeng/umzid/ZIDManager$b;->b:Lcom/umeng/umzid/ZIDManager;

    iput-object p2, p0, Lcom/umeng/umzid/ZIDManager$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "aaid"

    iget-object v1, p0, Lcom/umeng/umzid/ZIDManager$b;->b:Lcom/umeng/umzid/ZIDManager;

    iget-object v2, p0, Lcom/umeng/umzid/ZIDManager$b;->a:Landroid/content/Context;

    .line 1
    iget-boolean v3, v1, Lcom/umeng/umzid/ZIDManager;->b:Z

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/umeng/umzid/ZIDManager;->b:Z

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "zdata"

    const-string v6, ""

    if-eqz v2, :cond_1

    .line 2
    :try_start_0
    invoke-static {v2}, Lcom/umeng/umzid/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v8, 0x0

    invoke-interface {v7, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v6

    .line 3
    :goto_0
    invoke-static {}, Lcom/umeng/umzid/Spy;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "old_zdata"

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "oaid"

    if-eqz v2, :cond_2

    .line 4
    :try_start_1
    invoke-static {v2}, Lcom/umeng/umzid/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/umeng/umzid/c;->c(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v7}, Lcom/umeng/umzid/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v6

    .line 5
    :cond_3
    :goto_1
    invoke-static {v2}, Lcom/umeng/umzid/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "old_oaid"

    invoke-virtual {v4, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "mac"

    if-eqz v2, :cond_4

    .line 6
    :try_start_2
    invoke-static {v2}, Lcom/umeng/umzid/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/umeng/umzid/c;->c(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v7}, Lcom/umeng/umzid/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_4
    move-object v7, v6

    .line 7
    :cond_5
    :goto_2
    invoke-static {v2}, Lcom/umeng/umzid/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "old_mac"

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v4}, Lcom/umeng/umzid/ZIDManager;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/umeng/umzid/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "uabc"

    if-eqz v2, :cond_6

    .line 8
    :try_start_3
    invoke-static {v2}, Lcom/umeng/umzid/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-interface {v7, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_6
    move-object v7, v6

    .line 9
    :goto_3
    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v7, "resetToken"

    if-eqz v2, :cond_7

    .line 10
    :try_start_4
    invoke-static {v2}, Lcom/umeng/umzid/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-interface {v11, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 11
    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    const-string v6, "https://aaid.umeng.com/api/updateZdata"

    :try_start_5
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/umeng/umzid/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "suc"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v3, :cond_b

    invoke-static {v2, v8}, Lcom/umeng/umzid/c;->f(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v2, v10}, Lcom/umeng/umzid/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v2, v9}, Lcom/umeng/umzid/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v2, v0}, Lcom/umeng/umzid/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v2, v0}, Lcom/umeng/umzid/c;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {v2, v0}, Lcom/umeng/umzid/c;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/umeng/umzid/ZIDManager;->b:Z

    :goto_4
    return-void
.end method
