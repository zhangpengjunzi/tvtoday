.class public Lcom/today/player/ui/dialog/TestSpeed$wl;
.super Ljava/lang/Object;
.source "TestSpeed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/dialog/TestSpeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "wl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/today/player/ui/dialog/TestSpeed$wl$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/today/player/ui/dialog/TestSpeed$vg;

.field public final b:I

.field public final c:Lcom/today/player/ui/dialog/TestSpeed;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/dialog/TestSpeed;Lcom/today/player/ui/dialog/TestSpeed$vg;I)V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/today/player/ui/dialog/TestSpeed$wl;->c:Lcom/today/player/ui/dialog/TestSpeed;

    .line 179
    iput-object p2, p0, Lcom/today/player/ui/dialog/TestSpeed$wl;->a:Lcom/today/player/ui/dialog/TestSpeed$vg;

    .line 180
    iput p3, p0, Lcom/today/player/ui/dialog/TestSpeed$wl;->b:I

    .line 181
    invoke-virtual {p0}, Lcom/today/player/ui/dialog/TestSpeed$wl;->testSpeed()V

    return-void
.end method


# virtual methods
.method public testSpeed()V
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/today/player/ui/dialog/TestSpeed$wl;->a:Lcom/today/player/ui/dialog/TestSpeed$vg;

    iget-object v0, v0, Lcom/today/player/ui/dialog/TestSpeed$vg;->a:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getApi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okgo/OkGo;->get(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;

    move-result-object v0

    const-string v1, "speed_test"

    .line 186
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/GetRequest;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/GetRequest;

    new-instance v1, Lcom/today/player/ui/dialog/TestSpeed$wl$a;

    const/4 v2, 0x2

    new-array v2, v2, [J

    iget-object v3, p0, Lcom/today/player/ui/dialog/TestSpeed$wl;->a:Lcom/today/player/ui/dialog/TestSpeed$vg;

    iget-object v3, v3, Lcom/today/player/ui/dialog/TestSpeed$vg;->a:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    .line 187
    invoke-virtual {v3}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getType()I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/today/player/ui/dialog/TestSpeed$wl$a;-><init>(Lcom/today/player/ui/dialog/TestSpeed$wl;[JI)V

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/GetRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method
