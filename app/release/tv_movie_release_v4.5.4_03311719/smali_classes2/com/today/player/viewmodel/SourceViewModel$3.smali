.class Lcom/today/player/viewmodel/SourceViewModel$3;
.super Lcom/lzy/okgo/callback/AbsCallback;
.source "SourceViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/viewmodel/SourceViewModel;->getSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okgo/callback/AbsCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/viewmodel/SourceViewModel;

.field final synthetic val$api:Ljava/lang/String;

.field final synthetic val$sourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/today/player/viewmodel/SourceViewModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/today/player/viewmodel/SourceViewModel$3;->this$0:Lcom/today/player/viewmodel/SourceViewModel;

    iput-object p2, p0, Lcom/today/player/viewmodel/SourceViewModel$3;->val$sourceName:Ljava/lang/String;

    iput-object p3, p0, Lcom/today/player/viewmodel/SourceViewModel$3;->val$api:Ljava/lang/String;

    invoke-direct {p0}, Lcom/lzy/okgo/callback/AbsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertResponse(Lokhttp3/Response;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 127
    invoke-virtual {p0, p1}, Lcom/today/player/viewmodel/SourceViewModel$3;->convertResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convertResponse(Lokhttp3/Response;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\u7f51\u7edc\u8bf7\u6c42\u9519\u8bef"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onError(Lcom/lzy/okgo/model/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-super {p0, p1}, Lcom/lzy/okgo/callback/AbsCallback;->onError(Lcom/lzy/okgo/model/Response;)V

    .line 153
    iget-object p1, p0, Lcom/today/player/viewmodel/SourceViewModel$3;->this$0:Lcom/today/player/viewmodel/SourceViewModel;

    iget-object p1, p1, Lcom/today/player/viewmodel/SourceViewModel;->searchResult:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 139
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 140
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/today/player/viewmodel/SourceViewModel$3;->val$sourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/today/player/api/ApiConfig;->getSource(Ljava/lang/String;)Lcom/today/player/bean/PlayerModel$SourcesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/today/player/viewmodel/SourceViewModel$3;->this$0:Lcom/today/player/viewmodel/SourceViewModel;

    iget-object v1, v0, Lcom/today/player/viewmodel/SourceViewModel;->searchResult:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, p0, Lcom/today/player/viewmodel/SourceViewModel$3;->val$api:Ljava/lang/String;

    iget-object v3, p0, Lcom/today/player/viewmodel/SourceViewModel$3;->val$sourceName:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/today/player/viewmodel/SourceViewModel;->access$200(Lcom/today/player/viewmodel/SourceViewModel;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/today/player/viewmodel/SourceViewModel$3;->this$0:Lcom/today/player/viewmodel/SourceViewModel;

    iget-object v1, v0, Lcom/today/player/viewmodel/SourceViewModel;->searchResult:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, p0, Lcom/today/player/viewmodel/SourceViewModel$3;->val$api:Ljava/lang/String;

    iget-object v3, p0, Lcom/today/player/viewmodel/SourceViewModel$3;->val$sourceName:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/today/player/viewmodel/SourceViewModel;->access$300(Lcom/today/player/viewmodel/SourceViewModel;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
