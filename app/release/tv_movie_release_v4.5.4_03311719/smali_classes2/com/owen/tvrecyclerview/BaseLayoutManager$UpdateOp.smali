.class final enum Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;
.super Ljava/lang/Enum;
.source "BaseLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/owen/tvrecyclerview/BaseLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UpdateOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

.field public static final enum ADD:Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

.field public static final enum MOVE:Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

.field public static final enum REMOVE:Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

.field public static final enum UPDATE:Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 127
    new-instance v0, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

    const-string v1, "ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;->ADD:Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

    .line 128
    new-instance v0, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

    const-string v1, "REMOVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;->REMOVE:Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

    .line 129
    new-instance v0, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

    const-string v1, "UPDATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;->UPDATE:Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

    .line 130
    new-instance v0, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

    const-string v1, "MOVE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;->MOVE:Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

    .line 126
    sget-object v6, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;->ADD:Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

    aput-object v6, v1, v2

    sget-object v2, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;->REMOVE:Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

    aput-object v2, v1, v3

    sget-object v2, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;->UPDATE:Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;->$VALUES:[Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;
    .locals 1

    .line 126
    const-class v0, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

    return-object p0
.end method

.method public static values()[Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;
    .locals 1

    .line 126
    sget-object v0, Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;->$VALUES:[Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

    invoke-virtual {v0}, [Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/owen/tvrecyclerview/BaseLayoutManager$UpdateOp;

    return-object v0
.end method
