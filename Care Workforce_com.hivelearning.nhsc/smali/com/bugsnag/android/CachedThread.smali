.class Lcom/bugsnag/android/CachedThread;
.super Ljava/lang/Object;
.source "CachedThread.java"

# interfaces
.implements Lcom/bugsnag/android/JsonStream$Streamable;


# instance fields
.field private final id:J

.field private final isErrorReportingThread:Z

.field private final name:Ljava/lang/String;

.field private stacktrace:Lcom/bugsnag/android/Stacktrace;

.field private final type:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;ZLcom/bugsnag/android/Stacktrace;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/bugsnag/android/CachedThread;->id:J

    .line 34
    iput-object p3, p0, Lcom/bugsnag/android/CachedThread;->name:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/bugsnag/android/CachedThread;->type:Ljava/lang/String;

    .line 36
    iput-boolean p5, p0, Lcom/bugsnag/android/CachedThread;->isErrorReportingThread:Z

    .line 37
    iput-object p6, p0, Lcom/bugsnag/android/CachedThread;->stacktrace:Lcom/bugsnag/android/Stacktrace;

    return-void
.end method

.method constructor <init>(JLjava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 28
    new-instance v6, Lcom/bugsnag/android/Stacktrace;

    invoke-direct {v6, p6}, Lcom/bugsnag/android/Stacktrace;-><init>(Ljava/util/List;)V

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bugsnag/android/CachedThread;-><init>(JLjava/lang/String;Ljava/lang/String;ZLcom/bugsnag/android/Stacktrace;)V

    return-void
.end method

.method constructor <init>(Lcom/bugsnag/android/Configuration;JLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/StackTraceElement;)V
    .locals 7

    .line 22
    new-instance v6, Lcom/bugsnag/android/Stacktrace;

    .line 23
    invoke-virtual {p1}, Lcom/bugsnag/android/Configuration;->getProjectPackages()[Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p7, p1}, Lcom/bugsnag/android/Stacktrace;-><init>([Ljava/lang/StackTraceElement;[Ljava/lang/String;)V

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/bugsnag/android/CachedThread;-><init>(JLjava/lang/String;Ljava/lang/String;ZLcom/bugsnag/android/Stacktrace;)V

    return-void
.end method


# virtual methods
.method public toStream(Lcom/bugsnag/android/JsonStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->beginObject()Lcom/bugsnag/android/JsonWriter;

    const-string v0, "id"

    .line 43
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-wide v1, p0, Lcom/bugsnag/android/CachedThread;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/bugsnag/android/JsonStream;->value(J)Lcom/bugsnag/android/JsonWriter;

    const-string v0, "name"

    .line 44
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/CachedThread;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v0, "type"

    .line 45
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/CachedThread;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Ljava/lang/String;)Lcom/bugsnag/android/JsonWriter;

    const-string v0, "stacktrace"

    .line 46
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/CachedThread;->stacktrace:Lcom/bugsnag/android/Stacktrace;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Lcom/bugsnag/android/JsonStream$Streamable;)V

    .line 47
    iget-boolean v0, p0, Lcom/bugsnag/android/CachedThread;->isErrorReportingThread:Z

    if-eqz v0, :cond_0

    const-string v0, "errorReportingThread"

    .line 48
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/JsonStream;->name(Ljava/lang/String;)Lcom/bugsnag/android/JsonStream;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/JsonStream;->value(Z)Lcom/bugsnag/android/JsonWriter;

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/bugsnag/android/JsonStream;->endObject()Lcom/bugsnag/android/JsonWriter;

    return-void
.end method
