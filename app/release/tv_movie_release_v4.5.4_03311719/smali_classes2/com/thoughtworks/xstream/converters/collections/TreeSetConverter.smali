.class public Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;
.super Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;
.source "TreeSetConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$Reflections;
    }
.end annotation


# static fields
.field static synthetic class$java$lang$Object:Ljava/lang/Class;

.field static synthetic class$java$util$SortedMap:Ljava/lang/Class;

.field static synthetic class$java$util$TreeSet:Ljava/lang/Class;


# instance fields
.field private transient treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1

    .line 46
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$TreeSet:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.TreeSet"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$TreeSet:Ljava/lang/Class;

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V

    .line 47
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->readResolve()Ljava/lang/Object;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 46
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 98
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;-><init>(Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    return-object p0
.end method


# virtual methods
.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 2

    .line 51
    move-object v0, p1

    check-cast v0, Ljava/util/SortedSet;

    .line 52
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {v1, v0, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->marshalComparator(Ljava/util/Comparator;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 7

    .line 59
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->unmarshalComparator(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v0

    .line 60
    instance-of v2, v0, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    if-eqz v2, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v0

    .line 62
    :goto_0
    invoke-static {}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$Reflections;->access$000()Ljava/lang/reflect/Field;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 63
    new-instance v4, Ljava/util/TreeSet;

    if-nez v3, :cond_1

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    goto :goto_1

    :cond_1
    invoke-direct {v4, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 66
    :goto_1
    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$Reflections;->access$000()Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    instance-of v6, v5, Ljava/util/TreeMap;

    if-eqz v6, :cond_2

    .line 71
    check-cast v5, Ljava/util/TreeMap;

    move-object v1, v4

    goto :goto_2

    :cond_2
    move-object v5, v1

    :goto_2
    move-object v4, v1

    move-object v1, v5

    goto :goto_3

    :catch_0
    move-exception p1

    .line 68
    new-instance p2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v0, "Cannot get backing map of TreeSet"

    invoke-direct {p2, v0, p1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    move-object v4, v1

    :goto_3
    if-nez v1, :cond_6

    .line 80
    new-instance v0, Lcom/thoughtworks/xstream/core/util/PresortedSet;

    invoke-direct {v0, v3}, Lcom/thoughtworks/xstream/core/util/PresortedSet;-><init>(Ljava/util/Comparator;)V

    .line 81
    new-instance v1, Ljava/util/TreeSet;

    if-nez v3, :cond_4

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    goto :goto_4

    :cond_4
    invoke-direct {v1, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :goto_4
    move-object v4, v1

    if-eqz v2, :cond_5

    .line 84
    invoke-virtual {p0, p1, p2, v4, v0}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->addCurrentElementToCollection(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 85
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 87
    :cond_5
    invoke-virtual {p0, p1, p2, v4, v0}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->populateCollection(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 88
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/PresortedSet;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 89
    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 92
    :cond_6
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->populateTreeMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;Ljava/util/Comparator;)V

    :cond_7
    :goto_5
    return-object v4
.end method
