.class public Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;
.super Ljava/lang/Object;
.source "BeanProvider.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/converters/javabean/BeanProvider$Visitor;
    }
.end annotation


# static fields
.field protected static final NO_PARAMS:[Ljava/lang/Object;

.field static synthetic class$java$lang$Void:Ljava/lang/Class;


# instance fields
.field protected propertyDictionary:Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    sput-object v0, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->NO_PARAMS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;

    new-instance v1, Lcom/thoughtworks/xstream/converters/javabean/NativePropertySorter;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/converters/javabean/NativePropertySorter;-><init>()V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;-><init>(Lcom/thoughtworks/xstream/converters/javabean/PropertySorter;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;-><init>(Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->propertyDictionary:Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2

    .line 50
    new-instance v0, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;

    new-instance v1, Lcom/thoughtworks/xstream/converters/javabean/ComparingPropertySorter;

    invoke-direct {v1, p1}, Lcom/thoughtworks/xstream/converters/javabean/ComparingPropertySorter;-><init>(Ljava/util/Comparator;)V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;-><init>(Lcom/thoughtworks/xstream/converters/javabean/PropertySorter;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;-><init>(Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 65
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


# virtual methods
.method public canInstantiate(Ljava/lang/Class;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 142
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/thoughtworks/xstream/converters/ErrorWritingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    nop

    :catch_0
    :cond_0
    return v0
.end method

.method protected canStreamProperty(Ljava/beans/PropertyDescriptor;)Z
    .locals 1

    .line 177
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected getDefaultConstrutor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3

    .line 156
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    const/4 v0, 0x0

    .line 157
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 158
    aget-object v1, p1, v0

    .line 159
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/beans/PropertyDescriptor;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->propertyDictionary:Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;

    invoke-virtual {v0, p2, p1}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->propertyDescriptor(Ljava/lang/Class;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->getProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/beans/PropertyDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method protected getSerializableProperties(Ljava/lang/Object;)[Ljava/beans/PropertyDescriptor;
    .locals 3

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->propertyDictionary:Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->propertiesFor(Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyDescriptor;

    .line 169
    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->canStreamProperty(Ljava/beans/PropertyDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/beans/PropertyDescriptor;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/beans/PropertyDescriptor;

    check-cast p1, [Ljava/beans/PropertyDescriptor;

    return-object p1
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    const-string v0, "Cannot construct type"

    .line 65
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->class$java$lang$Void:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.Void"

    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->class$java$lang$Void:Ljava/lang/Class;

    :cond_0
    if-eq p1, v1, :cond_1

    .line 69
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 77
    new-instance v2, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v2, v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 75
    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    invoke-direct {v2, v0, v1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 73
    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    invoke-direct {v2, v0, v1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 71
    new-instance v2, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v2, v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 66
    :cond_1
    new-instance v2, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v0, "Security alert: Marshalling rejected"

    invoke-direct {v2, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 80
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "construction-type"

    invoke-virtual {v2, v0, p1}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    throw v2
.end method

.method public propertyDefinedInClass(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->propertyDictionary:Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;

    invoke-virtual {v0, p2, p1}, Lcom/thoughtworks/xstream/converters/javabean/PropertyDictionary;->propertyDescriptorOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/beans/PropertyDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public propertyWriteable(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 0

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->getProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/beans/PropertyDescriptor;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public visitSerializableProperties(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider$Visitor;)V
    .locals 10

    const-string v0, "Cannot get property"

    .line 85
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->getSerializableProperties(Ljava/lang/Object;)[Ljava/beans/PropertyDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 86
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    .line 88
    aget-object v5, v1, v3

    .line 90
    :try_start_0
    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    .line 91
    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v7

    .line 92
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    .line 93
    invoke-interface {p2, v7, v8}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider$Visitor;->shouldVisit(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-array v9, v2, [Ljava/lang/Object;

    .line 94
    invoke-virtual {v6, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 95
    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v9

    invoke-interface {p2, v7, v9, v8, v6}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider$Visitor;->visit(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 102
    new-instance v6, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v6, v0, v4}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v4

    .line 100
    new-instance v6, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v7, "Cannot access property"

    invoke-direct {v6, v7, v4}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v4

    .line 98
    new-instance v6, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v6, v0, v4}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    move-object v4, v6

    :cond_0
    :goto_2
    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_1
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "property"

    invoke-virtual {v4, p2, p1}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    throw v4

    :cond_2
    return-void
.end method

.method public writeProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "Cannot set property"

    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/thoughtworks/xstream/converters/javabean/BeanProvider;->getProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/beans/PropertyDescriptor;

    move-result-object p2

    .line 115
    :try_start_0
    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p3, 0x0

    goto :goto_1

    :catch_0
    move-exception p3

    .line 121
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-virtual {p3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p3

    invoke-direct {v1, v0, p3}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p3

    .line 119
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v1, "Cannot access property"

    invoke-direct {v0, v1, p3}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p3, v0

    goto :goto_1

    :catch_2
    move-exception p3

    .line 117
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    invoke-direct {v1, v0, p3}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object p3, v1

    :goto_1
    if-nez p3, :cond_0

    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "property"

    invoke-virtual {p3, p2, p1}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    throw p3
.end method
