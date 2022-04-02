.class Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1$1;
.super Ljava/util/AbstractList;
.source "TreeSetConverter.java"


# instance fields
.field private final synthetic this$1:Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;

.field private final synthetic val$target:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;Ljava/util/Map;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1$1;->this$1:Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1$1;->val$target:Ljava/util/Map;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1$1;->val$target:Ljava/util/Map;

    .line 105
    invoke-static {}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$Reflections;->access$100()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    invoke-static {}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$Reflections;->access$100()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 105
    :goto_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1$1;->val$target:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
