.class Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter$Reflections;
.super Ljava/lang/Object;
.source "TreeMapConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Reflections"
.end annotation


# static fields
.field private static final comparatorField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 135
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->class$java$util$TreeMap:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.TreeMap"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->class$java$util$TreeMap:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->class$java$util$TreeMap:Ljava/lang/Class;

    :goto_0
    sget-object v1, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->class$java$util$Comparator:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.util.Comparator"

    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->class$java$util$Comparator:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->class$java$util$Comparator:Ljava/lang/Class;

    :goto_1
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/thoughtworks/xstream/core/util/Fields;->locate(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter$Reflections;->comparatorField:Ljava/lang/reflect/Field;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/reflect/Field;
    .locals 1

    .line 134
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter$Reflections;->comparatorField:Ljava/lang/reflect/Field;

    return-object v0
.end method
