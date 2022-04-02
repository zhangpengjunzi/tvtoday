.class final Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;
.super Ljava/lang/Object;
.source "RtpPacketReorderingQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;
    }
.end annotation


# static fields
.field static final MAX_SEQUENCE_LEAP_ALLOWED:I = 0x3e8

.field private static final MAX_SEQUENCE_NUMBER:I = 0xffff


# instance fields
.field private lastDequeuedSequenceNumber:I

.field private lastReceivedSequenceNumber:I

.field private final packetQueue:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;",
            ">;"
        }
    .end annotation
.end field

.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/google/android/exoplayer2/source/rtsp/-$$Lambda$RtpPacketReorderingQueue$qAPhdd5JFLQl9AlPzALrD49_Qk8;->INSTANCE:Lcom/google/android/exoplayer2/source/rtsp/-$$Lambda$RtpPacketReorderingQueue$qAPhdd5JFLQl9AlPzALrD49_Qk8;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->packetQueue:Ljava/util/TreeSet;

    .line 62
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->reset()V

    return-void
.end method

.method private declared-synchronized addToQueue(Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;)V
    .locals 1

    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;->packet:Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;

    iget v0, v0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;->sequenceNumber:I

    iput v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->lastReceivedSequenceNumber:I

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->packetQueue:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static calculateSequenceNumberShift(II)I
    .locals 4

    sub-int v0, p0, p1

    .line 185
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_1

    .line 187
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 188
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v1, v3

    const v3, 0xffff

    add-int/2addr v1, v3

    if-ge v1, v2, :cond_1

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    neg-int v1, v1

    :goto_0
    return v1

    :cond_1
    return v0
.end method

.method static synthetic lambda$new$0(Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;)I
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;->packet:Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;

    iget p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;->sequenceNumber:I

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;->packet:Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;

    iget p1, p1, Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;->sequenceNumber:I

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->calculateSequenceNumberShift(II)I

    move-result p0

    return p0
.end method

.method private static nextSequenceNumber(I)I
    .locals 1

    add-int/lit8 p0, p0, 0x1

    const v0, 0xffff

    .line 165
    rem-int/2addr p0, v0

    return p0
.end method

.method private static prevSequenceNumber(I)I
    .locals 1

    if-nez p0, :cond_0

    const p0, 0xfffe

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    const v0, 0xffff

    .line 171
    rem-int/2addr p0, v0

    :goto_0
    return p0
.end method


# virtual methods
.method public declared-synchronized offer(Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;J)Z
    .locals 4

    monitor-enter p0

    .line 89
    :try_start_0
    iget v0, p1, Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;->sequenceNumber:I

    .line 90
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->started:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->reset()V

    .line 92
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->prevSequenceNumber(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->lastDequeuedSequenceNumber:I

    .line 93
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->started:Z

    .line 94
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;J)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->addToQueue(Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return v2

    .line 98
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->lastReceivedSequenceNumber:I

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->nextSequenceNumber(I)I

    move-result v1

    .line 101
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->calculateSequenceNumberShift(II)I

    move-result v1

    .line 102
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_2

    .line 103
    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->lastDequeuedSequenceNumber:I

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->calculateSequenceNumberShift(II)I

    move-result v0

    if-lez v0, :cond_1

    .line 105
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;J)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->addToQueue(Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    monitor-exit p0

    return v2

    :cond_1
    const/4 p1, 0x0

    .line 115
    monitor-exit p0

    return p1

    .line 110
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->prevSequenceNumber(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->lastDequeuedSequenceNumber:I

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->packetQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 112
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;-><init>(Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;J)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->addToQueue(Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized poll(J)Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;
    .locals 6

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->packetQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 130
    monitor-exit p0

    return-object v1

    .line 133
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->packetQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;

    .line 134
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;->packet:Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;

    iget v2, v2, Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;->sequenceNumber:I

    .line 136
    iget v3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->lastDequeuedSequenceNumber:I

    invoke-static {v3}, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->nextSequenceNumber(I)I

    move-result v3

    if-eq v2, v3, :cond_2

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;->receivedTimestampMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v5, p1, v3

    if-ltz v5, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    monitor-exit p0

    return-object v1

    .line 138
    :cond_2
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->packetQueue:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    .line 139
    iput v2, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->lastDequeuedSequenceNumber:I

    .line 140
    iget-object p1, v0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue$RtpPacketContainer;->packet:Lcom/google/android/exoplayer2/source/rtsp/RtpPacket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->packetQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->started:Z

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->lastDequeuedSequenceNumber:I

    .line 69
    iput v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtpPacketReorderingQueue;->lastReceivedSequenceNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
