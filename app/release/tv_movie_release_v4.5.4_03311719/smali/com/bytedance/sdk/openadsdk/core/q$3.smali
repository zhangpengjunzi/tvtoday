.class Lcom/bytedance/sdk/openadsdk/core/q$3;
.super Ljava/lang/Object;
.source "NetApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/q;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/q;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/q;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q$3;->c:Lcom/bytedance/sdk/openadsdk/core/q;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/q$3;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/q$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q$3;->c:Lcom/bytedance/sdk/openadsdk/core/q;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q$3;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q$3;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lcom/bytedance/sdk/openadsdk/core/q;Lorg/json/JSONObject;Ljava/lang/String;)V

    const/16 v0, 0x5c

    :goto_0
    const/16 v1, 0xe

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :pswitch_2
    const/16 v1, 0x48

    :goto_2
    :pswitch_3
    const/16 v1, 0xf

    const/16 v0, 0x5f

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
