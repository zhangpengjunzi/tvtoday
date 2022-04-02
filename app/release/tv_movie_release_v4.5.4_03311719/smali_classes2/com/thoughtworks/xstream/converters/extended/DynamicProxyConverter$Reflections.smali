.class Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter$Reflections;
.super Ljava/lang/Object;
.source "DynamicProxyConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Reflections"
.end annotation


# static fields
.field private static final DUMMY:Ljava/lang/reflect/InvocationHandler;

.field private static final HANDLER:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 133
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->class$java$lang$reflect$Proxy:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.reflect.Proxy"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->class$java$lang$reflect$Proxy:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->class$java$lang$reflect$Proxy:Ljava/lang/Class;

    :goto_0
    sget-object v1, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->class$java$lang$reflect$InvocationHandler:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.lang.reflect.InvocationHandler"

    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->class$java$lang$reflect$InvocationHandler:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;->class$java$lang$reflect$InvocationHandler:Ljava/lang/Class;

    :goto_1
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/thoughtworks/xstream/core/util/Fields;->locate(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter$Reflections;->HANDLER:Ljava/lang/reflect/Field;

    .line 134
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter$Reflections$1;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter$Reflections$1;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter$Reflections;->DUMMY:Ljava/lang/reflect/InvocationHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/reflect/Field;
    .locals 1

    .line 131
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter$Reflections;->HANDLER:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/reflect/InvocationHandler;
    .locals 1

    .line 131
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter$Reflections;->DUMMY:Ljava/lang/reflect/InvocationHandler;

    return-object v0
.end method
