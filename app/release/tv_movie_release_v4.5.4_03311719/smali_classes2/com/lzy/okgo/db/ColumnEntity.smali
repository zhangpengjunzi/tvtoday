.class public Lcom/lzy/okgo/db/ColumnEntity;
.super Ljava/lang/Object;
.source "ColumnEntity.java"


# instance fields
.field public columnName:Ljava/lang/String;

.field public columnType:Ljava/lang/String;

.field public compositePrimaryKey:[Ljava/lang/String;

.field public isAutoincrement:Z

.field public isNotNull:Z

.field public isPrimary:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 48
    invoke-direct/range {v0 .. v5}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 58
    invoke-direct/range {v0 .. v5}, Lcom/lzy/okgo/db/ColumnEntity;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/lzy/okgo/db/ColumnEntity;->columnName:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/lzy/okgo/db/ColumnEntity;->columnType:Ljava/lang/String;

    .line 71
    iput-boolean p3, p0, Lcom/lzy/okgo/db/ColumnEntity;->isPrimary:Z

    .line 72
    iput-boolean p4, p0, Lcom/lzy/okgo/db/ColumnEntity;->isNotNull:Z

    .line 73
    iput-boolean p5, p0, Lcom/lzy/okgo/db/ColumnEntity;->isAutoincrement:Z

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/lzy/okgo/db/ColumnEntity;->compositePrimaryKey:[Ljava/lang/String;

    return-void
.end method
