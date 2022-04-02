.class Lcom/upa/activation/ActivationManager$ActivationInit;
.super Ljava/lang/Object;
.source "ActivationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upa/activation/ActivationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivationInit"
.end annotation


# static fields
.field public static final init:Lcom/upa/activation/ActivationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/upa/activation/ActivationManager;

    invoke-direct {v0}, Lcom/upa/activation/ActivationManager;-><init>()V

    sput-object v0, Lcom/upa/activation/ActivationManager$ActivationInit;->init:Lcom/upa/activation/ActivationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
