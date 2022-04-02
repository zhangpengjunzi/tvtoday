.class public Lcom/thoughtworks/xstream/converters/enums/EnumMapConverter;
.super Lcom/thoughtworks/xstream/converters/collections/MapConverter;
.source "EnumMapConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/converters/enums/EnumMapConverter$Reflections;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/collections/MapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    .line 45
    const-class v0, Ljava/util/EnumMap;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/thoughtworks/xstream/converters/enums/EnumMapConverter$Reflections;->access$000()Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 3

    .line 49
    invoke-static {}, Lcom/thoughtworks/xstream/converters/enums/EnumMapConverter$Reflections;->access$000()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/thoughtworks/xstream/core/util/Fields;->read(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 50
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/enums/EnumMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    const-string v2, "enum-type"

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/enums/EnumMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/MapConverter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/enums/EnumMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    const-string v1, "enum-type"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/enums/EnumMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    invoke-interface {p1, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 65
    invoke-virtual {p0, p1, p2, v1}, Lcom/thoughtworks/xstream/converters/enums/EnumMapConverter;->populateMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Map;)V

    return-object v1

    .line 61
    :cond_0
    new-instance p1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string p2, "No EnumType specified for EnumMap"

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
