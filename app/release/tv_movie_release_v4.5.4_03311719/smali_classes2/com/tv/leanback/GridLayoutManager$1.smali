.class Lcom/tv/leanback/GridLayoutManager$1;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tv/leanback/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tv/leanback/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/tv/leanback/GridLayoutManager;)V
    .locals 0

    .line 1328
    iput-object p1, p0, Lcom/tv/leanback/GridLayoutManager$1;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1332
    iget-object v0, p0, Lcom/tv/leanback/GridLayoutManager$1;->this$0:Lcom/tv/leanback/GridLayoutManager;

    invoke-virtual {v0}, Lcom/tv/leanback/GridLayoutManager;->requestLayout()V

    return-void
.end method
