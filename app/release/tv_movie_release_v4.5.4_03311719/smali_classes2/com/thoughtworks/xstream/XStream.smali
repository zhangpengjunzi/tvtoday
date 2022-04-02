.class public Lcom/thoughtworks/xstream/XStream;
.super Ljava/lang/Object;
.source "XStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/XStream$InitializationException;
    }
.end annotation


# static fields
.field private static final ANNOTATION_MAPPER_TYPE:Ljava/lang/String; = "com.thoughtworks.xstream.mapper.AnnotationMapper"

.field public static final COLLECTION_UPDATE_LIMIT:Ljava/lang/String; = "XStreamCollectionUpdateLimit"

.field public static final COLLECTION_UPDATE_SECONDS:Ljava/lang/String; = "XStreamCollectionUpdateSeconds"

.field public static final ID_REFERENCES:I = 0x3ea

.field private static final IGNORE_ALL:Ljava/util/regex/Pattern;

.field public static final NO_REFERENCES:I = 0x3e9

.field public static final PRIORITY_LOW:I = -0xa

.field public static final PRIORITY_NORMAL:I = 0x0

.field public static final PRIORITY_VERY_HIGH:I = 0x2710

.field public static final PRIORITY_VERY_LOW:I = -0x14

.field public static final SINGLE_NODE_XPATH_ABSOLUTE_REFERENCES:I = 0x3ee

.field public static final SINGLE_NODE_XPATH_RELATIVE_REFERENCES:I = 0x3ed

.field public static final XPATH_ABSOLUTE_REFERENCES:I = 0x3ec

.field public static final XPATH_RELATIVE_REFERENCES:I = 0x3eb

.field static synthetic array$Ljava$lang$String:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$ConverterLookup:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$ConverterRegistry:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$converters$reflection$ReflectionProvider:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$core$ClassLoaderReference:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$AnnotationConfiguration:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$AttributeAliasingMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$AttributeMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$ClassAliasingMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$DefaultImplementationsMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$ElementIgnoringMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$FieldAliasingMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$ImmutableTypesMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$ImplicitCollectionMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$LocalConversionMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$PackageAliasingMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$SecurityMapper:Ljava/lang/Class;

.field static synthetic class$com$thoughtworks$xstream$mapper$SystemAttributeAliasingMapper:Ljava/lang/Class;

.field static synthetic class$java$io$File:Ljava/lang/Class;

.field static synthetic class$java$lang$Boolean:Ljava/lang/Class;

.field static synthetic class$java$lang$Byte:Ljava/lang/Class;

.field static synthetic class$java$lang$Character:Ljava/lang/Class;

.field static synthetic class$java$lang$Class:Ljava/lang/Class;

.field static synthetic class$java$lang$Double:Ljava/lang/Class;

.field static synthetic class$java$lang$Float:Ljava/lang/Class;

.field static synthetic class$java$lang$Integer:Ljava/lang/Class;

.field static synthetic class$java$lang$Long:Ljava/lang/Class;

.field static synthetic class$java$lang$Number:Ljava/lang/Class;

.field static synthetic class$java$lang$Object:Ljava/lang/Class;

.field static synthetic class$java$lang$Short:Ljava/lang/Class;

.field static synthetic class$java$lang$StackTraceElement:Ljava/lang/Class;

.field static synthetic class$java$lang$String:Ljava/lang/Class;

.field static synthetic class$java$lang$StringBuffer:Ljava/lang/Class;

.field static synthetic class$java$lang$Throwable:Ljava/lang/Class;

.field static synthetic class$java$lang$reflect$Constructor:Ljava/lang/Class;

.field static synthetic class$java$lang$reflect$Field:Ljava/lang/Class;

.field static synthetic class$java$lang$reflect$Member:Ljava/lang/Class;

.field static synthetic class$java$lang$reflect$Method:Ljava/lang/Class;

.field static synthetic class$java$math$BigDecimal:Ljava/lang/Class;

.field static synthetic class$java$math$BigInteger:Ljava/lang/Class;

.field static synthetic class$java$net$URI:Ljava/lang/Class;

.field static synthetic class$java$net$URL:Ljava/lang/Class;

.field static synthetic class$java$nio$charset$Charset:Ljava/lang/Class;

.field static synthetic class$java$text$DecimalFormatSymbols:Ljava/lang/Class;

.field static synthetic class$java$util$ArrayList:Ljava/lang/Class;

.field static synthetic class$java$util$BitSet:Ljava/lang/Class;

.field static synthetic class$java$util$Calendar:Ljava/lang/Class;

.field static synthetic class$java$util$Collection:Ljava/lang/Class;

.field static synthetic class$java$util$Currency:Ljava/lang/Class;

.field static synthetic class$java$util$Date:Ljava/lang/Class;

.field static synthetic class$java$util$GregorianCalendar:Ljava/lang/Class;

.field static synthetic class$java$util$HashMap:Ljava/lang/Class;

.field static synthetic class$java$util$HashSet:Ljava/lang/Class;

.field static synthetic class$java$util$Hashtable:Ljava/lang/Class;

.field static synthetic class$java$util$LinkedList:Ljava/lang/Class;

.field static synthetic class$java$util$List:Ljava/lang/Class;

.field static synthetic class$java$util$Locale:Ljava/lang/Class;

.field static synthetic class$java$util$Map:Ljava/lang/Class;

.field static synthetic class$java$util$Map$Entry:Ljava/lang/Class;

.field static synthetic class$java$util$Properties:Ljava/lang/Class;

.field static synthetic class$java$util$Set:Ljava/lang/Class;

.field static synthetic class$java$util$SortedSet:Ljava/lang/Class;

.field static synthetic class$java$util$TimeZone:Ljava/lang/Class;

.field static synthetic class$java$util$TreeMap:Ljava/lang/Class;

.field static synthetic class$java$util$TreeSet:Ljava/lang/Class;

.field static synthetic class$java$util$Vector:Ljava/lang/Class;

.field static synthetic class$java$util$regex$Pattern:Ljava/lang/Class;


# instance fields
.field private annotationConfiguration:Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;

.field private attributeAliasingMapper:Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;

.field private attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

.field private classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

.field private classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

.field private collectionUpdateLimit:I

.field private converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

.field private converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

.field private defaultImplementationsMapper:Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

.field private elementIgnoringMapper:Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;

.field private fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

.field private hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

.field private immutableTypesMapper:Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;

.field private implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

.field private localConversionMapper:Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

.field private mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

.field private marshallingStrategy:Lcom/thoughtworks/xstream/MarshallingStrategy;

.field private packageAliasingMapper:Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;

.field private reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

.field private securityMapper:Lcom/thoughtworks/xstream/mapper/SecurityMapper;

.field private systemAttributeAliasingMapper:Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".*"

    .line 339
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->IGNORE_ALL:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    .line 351
    move-object v1, v0

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    new-instance v2, Lcom/thoughtworks/xstream/io/xml/XppDriver;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/io/xml/XppDriver;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V
    .locals 2

    const/4 v0, 0x0

    .line 364
    check-cast v0, Lcom/thoughtworks/xstream/mapper/Mapper;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/XppDriver;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/XppDriver;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V
    .locals 1

    const/4 v0, 0x0

    .line 388
    check-cast v0, Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V
    .locals 1

    const/4 v0, 0x0

    .line 419
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 6

    .line 470
    new-instance v5, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;

    invoke-direct {v5}, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/DefaultConverterLookup;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/converters/ConverterRegistry;)V
    .locals 1

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 299
    iput v0, p0, Lcom/thoughtworks/xstream/XStream;->collectionUpdateLimit:I

    if-nez p1, :cond_0

    .line 535
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->newReflectionProvider()Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    move-result-object p1

    .line 537
    :cond_0
    iput-object p1, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    .line 538
    iput-object p2, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    .line 539
    iput-object p3, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    .line 540
    iput-object p5, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    .line 541
    iput-object p6, p0, Lcom/thoughtworks/xstream/XStream;->converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    if-nez p4, :cond_1

    .line 542
    invoke-direct {p0}, Lcom/thoughtworks/xstream/XStream;->buildMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object p4

    :cond_1
    iput-object p4, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 544
    invoke-direct {p0}, Lcom/thoughtworks/xstream/XStream;->setupMappers()V

    .line 545
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/XStream;->setupSecurity()V

    .line 546
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/XStream;->setupAliases()V

    .line 547
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/XStream;->setupDefaultImplementations()V

    .line 548
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/XStream;->setupConverters()V

    .line 549
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/XStream;->setupImmutableTypes()V

    const/16 p1, 0x3eb

    .line 550
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/XStream;->setMode(I)V

    return-void
.end method

.method private constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/DefaultConverterLookup;)V
    .locals 7

    .line 476
    new-instance v5, Lcom/thoughtworks/xstream/XStream$1;

    invoke-direct {v5, p5}, Lcom/thoughtworks/xstream/XStream$1;-><init>(Lcom/thoughtworks/xstream/core/DefaultConverterLookup;)V

    new-instance v6, Lcom/thoughtworks/xstream/XStream$2;

    invoke-direct {v6, p5}, Lcom/thoughtworks/xstream/XStream$2;-><init>(Lcom/thoughtworks/xstream/core/DefaultConverterLookup;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/converters/ConverterRegistry;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/lang/ClassLoader;)V
    .locals 1

    const/4 v0, 0x0

    .line 431
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/lang/ClassLoader;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/lang/ClassLoader;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 6

    .line 450
    new-instance v3, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v3, p3}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v5, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;

    invoke-direct {v5}, Lcom/thoughtworks/xstream/core/DefaultConverterLookup;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/DefaultConverterLookup;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/lang/ClassLoader;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/converters/ConverterRegistry;)V
    .locals 7

    .line 506
    new-instance v3, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v3, p3}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Lcom/thoughtworks/xstream/core/ClassLoaderReference;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/converters/ConverterRegistry;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V
    .locals 1

    .line 403
    new-instance v0, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;-><init>()V

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;Ljava/lang/ClassLoader;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V
    .locals 2

    const/4 v0, 0x0

    .line 377
    move-object v1, v0

    check-cast v1, Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {p0, v0, v1, p1}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    return-void
.end method

.method private addImmutableTypeDynamically(Ljava/lang/String;Z)V
    .locals 0

    .line 1181
    invoke-static {p1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1183
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    :cond_0
    return-void
.end method

.method private aliasDynamically(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 888
    invoke-static {p2}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 890
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method private buildMapper()Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 9

    .line 554
    new-instance v0, Lcom/thoughtworks/xstream/mapper/DefaultMapper;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/mapper/DefaultMapper;-><init>(Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    .line 555
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/XStream;->useXStream11XmlFriendlyMapper()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    new-instance v1, Lcom/thoughtworks/xstream/mapper/XStream11XmlFriendlyMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/XStream11XmlFriendlyMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    move-object v0, v1

    .line 558
    :cond_0
    new-instance v1, Lcom/thoughtworks/xstream/mapper/DynamicProxyMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/DynamicProxyMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 559
    new-instance v0, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 560
    new-instance v1, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 561
    new-instance v0, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 562
    new-instance v1, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 563
    new-instance v0, Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 564
    new-instance v1, Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 565
    new-instance v0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-direct {v0, v1, v2}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    .line 566
    new-instance v1, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/OuterClassMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 567
    new-instance v0, Lcom/thoughtworks/xstream/mapper/ArrayMapper;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/mapper/ArrayMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 568
    new-instance v1, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 569
    new-instance v0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-direct {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    const/4 v1, 0x5

    .line 570
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v2

    const-string v3, "com.thoughtworks.xstream.mapper.Mapper"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    new-array v2, v5, [Ljava/lang/Class;

    .line 571
    sget-object v6, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v6, :cond_1

    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    :cond_1
    aput-object v6, v2, v4

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, v4

    const-string v0, "com.thoughtworks.xstream.mapper.EnumMapper"

    invoke-direct {p0, v0, v2, v6}, Lcom/thoughtworks/xstream/XStream;->buildMapperDynamically(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    .line 574
    :cond_2
    new-instance v2, Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    invoke-direct {v2, v0}, Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 575
    new-instance v0, Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    const/16 v2, 0x8

    .line 576
    invoke-static {v2}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v2

    if-eqz v2, :cond_4

    new-array v2, v5, [Ljava/lang/Class;

    .line 577
    sget-object v6, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v6, :cond_3

    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    :cond_3
    aput-object v6, v2, v4

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, v4

    const-string v0, "com.thoughtworks.xstream.mapper.LambdaMapper"

    invoke-direct {p0, v0, v2, v6}, Lcom/thoughtworks/xstream/XStream;->buildMapperDynamically(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    .line 580
    :cond_4
    new-instance v2, Lcom/thoughtworks/xstream/mapper/SecurityMapper;

    invoke-direct {v2, v0}, Lcom/thoughtworks/xstream/mapper/SecurityMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 581
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_a

    new-array v0, v1, [Ljava/lang/Class;

    .line 582
    sget-object v6, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v6, :cond_5

    .line 583
    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    :cond_5
    aput-object v6, v0, v4

    sget-object v3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$converters$ConverterRegistry:Ljava/lang/Class;

    if-nez v3, :cond_6

    const-string v3, "com.thoughtworks.xstream.converters.ConverterRegistry"

    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$converters$ConverterRegistry:Ljava/lang/Class;

    :cond_6
    aput-object v3, v0, v5

    sget-object v3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$converters$ConverterLookup:Ljava/lang/Class;

    if-nez v3, :cond_7

    const-string v3, "com.thoughtworks.xstream.converters.ConverterLookup"

    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$converters$ConverterLookup:Ljava/lang/Class;

    :cond_7
    const/4 v6, 0x2

    aput-object v3, v0, v6

    sget-object v3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$core$ClassLoaderReference:Ljava/lang/Class;

    if-nez v3, :cond_8

    const-string v3, "com.thoughtworks.xstream.core.ClassLoaderReference"

    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$core$ClassLoaderReference:Ljava/lang/Class;

    :cond_8
    const/4 v7, 0x3

    aput-object v3, v0, v7

    sget-object v3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$converters$reflection$ReflectionProvider:Ljava/lang/Class;

    if-nez v3, :cond_9

    const-string v3, "com.thoughtworks.xstream.converters.reflection.ReflectionProvider"

    .line 584
    invoke-static {v3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$converters$reflection$ReflectionProvider:Ljava/lang/Class;

    :cond_9
    const/4 v8, 0x4

    aput-object v3, v0, v8

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    aput-object v2, v1, v8

    const-string v2, "com.thoughtworks.xstream.mapper.AnnotationMapper"

    .line 582
    invoke-direct {p0, v2, v0, v1}, Lcom/thoughtworks/xstream/XStream;->buildMapperDynamically(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    .line 587
    :cond_a
    check-cast v2, Lcom/thoughtworks/xstream/mapper/MapperWrapper;

    invoke-virtual {p0, v2}, Lcom/thoughtworks/xstream/XStream;->wrapMapper(Lcom/thoughtworks/xstream/mapper/MapperWrapper;)Lcom/thoughtworks/xstream/mapper/MapperWrapper;

    move-result-object v0

    .line 588
    new-instance v1, Lcom/thoughtworks/xstream/mapper/CachingMapper;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/mapper/CachingMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-object v1
.end method

.method private buildMapperDynamically(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 3

    const-string v0, "Could not instantiate mapper : "

    const/4 v1, 0x0

    .line 595
    :try_start_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p1, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 596
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    .line 597
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/thoughtworks/xstream/mapper/Mapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 602
    new-instance p3, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p2

    .line 599
    new-instance p3, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 571
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

.method private denyTypeHierarchyDynamically(Ljava/lang/String;)V
    .locals 0

    .line 727
    invoke-static {p1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 729
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/XStream;->denyTypeHierarchy(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method private registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 3

    const-string v0, "Could not instantiate converter : "

    const/4 v1, 0x0

    .line 1060
    :try_start_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p1, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 1061
    invoke-virtual {v1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    .line 1062
    invoke-virtual {p3, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 1063
    instance-of p4, p3, Lcom/thoughtworks/xstream/converters/Converter;

    if-eqz p4, :cond_0

    .line 1064
    check-cast p3, Lcom/thoughtworks/xstream/converters/Converter;

    invoke-virtual {p0, p3, p2}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    goto :goto_0

    .line 1065
    :cond_0
    instance-of p4, p3, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    if-eqz p4, :cond_1

    .line 1066
    check-cast p3, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    invoke-virtual {p0, p3, p2}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p2

    .line 1072
    new-instance p3, Lcom/thoughtworks/xstream/InitializationException;

    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p2

    .line 1069
    new-instance p3, Lcom/thoughtworks/xstream/InitializationException;

    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public static setupDefaultSecurity(Lcom/thoughtworks/xstream/XStream;)V
    .locals 0

    return-void
.end method

.method private setupMappers()V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$PackageAliasingMapper:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "com.thoughtworks.xstream.mapper.PackageAliasingMapper"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$PackageAliasingMapper:Ljava/lang/Class;

    :cond_0
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->packageAliasingMapper:Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;

    .line 620
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ClassAliasingMapper:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "com.thoughtworks.xstream.mapper.ClassAliasingMapper"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ClassAliasingMapper:Ljava/lang/Class;

    :cond_1
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    .line 621
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ElementIgnoringMapper:Ljava/lang/Class;

    if-nez v1, :cond_2

    const-string v1, "com.thoughtworks.xstream.mapper.ElementIgnoringMapper"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ElementIgnoringMapper:Ljava/lang/Class;

    :cond_2
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->elementIgnoringMapper:Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;

    .line 622
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$FieldAliasingMapper:Ljava/lang/Class;

    if-nez v1, :cond_3

    const-string v1, "com.thoughtworks.xstream.mapper.FieldAliasingMapper"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$FieldAliasingMapper:Ljava/lang/Class;

    :cond_3
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    .line 623
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeMapper:Ljava/lang/Class;

    if-nez v1, :cond_4

    const-string v1, "com.thoughtworks.xstream.mapper.AttributeMapper"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeMapper:Ljava/lang/Class;

    :cond_4
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    .line 624
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeAliasingMapper:Ljava/lang/Class;

    if-nez v1, :cond_5

    const-string v1, "com.thoughtworks.xstream.mapper.AttributeAliasingMapper"

    .line 625
    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeAliasingMapper:Ljava/lang/Class;

    .line 624
    :cond_5
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeAliasingMapper:Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;

    .line 626
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$SystemAttributeAliasingMapper:Ljava/lang/Class;

    if-nez v1, :cond_6

    const-string v1, "com.thoughtworks.xstream.mapper.SystemAttributeAliasingMapper"

    .line 627
    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$SystemAttributeAliasingMapper:Ljava/lang/Class;

    .line 626
    :cond_6
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->systemAttributeAliasingMapper:Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;

    .line 628
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ImplicitCollectionMapper:Ljava/lang/Class;

    if-nez v1, :cond_7

    const-string v1, "com.thoughtworks.xstream.mapper.ImplicitCollectionMapper"

    .line 629
    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ImplicitCollectionMapper:Ljava/lang/Class;

    .line 628
    :cond_7
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    .line 630
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$DefaultImplementationsMapper:Ljava/lang/Class;

    if-nez v1, :cond_8

    const-string v1, "com.thoughtworks.xstream.mapper.DefaultImplementationsMapper"

    .line 631
    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$DefaultImplementationsMapper:Ljava/lang/Class;

    .line 630
    :cond_8
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->defaultImplementationsMapper:Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

    .line 632
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ImmutableTypesMapper:Ljava/lang/Class;

    if-nez v1, :cond_9

    const-string v1, "com.thoughtworks.xstream.mapper.ImmutableTypesMapper"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ImmutableTypesMapper:Ljava/lang/Class;

    :cond_9
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->immutableTypesMapper:Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;

    .line 633
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$LocalConversionMapper:Ljava/lang/Class;

    if-nez v1, :cond_a

    const-string v1, "com.thoughtworks.xstream.mapper.LocalConversionMapper"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$LocalConversionMapper:Ljava/lang/Class;

    :cond_a
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->localConversionMapper:Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    .line 634
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$SecurityMapper:Ljava/lang/Class;

    if-nez v1, :cond_b

    const-string v1, "com.thoughtworks.xstream.mapper.SecurityMapper"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$SecurityMapper:Ljava/lang/Class;

    :cond_b
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/SecurityMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->securityMapper:Lcom/thoughtworks/xstream/mapper/SecurityMapper;

    .line 635
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AnnotationConfiguration:Ljava/lang/Class;

    if-nez v1, :cond_c

    const-string v1, "com.thoughtworks.xstream.mapper.AnnotationConfiguration"

    .line 636
    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AnnotationConfiguration:Ljava/lang/Class;

    .line 635
    :cond_c
    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;

    iput-object v0, p0, Lcom/thoughtworks/xstream/XStream;->annotationConfiguration:Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;

    return-void
.end method


# virtual methods
.method public addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    .line 1622
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->defaultImplementationsMapper:Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

    if-nez v0, :cond_1

    .line 1623
    new-instance p1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "No "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$DefaultImplementationsMapper:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.thoughtworks.xstream.mapper.DefaultImplementationsMapper"

    .line 1624
    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$DefaultImplementationsMapper:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " available"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1627
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public addImmutableType(Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x1

    .line 1638
    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    return-void
.end method

.method public addImmutableType(Ljava/lang/Class;Z)V
    .locals 1

    .line 1657
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->immutableTypesMapper:Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;

    if-nez v0, :cond_1

    .line 1658
    new-instance p1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "No "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ImmutableTypesMapper:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.thoughtworks.xstream.mapper.ImmutableTypesMapper"

    .line 1659
    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ImmutableTypesMapper:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " available"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1662
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;->addImmutableType(Ljava/lang/Class;Z)V

    return-void
.end method

.method public addImplicitArray(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 1824
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/XStream;->addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public addImplicitArray(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    .line 1838
    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/XStream;->addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public addImplicitArray(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1851
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/XStream;->addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1786
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/thoughtworks/xstream/XStream;->addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x0

    .line 1799
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/thoughtworks/xstream/XStream;->addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public addImplicitCollection(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1813
    invoke-virtual/range {v0 .. v5}, Lcom/thoughtworks/xstream/XStream;->addImplicitMap(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public addImplicitMap(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 1865
    invoke-virtual/range {v0 .. v5}, Lcom/thoughtworks/xstream/XStream;->addImplicitMap(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public addImplicitMap(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6

    .line 1881
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->implicitCollectionMapper:Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;

    if-nez v0, :cond_1

    .line 1882
    new-instance p1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "No "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object p3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ImplicitCollectionMapper:Ljava/lang/Class;

    if-nez p3, :cond_0

    const-string p3, "com.thoughtworks.xstream.mapper.ImplicitCollectionMapper"

    .line 1883
    invoke-static {p3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    sput-object p3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ImplicitCollectionMapper:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " available"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1886
    invoke-virtual/range {v0 .. v5}, Lcom/thoughtworks/xstream/mapper/ImplicitCollectionMapper;->add(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V
    .locals 1

    .line 2256
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->securityMapper:Lcom/thoughtworks/xstream/mapper/SecurityMapper;

    if-eqz v0, :cond_0

    .line 2257
    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/mapper/SecurityMapper;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    :cond_0
    return-void
.end method

.method public alias(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    .line 1438
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    if-nez v0, :cond_1

    .line 1439
    new-instance p1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "No "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ClassAliasingMapper:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.thoughtworks.xstream.mapper.ClassAliasingMapper"

    .line 1440
    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ClassAliasingMapper:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " available"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1443
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->addClassAlias(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public alias(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 1474
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1475
    invoke-virtual {p0, p3, p2}, Lcom/thoughtworks/xstream/XStream;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public aliasAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1558
    invoke-virtual {p0, p3, p1, p2}, Lcom/thoughtworks/xstream/XStream;->aliasField(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1559
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/XStream;->useAttributeFor(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public aliasAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1521
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeAliasingMapper:Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;

    if-nez v0, :cond_1

    .line 1522
    new-instance p1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "No "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeAliasingMapper:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.thoughtworks.xstream.mapper.AttributeAliasingMapper"

    .line 1523
    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeAliasingMapper:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " available"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1526
    :cond_1
    invoke-virtual {v0, p2, p1}, Lcom/thoughtworks/xstream/mapper/AttributeAliasingMapper;->addAliasFor(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public aliasField(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    .line 1505
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->fieldAliasingMapper:Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;

    if-nez v0, :cond_1

    .line 1506
    new-instance p1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "No "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object p3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$FieldAliasingMapper:Ljava/lang/Class;

    if-nez p3, :cond_0

    const-string p3, "com.thoughtworks.xstream.mapper.FieldAliasingMapper"

    .line 1507
    invoke-static {p3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    sput-object p3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$FieldAliasingMapper:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " available"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1510
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/mapper/FieldAliasingMapper;->addFieldAlias(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public aliasPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1488
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->packageAliasingMapper:Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;

    if-nez v0, :cond_1

    .line 1489
    new-instance p1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "No "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$PackageAliasingMapper:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.thoughtworks.xstream.mapper.PackageAliasingMapper"

    .line 1490
    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$PackageAliasingMapper:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " available"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1493
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/PackageAliasingMapper;->addPackageAlias(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public aliasSystemAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1540
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->systemAttributeAliasingMapper:Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;

    if-nez v0, :cond_1

    .line 1541
    new-instance p1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "No "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$SystemAttributeAliasingMapper:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.thoughtworks.xstream.mapper.SystemAttributeAliasingMapper"

    .line 1542
    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$SystemAttributeAliasingMapper:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " available"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1545
    :cond_1
    invoke-virtual {v0, p2, p1}, Lcom/thoughtworks/xstream/mapper/SystemAttributeAliasingMapper;->addAliasFor(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public aliasType(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    .line 1456
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    if-nez v0, :cond_1

    .line 1457
    new-instance p1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "No "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ClassAliasingMapper:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.thoughtworks.xstream.mapper.ClassAliasingMapper"

    .line 1458
    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ClassAliasingMapper:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " available"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1461
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;->addTypeAlias(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public allowTypeHierarchy(Ljava/lang/Class;)V
    .locals 1

    .line 2288
    new-instance v0, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public allowTypes([Ljava/lang/Class;)V
    .locals 1

    .line 2278
    new-instance v0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;-><init>([Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public allowTypes([Ljava/lang/String;)V
    .locals 1

    .line 2268
    new-instance v0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public allowTypesByRegExp([Ljava/lang/String;)V
    .locals 1

    .line 2298
    new-instance v0, Lcom/thoughtworks/xstream/security/RegExpTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public allowTypesByRegExp([Ljava/util/regex/Pattern;)V
    .locals 1

    .line 2308
    new-instance v0, Lcom/thoughtworks/xstream/security/RegExpTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;-><init>([Ljava/util/regex/Pattern;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public allowTypesByWildcard([Ljava/lang/String;)V
    .locals 1

    .line 2328
    new-instance v0, Lcom/thoughtworks/xstream/security/WildcardTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/WildcardTypePermission;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public autodetectAnnotations(Z)V
    .locals 1

    .line 2240
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->annotationConfiguration:Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;

    if-eqz v0, :cond_0

    .line 2241
    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;->autodetectAnnotations(Z)V

    :cond_0
    return-void
.end method

.method public createObjectInputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/io/ObjectInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2076
    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->createObjectInputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/DataHolder;)Ljava/io/ObjectInputStream;

    move-result-object p1

    return-object p1
.end method

.method public createObjectInputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/DataHolder;)Ljava/io/ObjectInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2088
    iget v0, p0, Lcom/thoughtworks/xstream/XStream;->collectionUpdateLimit:I

    if-ltz v0, :cond_1

    if-nez p2, :cond_0

    .line 2090
    new-instance p2, Lcom/thoughtworks/xstream/core/MapBackedDataHolder;

    invoke-direct {p2}, Lcom/thoughtworks/xstream/core/MapBackedDataHolder;-><init>()V

    .line 2092
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/thoughtworks/xstream/XStream;->collectionUpdateLimit:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const-string v1, "XStreamCollectionUpdateLimit"

    invoke-interface {p2, v1, v0}, Lcom/thoughtworks/xstream/converters/DataHolder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2093
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    const-string v1, "XStreamCollectionUpdateSeconds"

    invoke-interface {p2, v1, v0}, Lcom/thoughtworks/xstream/converters/DataHolder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2096
    :cond_1
    new-instance v0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;

    new-instance v1, Lcom/thoughtworks/xstream/XStream$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/thoughtworks/xstream/XStream$4;-><init>(Lcom/thoughtworks/xstream/XStream;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/DataHolder;)V

    iget-object p1, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v1, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;-><init>(Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    return-object v0
.end method

.method public createObjectInputStream(Ljava/io/InputStream;)Ljava/io/ObjectInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2055
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/XStream;->createObjectInputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/io/ObjectInputStream;

    move-result-object p1

    return-object p1
.end method

.method public createObjectInputStream(Ljava/io/Reader;)Ljava/io/ObjectInputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2044
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/XStream;->createObjectInputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/io/ObjectInputStream;

    move-result-object p1

    return-object p1
.end method

.method public createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)Ljava/io/ObjectOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "object-stream"

    .line 1929
    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;)Ljava/io/ObjectOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;)Ljava/io/ObjectOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1995
    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/XStream;->createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/DataHolder;)Ljava/io/ObjectOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/DataHolder;)Ljava/io/ObjectOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2008
    new-instance v0, Lcom/thoughtworks/xstream/io/StatefulWriter;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StatefulWriter;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    const/4 p1, 0x0

    .line 2009
    invoke-virtual {v0, p2, p1}, Lcom/thoughtworks/xstream/io/StatefulWriter;->startNode(Ljava/lang/String;Ljava/lang/Class;)V

    .line 2010
    new-instance p1, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;

    new-instance p2, Lcom/thoughtworks/xstream/XStream$3;

    invoke-direct {p2, p0, v0, p3}, Lcom/thoughtworks/xstream/XStream$3;-><init>(Lcom/thoughtworks/xstream/XStream;Lcom/thoughtworks/xstream/io/StatefulWriter;Lcom/thoughtworks/xstream/converters/DataHolder;)V

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream;-><init>(Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;)V

    return-object p1
.end method

.method public createObjectOutputStream(Ljava/io/OutputStream;)Ljava/io/ObjectOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1955
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object p1

    const-string v0, "object-stream"

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;)Ljava/io/ObjectOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public createObjectOutputStream(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/ObjectOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1966
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/XStream;->createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;)Ljava/io/ObjectOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public createObjectOutputStream(Ljava/io/Writer;)Ljava/io/ObjectOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1914
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object p1

    const-string v0, "object-stream"

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;)Ljava/io/ObjectOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public createObjectOutputStream(Ljava/io/Writer;Ljava/lang/String;)Ljava/io/ObjectOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1940
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/XStream;->createObjectOutputStream(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;)Ljava/io/ObjectOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public denyPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V
    .locals 1

    .line 2338
    new-instance v0, Lcom/thoughtworks/xstream/security/NoPermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/NoPermission;-><init>(Lcom/thoughtworks/xstream/security/TypePermission;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public denyTypeHierarchy(Ljava/lang/Class;)V
    .locals 1

    .line 2368
    new-instance v0, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/TypeHierarchyPermission;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->denyPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public denyTypes([Ljava/lang/Class;)V
    .locals 1

    .line 2358
    new-instance v0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;-><init>([Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->denyPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public denyTypes([Ljava/lang/String;)V
    .locals 1

    .line 2348
    new-instance v0, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/ExplicitTypePermission;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->denyPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public denyTypesByRegExp([Ljava/lang/String;)V
    .locals 1

    .line 2378
    new-instance v0, Lcom/thoughtworks/xstream/security/RegExpTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->denyPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public denyTypesByRegExp([Ljava/util/regex/Pattern;)V
    .locals 1

    .line 2388
    new-instance v0, Lcom/thoughtworks/xstream/security/RegExpTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/RegExpTypePermission;-><init>([Ljava/util/regex/Pattern;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->denyPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public denyTypesByWildcard([Ljava/lang/String;)V
    .locals 1

    .line 2408
    new-instance v0, Lcom/thoughtworks/xstream/security/WildcardTypePermission;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/security/WildcardTypePermission;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->denyPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    return-void
.end method

.method public fromXML(Ljava/io/File;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1315
    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/io/File;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromXML(Ljava/io/File;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1363
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object p1

    .line 1365
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->close()V

    .line 1368
    throw p2
.end method

.method public fromXML(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .line 1293
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromXML(Ljava/io/InputStream;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1379
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromXML(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1

    .line 1284
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromXML(Ljava/io/Reader;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1337
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromXML(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1275
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromXML(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1326
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/io/Reader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromXML(Ljava/net/URL;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1304
    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->fromXML(Ljava/net/URL;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public fromXML(Ljava/net/URL;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1350
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createReader(Ljava/net/URL;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 2143
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoaderReference()Lcom/thoughtworks/xstream/core/ClassLoaderReference;
    .locals 1

    .line 2154
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    return-object v0
.end method

.method public getConverterLookup()Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .locals 1

    .line 1735
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    return-object v0
.end method

.method public getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 1

    .line 1721
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-object v0
.end method

.method public getReflectionProvider()Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;
    .locals 1

    .line 1731
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    return-object v0
.end method

.method public ignoreUnknownElements()V
    .locals 1

    .line 2179
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->IGNORE_ALL:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->ignoreUnknownElements(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public ignoreUnknownElements(Ljava/lang/String;)V
    .locals 0

    .line 2189
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/XStream;->ignoreUnknownElements(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public ignoreUnknownElements(Ljava/util/regex/Pattern;)V
    .locals 2

    .line 2199
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->elementIgnoringMapper:Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;

    if-nez v0, :cond_1

    .line 2200
    new-instance p1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "No "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ElementIgnoringMapper:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "com.thoughtworks.xstream.mapper.ElementIgnoringMapper"

    .line 2201
    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ElementIgnoringMapper:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2204
    :cond_1
    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;->addElementsToIgnore(Ljava/util/regex/Pattern;)V

    return-void
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 1

    const/4 v0, 0x0

    .line 1255
    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/XStream;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/DataHolder;)V

    return-void
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/DataHolder;)V
    .locals 6

    .line 1266
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->marshallingStrategy:Lcom/thoughtworks/xstream/MarshallingStrategy;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    iget-object v4, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object v1, p2

    move-object v2, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/thoughtworks/xstream/MarshallingStrategy;->marshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/DataHolder;)V

    return-void
.end method

.method public newDataHolder()Lcom/thoughtworks/xstream/converters/DataHolder;
    .locals 1

    .line 1899
    new-instance v0, Lcom/thoughtworks/xstream/core/MapBackedDataHolder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/MapBackedDataHolder;-><init>()V

    return-object v0
.end method

.method public omitField(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    .line 2165
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->elementIgnoringMapper:Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;

    if-nez v0, :cond_1

    .line 2166
    new-instance p1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "No "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ElementIgnoringMapper:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.thoughtworks.xstream.mapper.ElementIgnoringMapper"

    .line 2167
    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$ElementIgnoringMapper:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " available"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2170
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/ElementIgnoringMapper;->omitField(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public processAnnotations(Ljava/lang/Class;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2228
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->processAnnotations([Ljava/lang/Class;)V

    return-void
.end method

.method public processAnnotations([Ljava/lang/Class;)V
    .locals 1

    .line 2214
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->annotationConfiguration:Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;

    if-eqz v0, :cond_0

    .line 2217
    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationConfiguration;->processAnnotations([Ljava/lang/Class;)V

    return-void

    .line 2215
    :cond_0
    new-instance p1, Lcom/thoughtworks/xstream/InitializationException;

    const-string v0, "No com.thoughtworks.xstream.mapper.AnnotationMapper available"

    invoke-direct {p1, v0}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerConverter(Lcom/thoughtworks/xstream/converters/Converter;)V
    .locals 1

    const/4 v0, 0x0

    .line 1666
    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    return-void
.end method

.method public registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V
    .locals 1

    .line 1670
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    if-eqz v0, :cond_0

    .line 1671
    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/converters/ConverterRegistry;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    :cond_0
    return-void
.end method

.method public registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;)V
    .locals 1

    const/4 v0, 0x0

    .line 1676
    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    return-void
.end method

.method public registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V
    .locals 2

    .line 1680
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->converterRegistry:Lcom/thoughtworks/xstream/converters/ConverterRegistry;

    if-eqz v0, :cond_0

    .line 1681
    new-instance v1, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;

    invoke-direct {v1, p1}, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;-><init>(Lcom/thoughtworks/xstream/converters/SingleValueConverter;)V

    invoke-interface {v0, v1, p2}, Lcom/thoughtworks/xstream/converters/ConverterRegistry;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    :cond_0
    return-void
.end method

.method public registerLocalConverter(Ljava/lang/Class;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/Converter;)V
    .locals 1

    .line 1694
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->localConversionMapper:Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;

    if-nez v0, :cond_1

    .line 1695
    new-instance p1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "No "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object p3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$LocalConversionMapper:Ljava/lang/Class;

    if-nez p3, :cond_0

    const-string p3, "com.thoughtworks.xstream.mapper.LocalConversionMapper"

    .line 1696
    invoke-static {p3}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    sput-object p3, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$LocalConversionMapper:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " available"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1699
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/mapper/LocalConversionMapper;->registerLocalConverter(Ljava/lang/Class;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/Converter;)V

    return-void
.end method

.method public registerLocalConverter(Ljava/lang/Class;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/SingleValueConverter;)V
    .locals 1

    .line 1711
    new-instance v0, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;

    invoke-direct {v0, p3}, Lcom/thoughtworks/xstream/converters/SingleValueConverterWrapper;-><init>(Lcom/thoughtworks/xstream/converters/SingleValueConverter;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/XStream;->registerLocalConverter(Ljava/lang/Class;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/Converter;)V

    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 2134
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->setReference(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public setCollectionUpdateLimit(I)V
    .locals 0

    .line 1205
    iput p1, p0, Lcom/thoughtworks/xstream/XStream;->collectionUpdateLimit:I

    return-void
.end method

.method public setMarshallingStrategy(Lcom/thoughtworks/xstream/MarshallingStrategy;)V
    .locals 0

    .line 1188
    iput-object p1, p0, Lcom/thoughtworks/xstream/XStream;->marshallingStrategy:Lcom/thoughtworks/xstream/MarshallingStrategy;

    return-void
.end method

.method public setMode(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    .line 1774
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unknown mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1770
    :pswitch_0
    new-instance p1, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;

    sget v0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->ABSOLUTE:I

    sget v1, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->SINGLE_NODE:I

    or-int/2addr v0, v1

    invoke-direct {p1, v0}, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/XStream;->setMarshallingStrategy(Lcom/thoughtworks/xstream/MarshallingStrategy;)V

    goto :goto_0

    .line 1766
    :pswitch_1
    new-instance p1, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;

    sget v0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->RELATIVE:I

    sget v1, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->SINGLE_NODE:I

    or-int/2addr v0, v1

    invoke-direct {p1, v0}, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/XStream;->setMarshallingStrategy(Lcom/thoughtworks/xstream/MarshallingStrategy;)V

    goto :goto_0

    .line 1762
    :pswitch_2
    new-instance p1, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;

    sget v0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->ABSOLUTE:I

    invoke-direct {p1, v0}, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/XStream;->setMarshallingStrategy(Lcom/thoughtworks/xstream/MarshallingStrategy;)V

    goto :goto_0

    .line 1758
    :pswitch_3
    new-instance p1, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;

    sget v0, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;->RELATIVE:I

    invoke-direct {p1, v0}, Lcom/thoughtworks/xstream/core/ReferenceByXPathMarshallingStrategy;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/XStream;->setMarshallingStrategy(Lcom/thoughtworks/xstream/MarshallingStrategy;)V

    goto :goto_0

    .line 1755
    :pswitch_4
    new-instance p1, Lcom/thoughtworks/xstream/core/ReferenceByIdMarshallingStrategy;

    invoke-direct {p1}, Lcom/thoughtworks/xstream/core/ReferenceByIdMarshallingStrategy;-><init>()V

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/XStream;->setMarshallingStrategy(Lcom/thoughtworks/xstream/MarshallingStrategy;)V

    goto :goto_0

    .line 1752
    :pswitch_5
    new-instance p1, Lcom/thoughtworks/xstream/core/TreeMarshallingStrategy;

    invoke-direct {p1}, Lcom/thoughtworks/xstream/core/TreeMarshallingStrategy;-><init>()V

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/XStream;->setMarshallingStrategy(Lcom/thoughtworks/xstream/MarshallingStrategy;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setupAliases()V
    .locals 3

    .line 749
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->classAliasingMapper:Lcom/thoughtworks/xstream/mapper/ClassAliasingMapper;

    if-nez v0, :cond_0

    return-void

    .line 753
    :cond_0
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "com.thoughtworks.xstream.mapper.Mapper$Null"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    :cond_1
    const-string v1, "null"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 754
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.lang.Integer"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Integer:Ljava/lang/Class;

    :cond_2
    const-string v1, "int"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 755
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "java.lang.Float"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Float:Ljava/lang/Class;

    :cond_3
    const-string v1, "float"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 756
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string v0, "java.lang.Double"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Double:Ljava/lang/Class;

    :cond_4
    const-string v1, "double"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 757
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string v0, "java.lang.Long"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Long:Ljava/lang/Class;

    :cond_5
    const-string v1, "long"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 758
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string v0, "java.lang.Short"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Short:Ljava/lang/Class;

    :cond_6
    const-string v1, "short"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 759
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string v0, "java.lang.Character"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Character:Ljava/lang/Class;

    :cond_7
    const-string v1, "char"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 760
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v0, :cond_8

    const-string v0, "java.lang.Byte"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Byte:Ljava/lang/Class;

    :cond_8
    const-string v1, "byte"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 761
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_9

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Boolean:Ljava/lang/Class;

    :cond_9
    const-string v1, "boolean"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 762
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Number:Ljava/lang/Class;

    if-nez v0, :cond_a

    const-string v0, "java.lang.Number"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Number:Ljava/lang/Class;

    :cond_a
    const-string v1, "number"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 763
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_b

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Object:Ljava/lang/Class;

    :cond_b
    const-string v1, "object"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 764
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$math$BigInteger:Ljava/lang/Class;

    if-nez v0, :cond_c

    const-string v0, "java.math.BigInteger"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$math$BigInteger:Ljava/lang/Class;

    :cond_c
    const-string v1, "big-int"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 765
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$math$BigDecimal:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "java.math.BigDecimal"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$math$BigDecimal:Ljava/lang/Class;

    :cond_d
    const-string v1, "big-decimal"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 767
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$StringBuffer:Ljava/lang/Class;

    if-nez v0, :cond_e

    const-string v0, "java.lang.StringBuffer"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$StringBuffer:Ljava/lang/Class;

    :cond_e
    const-string v1, "string-buffer"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 768
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_f

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$String:Ljava/lang/Class;

    :cond_f
    const-string v1, "string"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 769
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v0, :cond_10

    const-string v0, "java.lang.Class"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Class:Ljava/lang/Class;

    :cond_10
    const-string v1, "java-class"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 770
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$reflect$Method:Ljava/lang/Class;

    if-nez v0, :cond_11

    const-string v0, "java.lang.reflect.Method"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$reflect$Method:Ljava/lang/Class;

    :cond_11
    const-string v1, "method"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 771
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$reflect$Constructor:Ljava/lang/Class;

    if-nez v0, :cond_12

    const-string v0, "java.lang.reflect.Constructor"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$reflect$Constructor:Ljava/lang/Class;

    :cond_12
    const-string v1, "constructor"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 772
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$reflect$Field:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "java.lang.reflect.Field"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$reflect$Field:Ljava/lang/Class;

    :cond_13
    const-string v1, "field"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 773
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Date:Ljava/lang/Class;

    if-nez v0, :cond_14

    const-string v0, "java.util.Date"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Date:Ljava/lang/Class;

    :cond_14
    const-string v1, "date"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 774
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$net$URI:Ljava/lang/Class;

    if-nez v0, :cond_15

    const-string v0, "java.net.URI"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$net$URI:Ljava/lang/Class;

    :cond_15
    const-string v1, "uri"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 775
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$net$URL:Ljava/lang/Class;

    if-nez v0, :cond_16

    const-string v0, "java.net.URL"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$net$URL:Ljava/lang/Class;

    :cond_16
    const-string v1, "url"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 776
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$BitSet:Ljava/lang/Class;

    if-nez v0, :cond_17

    const-string v0, "java.util.BitSet"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$BitSet:Ljava/lang/Class;

    :cond_17
    const-string v1, "bit-set"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 778
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Map:Ljava/lang/Class;

    if-nez v0, :cond_18

    const-string v0, "java.util.Map"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Map:Ljava/lang/Class;

    :cond_18
    const-string v1, "map"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 779
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Map$Entry:Ljava/lang/Class;

    if-nez v0, :cond_19

    const-string v0, "java.util.Map$Entry"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Map$Entry:Ljava/lang/Class;

    :cond_19
    const-string v1, "entry"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 780
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Properties:Ljava/lang/Class;

    if-nez v0, :cond_1a

    const-string v0, "java.util.Properties"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Properties:Ljava/lang/Class;

    :cond_1a
    const-string v1, "properties"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 781
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$List:Ljava/lang/Class;

    if-nez v0, :cond_1b

    const-string v0, "java.util.List"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$List:Ljava/lang/Class;

    :cond_1b
    const-string v1, "list"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 782
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Set:Ljava/lang/Class;

    if-nez v0, :cond_1c

    const-string v0, "java.util.Set"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Set:Ljava/lang/Class;

    :cond_1c
    const-string v1, "set"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 783
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$SortedSet:Ljava/lang/Class;

    if-nez v0, :cond_1d

    const-string v0, "java.util.SortedSet"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$SortedSet:Ljava/lang/Class;

    :cond_1d
    const-string v1, "sorted-set"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 785
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$LinkedList:Ljava/lang/Class;

    if-nez v0, :cond_1e

    const-string v0, "java.util.LinkedList"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$LinkedList:Ljava/lang/Class;

    :cond_1e
    const-string v1, "linked-list"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 786
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Vector:Ljava/lang/Class;

    if-nez v0, :cond_1f

    const-string v0, "java.util.Vector"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Vector:Ljava/lang/Class;

    :cond_1f
    const-string v1, "vector"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 787
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$TreeMap:Ljava/lang/Class;

    if-nez v0, :cond_20

    const-string v0, "java.util.TreeMap"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$TreeMap:Ljava/lang/Class;

    :cond_20
    const-string v1, "tree-map"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 788
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$TreeSet:Ljava/lang/Class;

    if-nez v0, :cond_21

    const-string v0, "java.util.TreeSet"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$TreeSet:Ljava/lang/Class;

    :cond_21
    const-string v1, "tree-set"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 789
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Hashtable:Ljava/lang/Class;

    if-nez v0, :cond_22

    const-string v0, "java.util.Hashtable"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Hashtable:Ljava/lang/Class;

    :cond_22
    const-string v1, "hashtable"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 791
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "empty-list"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 792
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "empty-map"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 793
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "empty-set"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 794
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "singleton-list"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 795
    invoke-static {p0, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "singleton-map"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 796
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "singleton-set"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 798
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isAWTAvailable()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "java.awt.Color"

    const/4 v1, 0x0

    .line 802
    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "awt-color"

    invoke-virtual {p0, v2, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.awt.Font"

    .line 803
    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "awt-font"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.awt.font.TextAttribute"

    .line 804
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "awt-text-attribute"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_23
    const-string v0, "javax.activation.ActivationDataFlavor"

    .line 807
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_24

    const-string v1, "activation-data-flavor"

    .line 809
    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 812
    :cond_24
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isSQLAvailable()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "java.sql.Timestamp"

    .line 813
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sql-timestamp"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.sql.Time"

    .line 814
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sql-time"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.sql.Date"

    .line 815
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "sql-date"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 818
    :cond_25
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$io$File:Ljava/lang/Class;

    if-nez v0, :cond_26

    const-string v0, "java.io.File"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$io$File:Ljava/lang/Class;

    :cond_26
    const-string v1, "file"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 819
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Locale:Ljava/lang/Class;

    if-nez v0, :cond_27

    const-string v0, "java.util.Locale"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Locale:Ljava/lang/Class;

    :cond_27
    const-string v1, "locale"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    .line 820
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Calendar:Ljava/lang/Class;

    if-nez v0, :cond_28

    const-string v0, "java.util.Calendar"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Calendar:Ljava/lang/Class;

    :cond_28
    const-string v1, "gregorian-calendar"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v0, 0x4

    .line 822
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "auth-subject"

    const-string v1, "javax.security.auth.Subject"

    .line 823
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->aliasDynamically(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java.util.LinkedHashMap"

    .line 824
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "linked-hash-map"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.util.LinkedHashSet"

    .line 825
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "linked-hash-set"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.lang.StackTraceElement"

    .line 826
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "trace"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.util.Currency"

    .line 827
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currency"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.nio.charset.Charset"

    .line 828
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "charset"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->aliasType(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_29
    const/4 v0, 0x5

    .line 831
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "xml-duration"

    const-string v1, "javax.xml.datatype.Duration"

    .line 832
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->aliasDynamically(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "java.util.concurrent.ConcurrentHashMap"

    .line 833
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "concurrent-hash-map"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.util.EnumSet"

    .line 834
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "enum-set"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.util.EnumMap"

    .line 835
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "enum-map"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.lang.StringBuilder"

    .line 836
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "string-builder"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.util.UUID"

    .line 837
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "uuid"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_2a
    const/4 v0, 0x7

    .line 840
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "java.nio.file.Path"

    .line 841
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->aliasType(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_2b
    const/16 v0, 0x8

    .line 844
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "java.time.Clock$FixedClock"

    .line 845
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "fixed-clock"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.Clock$OffsetClock"

    .line 846
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "offset-clock"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.Clock$SystemClock"

    .line 847
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "system-clock"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.Clock$TickClock"

    .line 848
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "tick-clock"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.DayOfWeek"

    .line 849
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "day-of-week"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.Duration"

    .line 850
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.Instant"

    .line 851
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "instant"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.LocalDate"

    .line 852
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "local-date"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.LocalDateTime"

    .line 853
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "local-date-time"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.LocalTime"

    .line 854
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "local-time"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.Month"

    .line 855
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "month"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.MonthDay"

    .line 856
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "month-day"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.OffsetDateTime"

    .line 857
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "offset-date-time"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.OffsetTime"

    .line 858
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "offset-time"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.Period"

    .line 859
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "period"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.Year"

    .line 860
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "year"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.YearMonth"

    .line 861
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "year-month"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.ZonedDateTime"

    .line 862
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "zoned-date-time"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.ZoneId"

    .line 863
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "zone-id"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->aliasType(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.chrono.Chronology"

    .line 864
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "chronology"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->aliasType(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.chrono.HijrahDate"

    .line 865
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "hijrah-date"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.chrono.HijrahEra"

    .line 866
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "hijrah-era"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.chrono.JapaneseDate"

    .line 867
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "japanese-date"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.chrono.JapaneseEra"

    .line 868
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "japanese-era"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.chrono.MinguoDate"

    .line 869
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "minguo-date"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.chrono.MinguoEra"

    .line 870
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "minguo-era"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.chrono.ThaiBuddhistDate"

    .line 871
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "thai-buddhist-date"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.chrono.ThaiBuddhistEra"

    .line 872
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "thai-buddhist-era"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.temporal.ChronoField"

    .line 873
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "chrono-field"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.temporal.ChronoUnit"

    .line 874
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "chrono-unit"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.temporal.IsoFields$Field"

    .line 875
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "iso-field"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.temporal.IsoFields$Unit"

    .line 876
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "iso-unit"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.temporal.JulianFields$Field"

    .line 877
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "julian-field"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.temporal.ValueRange"

    .line 878
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "temporal-value-range"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "java.time.temporal.WeekFields"

    .line 879
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "week-fields"

    invoke-virtual {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->alias(Ljava/lang/String;Ljava/lang/Class;)V

    :cond_2c
    const-string v0, "java.lang.invoke.SerializedLambda"

    .line 882
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2d

    const-string v1, "serialized-lambda"

    .line 883
    invoke-direct {p0, v1, v0}, Lcom/thoughtworks/xstream/XStream;->aliasDynamically(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method protected setupConverters()V
    .locals 7

    .line 906
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-direct {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    const/16 v1, -0x14

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 908
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    const/16 v1, -0xa

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 909
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/ExternalizableConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 911
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/NullConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/NullConverter;-><init>()V

    const/16 v1, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 912
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/IntConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/IntConverter;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 913
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/FloatConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/FloatConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 914
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/DoubleConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/DoubleConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 915
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/LongConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/LongConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 916
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/ShortConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/ShortConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 917
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/CharConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/CharConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 918
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 919
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/ByteConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/ByteConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 921
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/StringConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/StringConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 922
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/StringBufferConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/StringBufferConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 923
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/DateConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/DateConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 924
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/BitSetConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/collections/BitSetConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 925
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/URIConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/URIConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 926
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/URLConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/URLConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 927
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/BigIntegerConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/BigIntegerConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 928
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/BigDecimalConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/basic/BigDecimalConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 930
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/ArrayConverter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/converters/collections/ArrayConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 931
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/CharArrayConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/collections/CharArrayConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 932
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 933
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/MapConverter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/converters/collections/MapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 934
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 935
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 936
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/SingletonCollectionConverter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/converters/collections/SingletonCollectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 937
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/SingletonMapConverter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/converters/collections/SingletonMapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 938
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/PropertiesConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/collections/PropertiesConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 939
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/EncodedByteArrayConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 941
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/FileConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/FileConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 942
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isSQLAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/SqlTimestampConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/SqlTimestampConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 944
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/SqlTimeConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/SqlTimeConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 945
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/SqlDateConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/SqlDateConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 947
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v2, v3}, Lcom/thoughtworks/xstream/converters/extended/DynamicProxyConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 948
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/JavaClassConverter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/converters/extended/JavaClassConverter;-><init>(Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 949
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/JavaMethodConverter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/converters/extended/JavaMethodConverter;-><init>(Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 950
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/JavaFieldConverter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/converters/extended/JavaFieldConverter;-><init>(Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 952
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isAWTAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 953
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/FontConverter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/converters/extended/FontConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 954
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/ColorConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/ColorConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 955
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/TextAttributeConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/TextAttributeConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 957
    :cond_1
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isSwingAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 958
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/LookAndFeelConverter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v3, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-direct {v0, v2, v3}, Lcom/thoughtworks/xstream/converters/extended/LookAndFeelConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    .line 960
    :cond_2
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/LocaleConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/LocaleConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/SingleValueConverter;I)V

    .line 961
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/GregorianCalendarConverter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/GregorianCalendarConverter;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    const/4 v0, 0x4

    .line 963
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    const-string v2, "com.thoughtworks.xstream.mapper.Mapper"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    new-array v0, v3, [Ljava/lang/Class;

    .line 965
    sget-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v5, :cond_3

    .line 966
    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    :cond_3
    aput-object v5, v0, v1

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v6, v5, v1

    const-string v6, "com.thoughtworks.xstream.converters.extended.SubjectConverter"

    .line 965
    invoke-direct {p0, v6, v1, v0, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    new-array v0, v3, [Ljava/lang/Class;

    .line 967
    sget-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$converters$ConverterLookup:Ljava/lang/Class;

    if-nez v5, :cond_4

    const-string v5, "com.thoughtworks.xstream.converters.ConverterLookup"

    .line 968
    invoke-static {v5}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$converters$ConverterLookup:Ljava/lang/Class;

    :cond_4
    aput-object v5, v0, v1

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    aput-object v6, v5, v1

    const-string v6, "com.thoughtworks.xstream.converters.extended.ThrowableConverter"

    .line 967
    invoke-direct {p0, v6, v1, v0, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.extended.StackTraceElementConverter"

    .line 969
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.extended.CurrencyConverter"

    .line 971
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.extended.RegexPatternConverter"

    .line 973
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.extended.CharsetConverter"

    .line 975
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x5

    .line 979
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "javax.xml.datatype.Duration"

    .line 981
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "com.thoughtworks.xstream.converters.extended.DurationConverter"

    .line 982
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    :cond_6
    const-string v0, "com.thoughtworks.xstream.converters.enums.EnumConverter"

    .line 985
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    new-array v0, v3, [Ljava/lang/Class;

    .line 987
    sget-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v5, :cond_7

    .line 988
    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    :cond_7
    aput-object v5, v0, v1

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v6, v5, v1

    const-string v6, "com.thoughtworks.xstream.converters.enums.EnumSetConverter"

    .line 987
    invoke-direct {p0, v6, v1, v0, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    new-array v0, v3, [Ljava/lang/Class;

    .line 989
    sget-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v5, :cond_8

    .line 990
    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    :cond_8
    aput-object v5, v0, v1

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v6, v5, v1

    const-string v6, "com.thoughtworks.xstream.converters.enums.EnumMapConverter"

    .line 989
    invoke-direct {p0, v6, v1, v0, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.basic.StringBuilderConverter"

    .line 991
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.basic.UUIDConverter"

    .line 993
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    :cond_9
    const-string v0, "javax.activation.ActivationDataFlavor"

    .line 996
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v0, "com.thoughtworks.xstream.converters.extended.ActivationDataFlavorConverter"

    .line 997
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    :cond_a
    const/4 v0, 0x7

    .line 1000
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "com.thoughtworks.xstream.converters.extended.PathConverter"

    .line 1001
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    :cond_b
    const/16 v0, 0x8

    .line 1004
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "com.thoughtworks.xstream.converters.time.ChronologyConverter"

    .line 1005
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.time.DurationConverter"

    .line 1007
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.time.HijrahDateConverter"

    .line 1009
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.time.JapaneseDateConverter"

    .line 1011
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.time.JapaneseEraConverter"

    .line 1013
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.time.InstantConverter"

    .line 1015
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.time.LocalDateConverter"

    .line 1017
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.time.LocalDateTimeConverter"

    .line 1019
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.time.LocalTimeConverter"

    .line 1021
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.time.MinguoDateConverter"

    .line 1023
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.time.MonthDayConverter"

    .line 1025
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.time.OffsetDateTimeConverter"

    .line 1027
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.time.OffsetTimeConverter"

    .line 1029
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.time.PeriodConverter"

    .line 1031
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    new-array v0, v3, [Ljava/lang/Class;

    .line 1033
    sget-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v5, :cond_c

    .line 1034
    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    :cond_c
    aput-object v5, v0, v1

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v6, v5, v1

    const-string v6, "com.thoughtworks.xstream.converters.time.SystemClockConverter"

    .line 1033
    invoke-direct {p0, v6, v1, v0, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.time.ThaiBuddhistDateConverter"

    .line 1035
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    new-array v0, v3, [Ljava/lang/Class;

    .line 1037
    sget-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v5, :cond_d

    .line 1038
    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    :cond_d
    aput-object v5, v0, v1

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v6, v5, v1

    const-string v6, "com.thoughtworks.xstream.converters.time.ValueRangeConverter"

    .line 1037
    invoke-direct {p0, v6, v1, v0, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    new-array v0, v3, [Ljava/lang/Class;

    .line 1039
    sget-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v5, :cond_e

    .line 1040
    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    :cond_e
    aput-object v5, v0, v1

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v6, v5, v1

    const-string v6, "com.thoughtworks.xstream.converters.time.WeekFieldsConverter"

    .line 1039
    invoke-direct {p0, v6, v1, v0, v5}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.time.YearConverter"

    .line 1041
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.time.YearMonthConverter"

    .line 1043
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.time.ZonedDateTimeConverter"

    .line 1045
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const-string v0, "com.thoughtworks.xstream.converters.time.ZoneIdConverter"

    .line 1047
    invoke-direct {p0, v0, v1, v4, v4}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Class;

    .line 1049
    sget-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    if-nez v5, :cond_f

    .line 1050
    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper:Ljava/lang/Class;

    :cond_f
    aput-object v5, v4, v1

    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$converters$reflection$ReflectionProvider:Ljava/lang/Class;

    if-nez v2, :cond_10

    const-string v2, "com.thoughtworks.xstream.converters.reflection.ReflectionProvider"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$converters$reflection$ReflectionProvider:Ljava/lang/Class;

    :cond_10
    aput-object v2, v4, v3

    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$core$ClassLoaderReference:Ljava/lang/Class;

    if-nez v2, :cond_11

    const-string v2, "com.thoughtworks.xstream.core.ClassLoaderReference"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$core$ClassLoaderReference:Ljava/lang/Class;

    :cond_11
    const/4 v5, 0x2

    aput-object v2, v4, v5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    aput-object v2, v0, v1

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    aput-object v2, v0, v5

    const-string v2, "com.thoughtworks.xstream.converters.reflection.LambdaConverter"

    .line 1049
    invoke-direct {p0, v2, v1, v4, v0}, Lcom/thoughtworks/xstream/XStream;->registerConverterDynamically(Ljava/lang/String;I[Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 1054
    :cond_12
    new-instance v0, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;

    iget-object v2, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    invoke-direct {v0, v2, p0}, Lcom/thoughtworks/xstream/core/util/SelfStreamingInstanceChecker;-><init>(Lcom/thoughtworks/xstream/converters/ConverterLookup;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->registerConverter(Lcom/thoughtworks/xstream/converters/Converter;I)V

    return-void
.end method

.method protected setupDefaultImplementations()V
    .locals 2

    .line 895
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->defaultImplementationsMapper:Lcom/thoughtworks/xstream/mapper/DefaultImplementationsMapper;

    if-nez v0, :cond_0

    return-void

    .line 898
    :cond_0
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$HashMap:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.util.HashMap"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$HashMap:Ljava/lang/Class;

    :cond_1
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Map:Ljava/lang/Class;

    if-nez v1, :cond_2

    const-string v1, "java.util.Map"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Map:Ljava/lang/Class;

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 899
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$ArrayList:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "java.util.ArrayList"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$ArrayList:Ljava/lang/Class;

    :cond_3
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$List:Ljava/lang/Class;

    if-nez v1, :cond_4

    const-string v1, "java.util.List"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$List:Ljava/lang/Class;

    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 900
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$HashSet:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string v0, "java.util.HashSet"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$HashSet:Ljava/lang/Class;

    :cond_5
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Set:Ljava/lang/Class;

    if-nez v1, :cond_6

    const-string v1, "java.util.Set"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Set:Ljava/lang/Class;

    :cond_6
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 901
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$TreeSet:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string v0, "java.util.TreeSet"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$TreeSet:Ljava/lang/Class;

    :cond_7
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$SortedSet:Ljava/lang/Class;

    if-nez v1, :cond_8

    const-string v1, "java.util.SortedSet"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$SortedSet:Ljava/lang/Class;

    :cond_8
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 902
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$GregorianCalendar:Ljava/lang/Class;

    if-nez v0, :cond_9

    const-string v0, "java.util.GregorianCalendar"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$GregorianCalendar:Ljava/lang/Class;

    :cond_9
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Calendar:Ljava/lang/Class;

    if-nez v1, :cond_a

    const-string v1, "java.util.Calendar"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Calendar:Ljava/lang/Class;

    :cond_a
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addDefaultImplementation(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method protected setupImmutableTypes()V
    .locals 8

    .line 1078
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->immutableTypesMapper:Lcom/thoughtworks/xstream/mapper/ImmutableTypesMapper;

    if-nez v0, :cond_0

    return-void

    .line 1083
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1084
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Boolean:Ljava/lang/Class;

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1085
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1086
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Byte:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.lang.Byte"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Byte:Ljava/lang/Class;

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1087
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1088
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "java.lang.Character"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Character:Ljava/lang/Class;

    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1089
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1090
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string v0, "java.lang.Double"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Double:Ljava/lang/Class;

    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1091
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1092
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string v0, "java.lang.Float"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Float:Ljava/lang/Class;

    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1093
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1094
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Integer:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string v0, "java.lang.Integer"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Integer:Ljava/lang/Class;

    :cond_6
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1095
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1096
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Long:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string v0, "java.lang.Long"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Long:Ljava/lang/Class;

    :cond_7
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1097
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1098
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Short:Ljava/lang/Class;

    if-nez v0, :cond_8

    const-string v0, "java.lang.Short"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Short:Ljava/lang/Class;

    :cond_8
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1101
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    if-nez v0, :cond_9

    const-string v0, "com.thoughtworks.xstream.mapper.Mapper$Null"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    :cond_9
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1102
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$math$BigDecimal:Ljava/lang/Class;

    if-nez v0, :cond_a

    const-string v0, "java.math.BigDecimal"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$math$BigDecimal:Ljava/lang/Class;

    :cond_a
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1103
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$math$BigInteger:Ljava/lang/Class;

    if-nez v0, :cond_b

    const-string v0, "java.math.BigInteger"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$math$BigInteger:Ljava/lang/Class;

    :cond_b
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1104
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$String:Ljava/lang/Class;

    const-string v2, "java.lang.String"

    if-nez v0, :cond_c

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$String:Ljava/lang/Class;

    :cond_c
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1105
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$net$URL:Ljava/lang/Class;

    if-nez v0, :cond_d

    const-string v0, "java.net.URL"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$net$URL:Ljava/lang/Class;

    :cond_d
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1106
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$io$File:Ljava/lang/Class;

    if-nez v0, :cond_e

    const-string v0, "java.io.File"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$io$File:Ljava/lang/Class;

    :cond_e
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1107
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v0, :cond_f

    const-string v0, "java.lang.Class"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Class:Ljava/lang/Class;

    :cond_f
    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    const/4 v0, 0x7

    .line 1109
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_12

    const-string v0, "java.nio.file.Paths"

    .line 1110
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_12

    :try_start_0
    const-string v4, "get"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    .line 1114
    sget-object v7, Lcom/thoughtworks/xstream/XStream;->class$java$lang$String:Ljava/lang/Class;

    if-nez v7, :cond_10

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0

    :cond_10
    sget-object v2, Lcom/thoughtworks/xstream/XStream;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    aput-object v2, v6, v1

    sget-object v2, Lcom/thoughtworks/xstream/XStream;->array$Ljava$lang$String:Ljava/lang/Class;

    if-nez v2, :cond_11

    const-string v2, "[Ljava.lang.String;"

    invoke-static {v2}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/XStream;->array$Ljava$lang$String:Ljava/lang/Class;

    goto :goto_1

    :cond_11
    sget-object v2, Lcom/thoughtworks/xstream/XStream;->array$Ljava$lang$String:Ljava/lang/Class;

    :goto_1
    aput-object v2, v6, v3

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v2, 0x0

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "."

    aput-object v5, v4, v1

    new-array v5, v1, [Ljava/lang/String;

    aput-object v5, v4, v3

    .line 1116
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 1129
    :cond_12
    :goto_2
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isAWTAvailable()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "java.awt.font.TextAttribute"

    .line 1130
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    :cond_13
    const/4 v0, 0x4

    .line 1133
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "java.nio.charset.Charset"

    .line 1135
    invoke-direct {p0, v0, v3}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.util.Currency"

    .line 1136
    invoke-direct {p0, v0, v3}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    :cond_14
    const/4 v0, 0x5

    .line 1139
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "java.util.UUID"

    .line 1140
    invoke-direct {p0, v0, v3}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    .line 1143
    :cond_15
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$net$URI:Ljava/lang/Class;

    if-nez v0, :cond_16

    const-string v0, "java.net.URI"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$net$URI:Ljava/lang/Class;

    :cond_16
    invoke-virtual {p0, v0, v3}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1144
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1145
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    .line 1146
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/thoughtworks/xstream/XStream;->addImmutableType(Ljava/lang/Class;Z)V

    const/16 v0, 0x8

    .line 1148
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "java.time.Duration"

    .line 1149
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.Instant"

    .line 1150
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.LocalDate"

    .line 1151
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.LocalDateTime"

    .line 1152
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.LocalTime"

    .line 1153
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.MonthDay"

    .line 1154
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.OffsetDateTime"

    .line 1155
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.OffsetTime"

    .line 1156
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.Period"

    .line 1157
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.Year"

    .line 1158
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.YearMonth"

    .line 1159
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.ZonedDateTime"

    .line 1160
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.ZoneId"

    .line 1161
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.ZoneOffset"

    .line 1162
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.ZoneRegion"

    .line 1163
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.chrono.HijrahChronology"

    .line 1164
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.chrono.HijrahDate"

    .line 1165
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.chrono.IsoChronology"

    .line 1166
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.chrono.JapaneseChronology"

    .line 1167
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.chrono.JapaneseDate"

    .line 1168
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.chrono.JapaneseEra"

    .line 1169
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.chrono.MinguoChronology"

    .line 1170
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.chrono.MinguoDate"

    .line 1171
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.chrono.ThaiBuddhistChronology"

    .line 1172
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.chrono.ThaiBuddhistDate"

    .line 1173
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.temporal.IsoFields$Field"

    .line 1174
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.temporal.IsoFields$Unit"

    .line 1175
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    const-string v0, "java.time.temporal.JulianFields$Field"

    .line 1176
    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/XStream;->addImmutableTypeDynamically(Ljava/lang/String;Z)V

    :cond_17
    return-void
.end method

.method protected setupSecurity()V
    .locals 5

    .line 640
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->securityMapper:Lcom/thoughtworks/xstream/mapper/SecurityMapper;

    if-nez v0, :cond_0

    return-void

    .line 644
    :cond_0
    sget-object v0, Lcom/thoughtworks/xstream/security/NoTypePermission;->NONE:Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 645
    sget-object v0, Lcom/thoughtworks/xstream/security/NullPermission;->NULL:Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 646
    sget-object v0, Lcom/thoughtworks/xstream/security/PrimitiveTypePermission;->PRIMITIVES:Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 647
    sget-object v0, Lcom/thoughtworks/xstream/security/ArrayTypePermission;->ARRAYS:Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 648
    sget-object v0, Lcom/thoughtworks/xstream/security/InterfaceTypePermission;->INTERFACES:Lcom/thoughtworks/xstream/security/TypePermission;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->addPermission(Lcom/thoughtworks/xstream/security/TypePermission;)V

    .line 649
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Calendar:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.util.Calendar"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Calendar:Ljava/lang/Class;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    .line 650
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Collection:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.util.Collection"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Collection:Ljava/lang/Class;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    .line 651
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Map:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "java.util.Map"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Map:Ljava/lang/Class;

    :cond_3
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    .line 652
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Map$Entry:Ljava/lang/Class;

    if-nez v0, :cond_4

    const-string v0, "java.util.Map$Entry"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$Map$Entry:Ljava/lang/Class;

    :cond_4
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    .line 653
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$reflect$Member:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string v0, "java.lang.reflect.Member"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$reflect$Member:Ljava/lang/Class;

    :cond_5
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    .line 654
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Number:Ljava/lang/Class;

    if-nez v0, :cond_6

    const-string v0, "java.lang.Number"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Number:Ljava/lang/Class;

    :cond_6
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    .line 655
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v0, :cond_7

    const-string v0, "java.lang.Throwable"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Throwable:Ljava/lang/Class;

    :cond_7
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    .line 656
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$TimeZone:Ljava/lang/Class;

    if-nez v0, :cond_8

    const-string v0, "java.util.TimeZone"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$util$TimeZone:Ljava/lang/Class;

    :cond_8
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    const-string v0, "java.lang.Enum"

    .line 658
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 660
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    :cond_9
    const-string v0, "java.nio.file.Path"

    .line 662
    invoke-static {v0}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 664
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    .line 667
    :cond_a
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 668
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$BitSet:Ljava/lang/Class;

    if-nez v1, :cond_b

    const-string v1, "java.util.BitSet"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$BitSet:Ljava/lang/Class;

    :cond_b
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 669
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$nio$charset$Charset:Ljava/lang/Class;

    if-nez v1, :cond_c

    const-string v1, "java.nio.charset.Charset"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$nio$charset$Charset:Ljava/lang/Class;

    :cond_c
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 670
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v1, :cond_d

    const-string v1, "java.lang.Class"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Class:Ljava/lang/Class;

    :cond_d
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 671
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Currency:Ljava/lang/Class;

    if-nez v1, :cond_e

    const-string v1, "java.util.Currency"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Currency:Ljava/lang/Class;

    :cond_e
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 672
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Date:Ljava/lang/Class;

    if-nez v1, :cond_f

    const-string v1, "java.util.Date"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Date:Ljava/lang/Class;

    :cond_f
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 673
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$text$DecimalFormatSymbols:Ljava/lang/Class;

    if-nez v1, :cond_10

    const-string v1, "java.text.DecimalFormatSymbols"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$text$DecimalFormatSymbols:Ljava/lang/Class;

    :cond_10
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 674
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$io$File:Ljava/lang/Class;

    if-nez v1, :cond_11

    const-string v1, "java.io.File"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$io$File:Ljava/lang/Class;

    :cond_11
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 675
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Locale:Ljava/lang/Class;

    if-nez v1, :cond_12

    const-string v1, "java.util.Locale"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$Locale:Ljava/lang/Class;

    :cond_12
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 676
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v1, :cond_13

    const-string v1, "java.lang.Object"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Object:Ljava/lang/Class;

    :cond_13
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 677
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$regex$Pattern:Ljava/lang/Class;

    if-nez v1, :cond_14

    const-string v1, "java.util.regex.Pattern"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$util$regex$Pattern:Ljava/lang/Class;

    :cond_14
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 678
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$lang$StackTraceElement:Ljava/lang/Class;

    if-nez v1, :cond_15

    const-string v1, "java.lang.StackTraceElement"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$lang$StackTraceElement:Ljava/lang/Class;

    :cond_15
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 679
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$lang$String:Ljava/lang/Class;

    if-nez v1, :cond_16

    const-string v1, "java.lang.String"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$lang$String:Ljava/lang/Class;

    :cond_16
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 680
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$lang$StringBuffer:Ljava/lang/Class;

    if-nez v1, :cond_17

    const-string v1, "java.lang.StringBuffer"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$lang$StringBuffer:Ljava/lang/Class;

    :cond_17
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.lang.StringBuilder"

    .line 681
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 682
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$net$URL:Ljava/lang/Class;

    if-nez v1, :cond_18

    const-string v1, "java.net.URL"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$net$URL:Ljava/lang/Class;

    :cond_18
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 683
    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$net$URI:Ljava/lang/Class;

    if-nez v1, :cond_19

    const-string v1, "java.net.URI"

    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$java$net$URI:Ljava/lang/Class;

    :cond_19
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.util.UUID"

    .line 684
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 685
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->isSQLAvailable()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "java.sql.Timestamp"

    .line 686
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.sql.Time"

    .line 687
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.sql.Date"

    .line 688
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1a
    const/16 v1, 0x8

    .line 690
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "java.time.Clock"

    .line 691
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    const-string v1, "java.time.Duration"

    .line 692
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.time.Instant"

    .line 693
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.time.LocalDate"

    .line 694
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.time.LocalDateTime"

    .line 695
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.time.LocalTime"

    .line 696
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.time.MonthDay"

    .line 697
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.time.OffsetDateTime"

    .line 698
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.time.OffsetTime"

    .line 699
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.time.Period"

    .line 700
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.time.Ser"

    .line 701
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.time.Year"

    .line 702
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.time.YearMonth"

    .line 703
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.time.ZonedDateTime"

    .line 704
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.time.ZoneId"

    .line 705
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    const-string v1, "java.time.chrono.HijrahDate"

    .line 706
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.time.chrono.JapaneseDate"

    .line 707
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.time.chrono.JapaneseEra"

    .line 708
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.time.chrono.MinguoDate"

    .line 709
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.time.chrono.ThaiBuddhistDate"

    .line 710
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.time.chrono.Ser"

    .line 711
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.time.chrono.Chronology"

    .line 712
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/XStream;->allowTypeHierarchy(Ljava/lang/Class;)V

    const-string v1, "java.time.temporal.ValueRange"

    .line 713
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.time.temporal.WeekFields"

    .line 714
    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1b
    const/4 v1, 0x0

    .line 716
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 718
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 719
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1c

    .line 721
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 723
    :cond_1c
    invoke-virtual {p0, v2}, Lcom/thoughtworks/xstream/XStream;->allowTypes([Ljava/lang/Class;)V

    return-void
.end method

.method public toXML(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1214
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1215
    invoke-virtual {p0, p1, v0}, Lcom/thoughtworks/xstream/XStream;->toXML(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 1216
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 1

    .line 1241
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object p2

    .line 1243
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/XStream;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1245
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->flush()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->flush()V

    .line 1246
    throw p1
.end method

.method public toXML(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->hierarchicalStreamDriver:Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;

    invoke-interface {v0, p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;->createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object p2

    .line 1228
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/XStream;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1230
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->flush()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->flush()V

    .line 1231
    throw p1
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1388
    invoke-virtual {p0, p1, v0, v0}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/DataHolder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1399
    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/XStream;->unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/DataHolder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/DataHolder;)Ljava/lang/Object;
    .locals 6

    .line 1414
    :try_start_0
    iget v0, p0, Lcom/thoughtworks/xstream/XStream;->collectionUpdateLimit:I

    if-ltz v0, :cond_1

    if-nez p3, :cond_0

    .line 1416
    new-instance p3, Lcom/thoughtworks/xstream/core/MapBackedDataHolder;

    invoke-direct {p3}, Lcom/thoughtworks/xstream/core/MapBackedDataHolder;-><init>()V

    :cond_0
    const-string v0, "XStreamCollectionUpdateLimit"

    .line 1418
    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/thoughtworks/xstream/XStream;->collectionUpdateLimit:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p3, v0, v1}, Lcom/thoughtworks/xstream/converters/DataHolder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "XStreamCollectionUpdateSeconds"

    .line 1419
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p3, v0, v1}, Lcom/thoughtworks/xstream/converters/DataHolder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    move-object v3, p3

    .line 1421
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->marshallingStrategy:Lcom/thoughtworks/xstream/MarshallingStrategy;

    iget-object v4, p0, Lcom/thoughtworks/xstream/XStream;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    iget-object v5, p0, Lcom/thoughtworks/xstream/XStream;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    move-object v1, p2

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/thoughtworks/xstream/MarshallingStrategy;->unmarshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/DataHolder;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/thoughtworks/xstream/converters/ConversionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1423
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1424
    invoke-virtual {p2}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, "not available"

    :goto_1
    const-string p3, "version"

    .line 1425
    invoke-virtual {p1, p3, p2}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    throw p1
.end method

.method public useAttributeFor(Ljava/lang/Class;)V
    .locals 2

    .line 1604
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    if-nez v0, :cond_1

    .line 1605
    new-instance p1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "No "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeMapper:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "com.thoughtworks.xstream.mapper.AttributeMapper"

    .line 1606
    invoke-static {v1}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeMapper:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1609
    :cond_1
    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->addAttributeFor(Ljava/lang/Class;)V

    return-void
.end method

.method public useAttributeFor(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1

    .line 1588
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    if-nez v0, :cond_1

    .line 1589
    new-instance p1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "No "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeMapper:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.thoughtworks.xstream.mapper.AttributeMapper"

    .line 1590
    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeMapper:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " available"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1593
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->addAttributeFor(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public useAttributeFor(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    .line 1571
    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    if-nez v0, :cond_1

    .line 1572
    new-instance p1, Lcom/thoughtworks/xstream/InitializationException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "No "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeMapper:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.thoughtworks.xstream.mapper.AttributeMapper"

    .line 1573
    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$com$thoughtworks$xstream$mapper$AttributeMapper:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " available"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1576
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->addAttributeFor(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method protected useXStream11XmlFriendlyMapper()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected wrapMapper(Lcom/thoughtworks/xstream/mapper/MapperWrapper;)Lcom/thoughtworks/xstream/mapper/MapperWrapper;
    .locals 0

    return-object p1
.end method
