.class public Lcom/bt/jrsdk/util/PangleSpUtils;
.super Ljava/lang/Object;
.source "PangleSpUtils.java"


# static fields
.field private static final KEY_CCPA:Ljava/lang/String; = "pangle_ccpa"

.field private static final KEY_COPPA:Ljava/lang/String; = "pangle_coppa"

.field private static final KEY_GDPR:Ljava/lang/String; = "pangle_gdpr"

.field public static final PANGLE_DEMO_SP:Ljava/lang/String; = "pangle_demo_sp"

.field private static final TAG:Ljava/lang/String; = "PangleSpUtils"

.field private static volatile mUserManager:Lcom/bt/jrsdk/util/PangleSpUtils;


# instance fields
.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/today/player/base/App;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "pangle_demo_sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bt/jrsdk/util/PangleSpUtils;->sp:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance()Lcom/bt/jrsdk/util/PangleSpUtils;
    .locals 2

    .line 35
    sget-object v0, Lcom/bt/jrsdk/util/PangleSpUtils;->mUserManager:Lcom/bt/jrsdk/util/PangleSpUtils;

    if-nez v0, :cond_1

    .line 36
    const-class v0, Lcom/bt/jrsdk/util/PangleSpUtils;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/bt/jrsdk/util/PangleSpUtils;->mUserManager:Lcom/bt/jrsdk/util/PangleSpUtils;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/bt/jrsdk/util/PangleSpUtils;

    invoke-direct {v1}, Lcom/bt/jrsdk/util/PangleSpUtils;-><init>()V

    sput-object v1, Lcom/bt/jrsdk/util/PangleSpUtils;->mUserManager:Lcom/bt/jrsdk/util/PangleSpUtils;

    .line 40
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 42
    :cond_1
    :goto_0
    sget-object v0, Lcom/bt/jrsdk/util/PangleSpUtils;->mUserManager:Lcom/bt/jrsdk/util/PangleSpUtils;

    return-object v0
.end method


# virtual methods
.method public getCcpa()I
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/bt/jrsdk/util/PangleSpUtils;->sp:Landroid/content/SharedPreferences;

    const-string v1, "pangle_ccpa"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCoppa()I
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/bt/jrsdk/util/PangleSpUtils;->sp:Landroid/content/SharedPreferences;

    const-string v1, "pangle_coppa"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getGdpr()I
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/bt/jrsdk/util/PangleSpUtils;->sp:Landroid/content/SharedPreferences;

    const-string v1, "pangle_gdpr"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setCcpa(I)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/bt/jrsdk/util/PangleSpUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pangle_ccpa"

    .line 69
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCoppa(I)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/bt/jrsdk/util/PangleSpUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pangle_coppa"

    .line 48
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setGdpr(I)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/bt/jrsdk/util/PangleSpUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pangle_gdpr"

    .line 59
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
