.class Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$Id;
.super Ljava/lang/Object;
.source "AbstractReferenceMarshaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Id"
.end annotation


# instance fields
.field private item:Ljava/lang/Object;

.field private path:Lcom/thoughtworks/xstream/io/path/Path;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/path/Path;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$Id;->item:Ljava/lang/Object;

    .line 126
    iput-object p2, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$Id;->path:Lcom/thoughtworks/xstream/io/path/Path;

    return-void
.end method


# virtual methods
.method protected getItem()Ljava/lang/Object;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$Id;->item:Ljava/lang/Object;

    return-object v0
.end method

.method protected getPath()Lcom/thoughtworks/xstream/io/path/Path;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$Id;->path:Lcom/thoughtworks/xstream/io/path/Path;

    return-object v0
.end method
