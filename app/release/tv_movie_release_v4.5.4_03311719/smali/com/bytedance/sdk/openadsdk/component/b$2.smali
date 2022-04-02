.class Lcom/bytedance/sdk/openadsdk/component/b$2;
.super Ljava/lang/Object;
.source "TTAppOpenAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/b;->showAppOpenAd(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/b;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "TTAppOpenAdImpl"

    const-string v1, "app open ad startActivitySuccess"

    .line 139
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "TTAppOpenAdImpl"

    const-string v0, "app open ad startActivityFail"

    .line 144
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
