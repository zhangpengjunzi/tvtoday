.class Lcom/today/player/api/ApiConfig$1;
.super Ljava/lang/Object;
.source "ApiConfig.java"

# interfaces
.implements Lcom/upa/view/ConfirmSourceDialog$ConfirmCLickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/api/ApiConfig;->cc(Lcom/today/player/bean/PlayerModel$SourcesDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/api/ApiConfig;

.field final synthetic val$ugVar:Lcom/today/player/bean/PlayerModel$SourcesDTO;


# direct methods
.method constructor <init>(Lcom/today/player/api/ApiConfig;Lcom/today/player/bean/PlayerModel$SourcesDTO;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/today/player/api/ApiConfig$1;->this$0:Lcom/today/player/api/ApiConfig;

    iput-object p2, p0, Lcom/today/player/api/ApiConfig$1;->val$ugVar:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelClick()V
    .locals 0

    return-void
.end method

.method public confirmClick()V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/today/player/api/ApiConfig$1;->this$0:Lcom/today/player/api/ApiConfig;

    iget-object v1, p0, Lcom/today/player/api/ApiConfig$1;->val$ugVar:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v0, v1}, Lcom/today/player/api/ApiConfig;->setSourceBean(Lcom/today/player/bean/PlayerModel$SourcesDTO;)V

    .line 313
    invoke-static {}, Lcom/upa/source/HintSource;->getInstance()Lcom/upa/source/HintSource;

    move-result-object v0

    iget-object v1, p0, Lcom/today/player/api/ApiConfig$1;->val$ugVar:Lcom/today/player/bean/PlayerModel$SourcesDTO;

    invoke-virtual {v1}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upa/source/HintSource;->saveOldSource(Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/today/player/event/TopStateEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/today/player/event/TopStateEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
