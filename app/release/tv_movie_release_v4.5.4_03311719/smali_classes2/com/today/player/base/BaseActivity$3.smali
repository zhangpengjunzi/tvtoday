.class Lcom/today/player/base/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/base/BaseActivity;->getResources()Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/today/player/base/BaseActivity;

.field final synthetic val$resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/today/player/base/BaseActivity;Landroid/content/res/Resources;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/today/player/base/BaseActivity$3;->this$0:Lcom/today/player/base/BaseActivity;

    iput-object p2, p0, Lcom/today/player/base/BaseActivity$3;->val$resources:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/today/player/base/BaseActivity$3;->val$resources:Landroid/content/res/Resources;

    invoke-static {v0}, Lme/jessyan/autosize/AutoSizeCompat;->autoConvertDensityOfGlobal(Landroid/content/res/Resources;)V

    return-void
.end method
