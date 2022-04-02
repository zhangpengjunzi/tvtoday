.class public Lcom/today/player/ui/fragment/ModelSettingFragment$d$a;
.super Ljava/lang/Object;
.source "ModelSettingFragment.java"

# interfaces
.implements Lcom/today/player/ui/dialog/ChangeRenderDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/fragment/ModelSettingFragment$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/today/player/ui/fragment/ModelSettingFragment$d;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/fragment/ModelSettingFragment$d;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$d$a;->this$1:Lcom/today/player/ui/fragment/ModelSettingFragment$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$d$a;->this$1:Lcom/today/player/ui/fragment/ModelSettingFragment$d;

    iget-object v0, v0, Lcom/today/player/ui/fragment/ModelSettingFragment$d;->this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;

    invoke-virtual {v0}, Lcom/today/player/ui/fragment/ModelSettingFragment;->d()V

    .line 191
    invoke-static {}, Lcom/today/player/util/PlayUtils;->a()V

    return-void
.end method
