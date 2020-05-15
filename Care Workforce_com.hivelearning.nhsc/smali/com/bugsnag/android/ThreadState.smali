.class Lcom/bugsnag/android/ThreadState;
.super Ljava/lang/Object;
.source "ThreadState.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# static fields
.field private static final THREAD_TYPE:Ljava/lang/String; = "android"


# instance fields
.field private final cachedThreads:[Lcom/bugsnag/android/CachedThread;


# direct methods
.method public constructor <init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Thread;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bugsnag/android/Configuration;",
            "Ljava/lang/Thread;",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 28
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p4, :cond_1

    .line 31
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    .line 35
    invoke-direct {v0, v2}, Lcom/bugsnag/android/ThreadState;->sortThreadsById(Ljava/util/Map;)[Ljava/lang/Thread;

    move-result-object v1

    .line 36
    array-length v5, v1

    new-array v5, v5, [Lcom/bugsnag/android/CachedThread;

    iput-object v5, v0, Lcom/bugsnag/android/ThreadState;->cachedThreads:[Lcom/bugsnag/android/CachedThread;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 37
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_3

    .line 38
    aget-object v7, v1, v6

    .line 39
    iget-object v8, v0, Lcom/bugsnag/android/ThreadState;->cachedThreads:[Lcom/bugsnag/android/CachedThread;

    new-instance v17, Lcom/bugsnag/android/CachedThread;

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v11

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v13

    .line 40
    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    cmp-long v14, v9, v3

    if-nez v14, :cond_2

    const/4 v9, 0x1

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    .line 41
    :goto_1
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, [Ljava/lang/StackTraceElement;

    const-string v14, "android"

    move-object/from16 v9, v17

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v16}, Lcom/bugsnag/android/CachedThread;-><init>(Lcom/bugsnag/android/Configuration;JLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/StackTraceElement;)V

    aput-object v17, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method constructor <init>([Lcom/bugsnag/android/CachedThread;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/bugsnag/android/ThreadState;->cachedThreads:[Lcom/bugsnag/android/CachedThread;

    return-void
.end method

.method private sortThreadsById(Ljava/util/Map;)[Ljava/lang/Thread;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;)[",
            "Ljava/lang/Thread;"
        }
    .end annotation

    .line 55
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Thread;

    .line 57
    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Thread;

    .line 58
    new-instance v0, Lcom/bugsnag/android/ThreadState$1;

    invoke-direct {v0, p0}, Lcom/bugsnag/android/ThreadState$1;-><init>(Lcom/bugsnag/android/ThreadState;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p1
.end method


# virtual methods
.method public toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginArray()Lcom/bugsnag/android/JsonWriter;

    .line 69
    iget-object v0, p0, Lcom/bugsnag/android/ThreadState;->cachedThreads:[Lcom/bugsnag/android/CachedThread;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 70
    invoke-virtual {p1, v3}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endArray()Lcom/bugsnag/android/JsonWriter;

    return-void
.end method
