.class public interface abstract annotation Lcom/today/player/picasso/RoundTransformation$RoundType;
.super Ljava/lang/Object;
.source "RoundTransformation.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/today/player/picasso/RoundTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "RoundType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final ALL:I = 0x0

.field public static final BOTTOM:I = 0x3

.field public static final LEFT:I = 0x4

.field public static final LEFT_BOTTOM:I = 0x6

.field public static final LEFT_TOP:I = 0x5

.field public static final NONE:I = 0x9

.field public static final RIGHT:I = 0x2

.field public static final RIGHT_BOTTOM:I = 0x8

.field public static final RIGHT_TOP:I = 0x7

.field public static final TOP:I = 0x1
