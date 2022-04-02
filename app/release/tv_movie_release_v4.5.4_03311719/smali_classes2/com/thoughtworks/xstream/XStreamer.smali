.class public Lcom/thoughtworks/xstream/XStreamer;
.super Ljava/lang/Object;
.source "XStreamer.java"


# static fields
.field private static final PERMISSIONS:[Lcom/thoughtworks/xstream/security/TypePermission;

.field static synthetic class$com$thoughtworks$xstream$MarshallingStrategy:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$XStream:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$ConverterLookup:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$ConverterMatcher:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$ConverterRegistry:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$MarshallingContext:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$UnmarshallingContext:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$javabean$JavaBeanProvider:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$reflection$FieldKeySorter:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$reflection$ReflectionProvider:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$core$JVM:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$io$HierarchicalStreamDriver:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$io$naming$NameCoder:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$security$TypePermission:Ljava/lang/Class;

.field static synthetic class$javax$xml$datatype$DatatypeFactory:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/thoughtworks/xstream/security/TypePermission;

    .line 53
    new-instance v1, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v2, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$ConverterMatcher:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "com.thoughtworks.xstream.converters.ConverterMatcher"

    .line 54
    invoke-static {v2}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$ConverterMatcher:Ljava/lang/Class;

    :cond_0
    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v3, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "com.thoughtworks.xstream.mapper.Mapper"

    .line 55
    invoke-static {v3}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    :cond_1
    invoke-direct {v1, v3}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$XStream:Ljava/lang/Class;

    if-nez v5, :cond_2

    const-string v5, "com.thoughtworks.xstream.XStream"

    .line 56
    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$XStream:Ljava/lang/Class;

    :cond_2
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/4 v1, 0x3

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$reflection$ReflectionProvider:Ljava/lang/Class;

    if-nez v5, :cond_3

    const-string v5, "com.thoughtworks.xstream.converters.reflection.ReflectionProvider"

    .line 57
    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$reflection$ReflectionProvider:Ljava/lang/Class;

    :cond_3
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/4 v1, 0x4

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$javabean$JavaBeanProvider:Ljava/lang/Class;

    if-nez v5, :cond_4

    const-string v5, "com.thoughtworks.xstream.converters.javabean.JavaBeanProvider"

    .line 58
    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$javabean$JavaBeanProvider:Ljava/lang/Class;

    :cond_4
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/4 v1, 0x5

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$reflection$FieldKeySorter:Ljava/lang/Class;

    if-nez v5, :cond_5

    const-string v5, "com.thoughtworks.xstream.converters.reflection.FieldKeySorter"

    .line 59
    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$reflection$FieldKeySorter:Ljava/lang/Class;

    :cond_5
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/4 v1, 0x6

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$ConverterLookup:Ljava/lang/Class;

    if-nez v5, :cond_6

    const-string v5, "com.thoughtworks.xstream.converters.ConverterLookup"

    .line 60
    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$ConverterLookup:Ljava/lang/Class;

    :cond_6
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/4 v1, 0x7

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$ConverterRegistry:Ljava/lang/Class;

    if-nez v5, :cond_7

    const-string v5, "com.thoughtworks.xstream.converters.ConverterRegistry"

    .line 61
    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$ConverterRegistry:Ljava/lang/Class;

    :cond_7
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/16 v1, 0x8

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$io$HierarchicalStreamDriver:Ljava/lang/Class;

    if-nez v5, :cond_8

    const-string v5, "com.thoughtworks.xstream.io.HierarchicalStreamDriver"

    .line 62
    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$io$HierarchicalStreamDriver:Ljava/lang/Class;

    :cond_8
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/16 v1, 0x9

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$MarshallingStrategy:Ljava/lang/Class;

    if-nez v5, :cond_9

    const-string v5, "com.thoughtworks.xstream.MarshallingStrategy"

    .line 63
    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$MarshallingStrategy:Ljava/lang/Class;

    :cond_9
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/16 v1, 0xa

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$MarshallingContext:Ljava/lang/Class;

    if-nez v5, :cond_a

    const-string v5, "com.thoughtworks.xstream.converters.MarshallingContext"

    .line 64
    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$MarshallingContext:Ljava/lang/Class;

    :cond_a
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/16 v1, 0xb

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$UnmarshallingContext:Ljava/lang/Class;

    if-nez v5, :cond_b

    const-string v5, "com.thoughtworks.xstream.converters.UnmarshallingContext"

    .line 65
    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$converters$UnmarshallingContext:Ljava/lang/Class;

    :cond_b
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/16 v1, 0xc

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$io$naming$NameCoder:Ljava/lang/Class;

    if-nez v5, :cond_c

    const-string v5, "com.thoughtworks.xstream.io.naming.NameCoder"

    .line 66
    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$io$naming$NameCoder:Ljava/lang/Class;

    :cond_c
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/16 v1, 0xd

    new-instance v4, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$security$TypePermission:Ljava/lang/Class;

    if-nez v5, :cond_d

    const-string v5, "com.thoughtworks.xstream.security.TypePermission"

    .line 67
    invoke-static {v5}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$security$TypePermission:Ljava/lang/Class;

    :cond_d
    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v4, v0, v1

    const/16 v1, 0xe

    new-instance v4, Lcom/thoughtworks/xstream/security/WildcardTypePermission;

    new-array v3, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v6, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$core$JVM:Ljava/lang/Class;

    if-nez v6, :cond_e

    const-string v6, "com.thoughtworks.xstream.core.JVM"

    .line 68
    invoke-static {v6}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/thoughtworks/xstream/XStreamer;->class$com$thoughtworks$xstream$core$JVM:Ljava/lang/Class;

    :cond_e
    invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, ".**"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-direct {v4, v3}, Lcom/thoughtworks/xstream/security/WildcardTypePermission;-><init>([Ljava/lang/String;)V

    aput-object v4, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    sget-object v3, Lcom/thoughtworks/xstream/XStreamer;->class$javax$xml$datatype$DatatypeFactory:Ljava/lang/Class;

    if-nez v3, :cond_f

    const-string v3, "javax.xml.datatype.DatatypeFactory"

    .line 69
    invoke-static {v3}, Lcom/thoughtworks/xstream/XStreamer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/XStreamer;->class$javax$xml$datatype$DatatypeFactory:Ljava/lang/Class;

    :cond_f
    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/thoughtworks/xstream/XStreamer;->PERMISSIONS:[Lcom/thoughtworks/xstream/security/TypePermission;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 54
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

.method public static getDefaultPermissions()[Lcom/thoughtworks/xstream/security/TypePermission;
    .locals 1

    .line 298
    sget-object v0, Lcom/thoughtworks/xstream/XStreamer;->PERMISSIONS:[Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/thoughtworks/xstream/security/TypePermission;

    check-cast v0, [Lcom/thoughtworks/xstream/security/TypePermission;

    return-object v0
.end method


# virtual methods
.method public fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 253
    sget-object v0, Lcom/thoughtworks/xstream/XStreamer;->PERMISSIONS:[Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/XStreamer;->fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/io/Reader;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/io/Reader;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 269
    new-instance v0, Lcom/thoughtworks/xstream/XStream;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    const/4 v1, 0x0

    .line 270
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 271
    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    :cond_0
    invoke-interface {p1, p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object p1

    .line 274
    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/XStream;->createObjectInputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/io/ObjectInputStream;

    move-result-object p2

    .line 276
    :try_start_0
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/thoughtworks/xstream/XStream;

    .line 277
    invoke-virtual {p3, p1}, Lcom/thoughtworks/xstream/XStream;->createObjectInputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/io/ObjectInputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 279
    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 284
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->close()V

    return-object p3

    :catchall_0
    move-exception p3

    .line 281
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V

    .line 282
    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 284
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->close()V

    .line 285
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 177
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStreamer;->fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/ObjectStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 181
    new-instance p2, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v0, "Unexpected IO error from a StringReader"

    invoke-direct {p2, v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 179
    throw p1
.end method

.method public fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/lang/String;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 200
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/thoughtworks/xstream/XStreamer;->fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/io/Reader;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/ObjectStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 204
    new-instance p2, Lcom/thoughtworks/xstream/io/StreamException;

    const-string p3, "Unexpected IO error from a StringReader"

    invoke-direct {p2, p3, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 202
    throw p1
.end method

.method public fromXML(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XppDriver;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XppDriver;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/thoughtworks/xstream/XStreamer;->fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromXML(Ljava/io/Reader;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 238
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XppDriver;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XppDriver;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Lcom/thoughtworks/xstream/XStreamer;->fromXML(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/io/Reader;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromXML(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 133
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStreamer;->fromXML(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/ObjectStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 137
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v1, "Unexpected IO error from a StringReader"

    invoke-direct {v0, v1, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 135
    throw p1
.end method

.method public fromXML(Ljava/lang/String;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 155
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/XStreamer;->fromXML(Ljava/io/Reader;[Lcom/thoughtworks/xstream/security/TypePermission;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/ObjectStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 159
    new-instance p2, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v0, "Unexpected IO error from a StringReader"

    invoke-direct {p2, v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 157
    throw p1
.end method

.method public toXML(Lcom/thoughtworks/xstream/XStream;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 83
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/XStreamer;->toXML(Lcom/thoughtworks/xstream/XStream;Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/ObjectStreamException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 87
    new-instance p2, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v0, "Unexpected IO error from a StringWriter"

    invoke-direct {p2, v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 85
    throw p1
.end method

.method public toXML(Lcom/thoughtworks/xstream/XStream;Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/thoughtworks/xstream/XStream;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/XStream;-><init>()V

    .line 110
    invoke-virtual {v0, p3}, Lcom/thoughtworks/xstream/XStream;->createObjectOutputStream(Ljava/io/Writer;)Ljava/io/ObjectOutputStream;

    move-result-object v0

    .line 112
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 114
    invoke-virtual {p1, p2, p3}, Lcom/thoughtworks/xstream/XStream;->toXML(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 117
    throw p1
.end method
