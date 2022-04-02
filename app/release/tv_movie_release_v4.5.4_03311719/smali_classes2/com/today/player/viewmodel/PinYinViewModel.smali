.class public Lcom/today/player/viewmodel/PinYinViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "PinYinViewModel.java"


# instance fields
.field public pinYinResult:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 20
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/today/player/viewmodel/PinYinViewModel;->pinYinResult:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public getChineseCharacters(Ljava/lang/String;)V
    .locals 5

    .line 24
    sget-object v0, Lcom/today/player/api/ApiConfig;->PinYinUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/lzy/okgo/OkGo;->get(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Z

    const-string v3, "gn"

    const-string v4, "p"

    .line 25
    invoke-virtual {v0, v3, v4, v2}, Lcom/lzy/okgo/request/GetRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/GetRequest;

    new-array v2, v1, [Z

    const-string v3, "py"

    .line 26
    invoke-virtual {v0, v3, p1, v2}, Lcom/lzy/okgo/request/GetRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/GetRequest;

    new-array v1, v1, [Z

    const-string v2, "number"

    const/4 v3, 0x1

    .line 27
    invoke-virtual {v0, v2, v3, v1}, Lcom/lzy/okgo/request/GetRequest;->params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/request/GetRequest;

    new-instance v1, Lcom/today/player/viewmodel/PinYinViewModel$1;

    invoke-direct {v1, p0, p1}, Lcom/today/player/viewmodel/PinYinViewModel$1;-><init>(Lcom/today/player/viewmodel/PinYinViewModel;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/GetRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method
