.class Lcom/today/player/viewmodel/SourceViewModel$5;
.super Lcom/google/gson/reflect/TypeToken;
.source "SourceViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/viewmodel/SourceViewModel;->sotJson(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/today/player/bean/SortTitle;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/viewmodel/SourceViewModel;


# direct methods
.method constructor <init>(Lcom/today/player/viewmodel/SourceViewModel;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/today/player/viewmodel/SourceViewModel$5;->this$0:Lcom/today/player/viewmodel/SourceViewModel;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
