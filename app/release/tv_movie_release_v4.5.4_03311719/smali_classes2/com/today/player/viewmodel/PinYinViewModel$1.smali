.class Lcom/today/player/viewmodel/PinYinViewModel$1;
.super Lcom/lzy/okgo/callback/AbsCallback;
.source "PinYinViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/viewmodel/PinYinViewModel;->getChineseCharacters(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/today/player/viewmodel/PinYinViewModel;

.field final synthetic val$pinYin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/today/player/viewmodel/PinYinViewModel;Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/today/player/viewmodel/PinYinViewModel$1;->this$0:Lcom/today/player/viewmodel/PinYinViewModel;

    iput-object p2, p0, Lcom/today/player/viewmodel/PinYinViewModel$1;->val$pinYin:Ljava/lang/String;

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

    .line 28
    invoke-virtual {p0, p1}, Lcom/today/player/viewmodel/PinYinViewModel$1;->convertResponse(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convertResponse(Lokhttp3/Response;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u67e5\u8be2\u4e0d\u5230\u7ed3\u679c"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    return-object v1
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

    .line 36
    invoke-super {p0, p1}, Lcom/lzy/okgo/callback/AbsCallback;->onError(Lcom/lzy/okgo/model/Response;)V

    .line 37
    iget-object p1, p0, Lcom/today/player/viewmodel/PinYinViewModel$1;->this$0:Lcom/today/player/viewmodel/PinYinViewModel;

    iget-object p1, p1, Lcom/today/player/viewmodel/PinYinViewModel;->pinYinResult:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lcom/today/player/viewmodel/PinYinViewModel$1;->val$pinYin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/today/player/viewmodel/PinYinViewModel$1;->this$0:Lcom/today/player/viewmodel/PinYinViewModel;

    iget-object v0, v0, Lcom/today/player/viewmodel/PinYinViewModel;->pinYinResult:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
