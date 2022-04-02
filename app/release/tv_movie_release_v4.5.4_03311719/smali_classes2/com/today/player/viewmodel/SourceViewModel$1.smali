.class Lcom/today/player/viewmodel/SourceViewModel$1;
.super Lcom/lzy/okgo/callback/AbsCallback;
.source "SourceViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/viewmodel/SourceViewModel;->getSort()V
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


# direct methods
.method constructor <init>(Lcom/today/player/viewmodel/SourceViewModel;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/today/player/viewmodel/SourceViewModel$1;->this$0:Lcom/today/player/viewmodel/SourceViewModel;

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

    .line 55
    invoke-virtual {p0, p1}, Lcom/today/player/viewmodel/SourceViewModel$1;->convertResponse(Lokhttp3/Response;)Ljava/lang/String;

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

    .line 58
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 61
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

    .line 79
    invoke-super {p0, p1}, Lcom/lzy/okgo/callback/AbsCallback;->onError(Lcom/lzy/okgo/model/Response;)V

    .line 80
    iget-object p1, p0, Lcom/today/player/viewmodel/SourceViewModel$1;->this$0:Lcom/today/player/viewmodel/SourceViewModel;

    iget-object p1, p1, Lcom/today/player/viewmodel/SourceViewModel;->sortResult:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/today/player/api/ApiConfig;->get()Lcom/today/player/api/ApiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/api/ApiConfig;->getDefaultSourceBean()Lcom/today/player/bean/PlayerModel$SourcesDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/today/player/bean/PlayerModel$SourcesDTO;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/today/player/viewmodel/SourceViewModel$1;->this$0:Lcom/today/player/viewmodel/SourceViewModel;

    iget-object v1, v0, Lcom/today/player/viewmodel/SourceViewModel;->sortResult:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0, v1, p1}, Lcom/today/player/viewmodel/SourceViewModel;->access$000(Lcom/today/player/viewmodel/SourceViewModel;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/today/player/viewmodel/SourceViewModel$1;->this$0:Lcom/today/player/viewmodel/SourceViewModel;

    iget-object v1, v0, Lcom/today/player/viewmodel/SourceViewModel;->sortResult:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0, v1, p1}, Lcom/today/player/viewmodel/SourceViewModel;->access$100(Lcom/today/player/viewmodel/SourceViewModel;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
