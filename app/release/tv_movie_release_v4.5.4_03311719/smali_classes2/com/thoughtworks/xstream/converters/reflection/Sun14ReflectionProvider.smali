.class public Lcom/thoughtworks/xstream/converters/reflection/Sun14ReflectionProvider;
.super Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;
.source "Sun14ReflectionProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/SunUnsafeReflectionProvider;-><init>(Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/reflection/Sun14ReflectionProvider;->init()V

    return-object p0
.end method
