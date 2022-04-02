.class Lcom/today/player/base/App$1;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/base/App;->initPangle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/base/App;


# direct methods
.method constructor <init>(Lcom/today/player/base/App;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/today/player/base/App$1;->this$0:Lcom/today/player/base/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public success()V
    .locals 0

    return-void
.end method
