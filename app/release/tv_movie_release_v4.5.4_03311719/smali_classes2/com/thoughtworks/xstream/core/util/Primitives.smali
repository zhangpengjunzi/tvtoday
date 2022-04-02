.class public final Lcom/thoughtworks/xstream/core/util/Primitives;
.super Ljava/lang/Object;
.source "Primitives.java"


# static fields
.field private static final BOX:Ljava/util/Map;

.field private static final NAMED_PRIMITIVE:Ljava/util/Map;

.field private static final REPRESENTING_CHAR:Ljava/util/Map;

.field private static final UNBOX:Ljava/util/Map;

.field static synthetic class$java$lang$Boolean:Ljava/lang/Class;

.field static synthetic class$java$lang$Byte:Ljava/lang/Class;

.field static synthetic class$java$lang$Character:Ljava/lang/Class;

.field static synthetic class$java$lang$Double:Ljava/lang/Class;

.field static synthetic class$java$lang$Float:Ljava/lang/Class;

.field static synthetic class$java$lang$Integer:Ljava/lang/Class;

.field static synthetic class$java$lang$Long:Ljava/lang/Class;

.field static synthetic class$java$lang$Short:Ljava/lang/Class;

.field static synthetic class$java$lang$Void:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->BOX:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->UNBOX:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->NAMED_PRIMITIVE:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->REPRESENTING_CHAR:Ljava/util/Map;

    const/16 v0, 0x9

    new-array v1, v0, [[Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 29
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/thoughtworks/xstream/core/util/Primitives;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v4, :cond_0

    const-string v4, "java.lang.Byte"

    .line 30
    invoke-static {v4}, Lcom/thoughtworks/xstream/core/util/Primitives;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/thoughtworks/xstream/core/util/Primitives;->class$java$lang$Byte:Ljava/lang/Class;

    :cond_0
    const/4 v6, 0x1

    aput-object v4, v3, v6

    aput-object v3, v1, v5

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    sget-object v4, Lcom/thoughtworks/xstream/core/util/Primitives;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v4, :cond_1

    const-string v4, "java.lang.Character"

    .line 31
    invoke-static {v4}, Lcom/thoughtworks/xstream/core/util/Primitives;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/thoughtworks/xstream/core/util/Primitives;->class$java$lang$Character:Ljava/lang/Class;

    :cond_1
    aput-object v4, v3, v6

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    sget-object v4, Lcom/thoughtworks/xstream/core/util/Primitives;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v4, :cond_2

    const-string v4, "java.lang.Short"

    .line 32
    invoke-static {v4}, Lcom/thoughtworks/xstream/core/util/Primitives;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/thoughtworks/xstream/core/util/Primitives;->class$java$lang$Short:Ljava/lang/Class;

    :cond_2
    aput-object v4, v3, v6

    aput-object v3, v1, v2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    sget-object v4, Lcom/thoughtworks/xstream/core/util/Primitives;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v4, :cond_3

    const-string v4, "java.lang.Integer"

    .line 33
    invoke-static {v4}, Lcom/thoughtworks/xstream/core/util/Primitives;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/thoughtworks/xstream/core/util/Primitives;->class$java$lang$Integer:Ljava/lang/Class;

    :cond_3
    aput-object v4, v3, v6

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v5

    sget-object v7, Lcom/thoughtworks/xstream/core/util/Primitives;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v7, :cond_4

    const-string v7, "java.lang.Long"

    .line 34
    invoke-static {v7}, Lcom/thoughtworks/xstream/core/util/Primitives;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lcom/thoughtworks/xstream/core/util/Primitives;->class$java$lang$Long:Ljava/lang/Class;

    :cond_4
    aput-object v7, v3, v6

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v8, v3, v5

    sget-object v8, Lcom/thoughtworks/xstream/core/util/Primitives;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v8, :cond_5

    const-string v8, "java.lang.Float"

    .line 35
    invoke-static {v8}, Lcom/thoughtworks/xstream/core/util/Primitives;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lcom/thoughtworks/xstream/core/util/Primitives;->class$java$lang$Float:Ljava/lang/Class;

    :cond_5
    aput-object v8, v3, v6

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v9, v3, v5

    sget-object v9, Lcom/thoughtworks/xstream/core/util/Primitives;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v9, :cond_6

    const-string v9, "java.lang.Double"

    .line 36
    invoke-static {v9}, Lcom/thoughtworks/xstream/core/util/Primitives;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lcom/thoughtworks/xstream/core/util/Primitives;->class$java$lang$Double:Ljava/lang/Class;

    :cond_6
    aput-object v9, v3, v6

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v3, v5

    sget-object v10, Lcom/thoughtworks/xstream/core/util/Primitives;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v10, :cond_7

    const-string v10, "java.lang.Boolean"

    .line 37
    invoke-static {v10}, Lcom/thoughtworks/xstream/core/util/Primitives;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lcom/thoughtworks/xstream/core/util/Primitives;->class$java$lang$Boolean:Ljava/lang/Class;

    :cond_7
    aput-object v10, v3, v6

    const/4 v10, 0x7

    aput-object v3, v1, v10

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    aput-object v11, v3, v5

    sget-object v11, Lcom/thoughtworks/xstream/core/util/Primitives;->class$java$lang$Void:Ljava/lang/Class;

    if-nez v11, :cond_8

    const-string v11, "java.lang.Void"

    .line 38
    invoke-static {v11}, Lcom/thoughtworks/xstream/core/util/Primitives;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    sput-object v11, Lcom/thoughtworks/xstream/core/util/Primitives;->class$java$lang$Void:Ljava/lang/Class;

    :cond_8
    aput-object v11, v3, v6

    const/16 v11, 0x8

    aput-object v3, v1, v11

    new-array v3, v0, [Ljava/lang/Character;

    .line 40
    new-instance v12, Ljava/lang/Character;

    const/16 v13, 0x42

    invoke-direct {v12, v13}, Ljava/lang/Character;-><init>(C)V

    aput-object v12, v3, v5

    new-instance v12, Ljava/lang/Character;

    const/16 v13, 0x43

    invoke-direct {v12, v13}, Ljava/lang/Character;-><init>(C)V

    aput-object v12, v3, v6

    new-instance v12, Ljava/lang/Character;

    const/16 v13, 0x53

    invoke-direct {v12, v13}, Ljava/lang/Character;-><init>(C)V

    aput-object v12, v3, v2

    new-instance v2, Ljava/lang/Character;

    const/16 v12, 0x49

    invoke-direct {v2, v12}, Ljava/lang/Character;-><init>(C)V

    aput-object v2, v3, v4

    new-instance v2, Ljava/lang/Character;

    const/16 v4, 0x4a

    invoke-direct {v2, v4}, Ljava/lang/Character;-><init>(C)V

    aput-object v2, v3, v7

    new-instance v2, Ljava/lang/Character;

    const/16 v4, 0x46

    invoke-direct {v2, v4}, Ljava/lang/Character;-><init>(C)V

    aput-object v2, v3, v8

    new-instance v2, Ljava/lang/Character;

    const/16 v4, 0x44

    invoke-direct {v2, v4}, Ljava/lang/Character;-><init>(C)V

    aput-object v2, v3, v9

    new-instance v2, Ljava/lang/Character;

    const/16 v4, 0x5a

    invoke-direct {v2, v4}, Ljava/lang/Character;-><init>(C)V

    aput-object v2, v3, v10

    const/4 v2, 0x0

    aput-object v2, v3, v11

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    .line 52
    aget-object v4, v1, v2

    aget-object v4, v4, v5

    .line 53
    aget-object v7, v1, v2

    aget-object v7, v7, v6

    .line 54
    sget-object v8, Lcom/thoughtworks/xstream/core/util/Primitives;->BOX:Ljava/util/Map;

    invoke-interface {v8, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v8, Lcom/thoughtworks/xstream/core/util/Primitives;->UNBOX:Ljava/util/Map;

    invoke-interface {v8, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v7, Lcom/thoughtworks/xstream/core/util/Primitives;->NAMED_PRIMITIVE:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v7, Lcom/thoughtworks/xstream/core/util/Primitives;->REPRESENTING_CHAR:Ljava/util/Map;

    aget-object v8, v3, v2

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static box(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .line 68
    sget-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->BOX:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 30
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

.method public static isBoxed(Ljava/lang/Class;)Z
    .locals 1

    .line 89
    sget-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->UNBOX:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static primitiveType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 100
    sget-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->NAMED_PRIMITIVE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public static representingChar(Ljava/lang/Class;)C
    .locals 1

    .line 111
    sget-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->REPRESENTING_CHAR:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    :goto_0
    return p0
.end method

.method public static unbox(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .line 78
    sget-object v0, Lcom/thoughtworks/xstream/core/util/Primitives;->UNBOX:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method
