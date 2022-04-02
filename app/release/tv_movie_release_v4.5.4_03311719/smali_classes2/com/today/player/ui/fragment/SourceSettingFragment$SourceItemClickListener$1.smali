.class Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener$1;
.super Ljava/lang/Object;
.source "SourceSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener;->onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener;

.field final synthetic val$ylVar:Lcom/today/player/ui/dialog/TestSpeed;


# direct methods
.method constructor <init>(Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener;Lcom/today/player/ui/dialog/TestSpeed;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener$1;->this$1:Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener;

    iput-object p2, p0, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener$1;->val$ylVar:Lcom/today/player/ui/dialog/TestSpeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/today/player/ui/fragment/SourceSettingFragment$SourceItemClickListener$1;->val$ylVar:Lcom/today/player/ui/dialog/TestSpeed;

    iget-object p1, p1, Lcom/today/player/ui/dialog/TestSpeed;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
