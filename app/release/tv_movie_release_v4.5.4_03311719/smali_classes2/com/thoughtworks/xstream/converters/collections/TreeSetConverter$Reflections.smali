.class Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$Reflections;
.super Ljava/lang/Object;
.source "TreeSetConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Reflections"
.end annotation


# static fields
.field private static final constantValue:Ljava/lang/Object;

.field private static final sortedMapField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 135
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->hasOptimizedTreeSetAddAll()Z

    move-result v0

    const-string v1, "java.util.TreeSet"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$TreeSet:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$TreeSet:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$TreeSet:Ljava/lang/Class;

    :goto_0
    sget-object v4, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$SortedMap:Ljava/lang/Class;

    if-nez v4, :cond_1

    const-string v4, "java.util.SortedMap"

    invoke-static {v4}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$SortedMap:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$SortedMap:Ljava/lang/Class;

    :goto_1
    invoke-static {v0, v4, v2}, Lcom/thoughtworks/xstream/core/util/Fields;->locate(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v3

    :goto_2
    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$Reflections;->sortedMapField:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 137
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    const-string v1, "1"

    .line 138
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    const-string v1, "2"

    .line 139
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 143
    :try_start_0
    sget-object v1, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$Reflections;->sortedMapField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-object v0, v3

    :goto_3
    if-eqz v0, :cond_6

    .line 148
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 149
    aget-object v1, v0, v2

    aget-object v4, v0, v4

    if-ne v1, v4, :cond_6

    .line 150
    aget-object v3, v0, v2

    goto :goto_6

    .line 154
    :cond_3
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$TreeSet:Ljava/lang/Class;

    if-nez v0, :cond_4

    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$TreeSet:Ljava/lang/Class;

    goto :goto_4

    :cond_4
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$TreeSet:Ljava/lang/Class;

    :goto_4
    sget-object v1, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v1, :cond_5

    const-string v1, "java.lang.Object"

    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_5

    :cond_5
    sget-object v1, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$lang$Object:Ljava/lang/Class;

    :goto_5
    invoke-static {v0, v1, v4}, Lcom/thoughtworks/xstream/core/util/Fields;->locate(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 157
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    :catch_1
    :cond_6
    :goto_6
    sput-object v3, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$Reflections;->constantValue:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/reflect/Field;
    .locals 1

    .line 129
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$Reflections;->sortedMapField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 129
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$Reflections;->constantValue:Ljava/lang/Object;

    return-object v0
.end method
