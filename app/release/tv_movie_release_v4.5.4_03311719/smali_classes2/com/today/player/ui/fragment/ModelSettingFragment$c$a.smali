.class public Lcom/today/player/ui/fragment/ModelSettingFragment$c$a;
.super Ljava/lang/Object;
.source "ModelSettingFragment.java"

# interfaces
.implements Lcom/today/player/ui/dialog/ChanPlayDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/ui/fragment/ModelSettingFragment$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/today/player/ui/fragment/ModelSettingFragment$c;


# direct methods
.method public constructor <init>(Lcom/today/player/ui/fragment/ModelSettingFragment$c;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$c$a;->this$1:Lcom/today/player/ui/fragment/ModelSettingFragment$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/today/player/ui/fragment/ModelSettingFragment$c$a;->this$1:Lcom/today/player/ui/fragment/ModelSettingFragment$c;

    iget-object v0, v0, Lcom/today/player/ui/fragment/ModelSettingFragment$c;->this$0:Lcom/today/player/ui/fragment/ModelSettingFragment;

    invoke-virtual {v0}, Lcom/today/player/ui/fragment/ModelSettingFragment;->c()V

    .line 126
    invoke-static {}, Lcom/today/player/util/PlayUtils;->a()V

    return-void
.end method
