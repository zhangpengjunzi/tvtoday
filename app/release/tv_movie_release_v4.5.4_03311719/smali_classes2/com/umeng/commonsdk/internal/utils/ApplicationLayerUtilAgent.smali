.class public Lcom/umeng/commonsdk/internal/utils/ApplicationLayerUtilAgent;
.super Ljava/lang/Object;
.source "ApplicationLayerUtilAgent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wifiChange(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-static {}, Lcom/umeng/commonsdk/config/FieldManager;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {p0}, Lcom/umeng/commonsdk/internal/utils/a;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
