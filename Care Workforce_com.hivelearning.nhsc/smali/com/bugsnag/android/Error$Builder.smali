.class Lcom/bugsnag/android/Error$Builder;
.super Ljava/lang/Object;
.source "Error.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bugsnag/android/Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private attributeValue:Ljava/lang/String;

.field private final config:Lcom/bugsnag/android/Configuration;

.field private final exception:Ljava/lang/Throwable;

.field private metaData:Lcom/bugsnag/android/MetaData;

.field private final sessionTracker:Lcom/bugsnag/android/SessionTracker;

.field private severity:Lcom/bugsnag/android/Severity;

.field private severityReasonType:Ljava/lang/String;

.field private final threadState:Lcom/bugsnag/android/ThreadState;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Configuration;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;)V
    .locals 6

    .line 450
    new-instance v2, Lcom/bugsnag/android/BugsnagException;

    invoke-direct {v2, p2, p3, p4}, Lcom/bugsnag/android/BugsnagException;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/bugsnag/android/Error$Builder;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;Z)V

    return-void
.end method

.method constructor <init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;Z)V
    .locals 2

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    sget-object v0, Lcom/bugsnag/android/Severity;->WARNING:Lcom/bugsnag/android/Severity;

    iput-object v0, p0, Lcom/bugsnag/android/Error$Builder;->severity:Lcom/bugsnag/android/Severity;

    if-eqz p5, :cond_0

    move-object p5, p2

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    .line 440
    :goto_0
    new-instance v0, Lcom/bugsnag/android/ThreadState;

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p1, p4, v1, p5}, Lcom/bugsnag/android/ThreadState;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Thread;Ljava/util/Map;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/bugsnag/android/Error$Builder;->threadState:Lcom/bugsnag/android/ThreadState;

    .line 441
    iput-object p1, p0, Lcom/bugsnag/android/Error$Builder;->config:Lcom/bugsnag/android/Configuration;

    .line 442
    iput-object p2, p0, Lcom/bugsnag/android/Error$Builder;->exception:Ljava/lang/Throwable;

    const-string p1, "userSpecifiedSeverity"

    .line 443
    iput-object p1, p0, Lcom/bugsnag/android/Error$Builder;->severityReasonType:Ljava/lang/String;

    .line 444
    iput-object p3, p0, Lcom/bugsnag/android/Error$Builder;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    return-void
.end method

.method private getSession(Lcom/bugsnag/android/HandledState;)Lcom/bugsnag/android/Session;
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/bugsnag/android/Error$Builder;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 492
    :cond_0
    invoke-virtual {v0}, Lcom/bugsnag/android/SessionTracker;->getCurrentSession()Lcom/bugsnag/android/Session;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 498
    :cond_1
    iget-object v2, p0, Lcom/bugsnag/android/Error$Builder;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v2}, Lcom/bugsnag/android/Configuration;->getAutoCaptureSessions()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/bugsnag/android/Session;->isAutoCaptured()Z

    move-result v0

    if-nez v0, :cond_4

    .line 499
    :cond_2
    invoke-virtual {p1}, Lcom/bugsnag/android/HandledState;->isUnhandled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 500
    iget-object p1, p0, Lcom/bugsnag/android/Error$Builder;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    invoke-virtual {p1}, Lcom/bugsnag/android/SessionTracker;->incrementUnhandledAndCopy()Lcom/bugsnag/android/Session;

    move-result-object v1

    goto :goto_0

    .line 502
    :cond_3
    iget-object p1, p0, Lcom/bugsnag/android/Error$Builder;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    invoke-virtual {p1}, Lcom/bugsnag/android/SessionTracker;->incrementHandledAndCopy()Lcom/bugsnag/android/Session;

    move-result-object v1

    :cond_4
    :goto_0
    return-object v1
.end method


# virtual methods
.method attributeValue(Ljava/lang/String;)Lcom/bugsnag/android/Error$Builder;
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/bugsnag/android/Error$Builder;->attributeValue:Ljava/lang/String;

    return-object p0
.end method

.method build()Lcom/bugsnag/android/Error;
    .locals 10

    .line 475
    iget-object v0, p0, Lcom/bugsnag/android/Error$Builder;->severityReasonType:Ljava/lang/String;

    iget-object v1, p0, Lcom/bugsnag/android/Error$Builder;->severity:Lcom/bugsnag/android/Severity;

    iget-object v2, p0, Lcom/bugsnag/android/Error$Builder;->attributeValue:Ljava/lang/String;

    .line 476
    invoke-static {v0, v1, v2}, Lcom/bugsnag/android/HandledState;->newInstance(Ljava/lang/String;Lcom/bugsnag/android/Severity;Ljava/lang/String;)Lcom/bugsnag/android/HandledState;

    move-result-object v6

    .line 477
    invoke-direct {p0, v6}, Lcom/bugsnag/android/Error$Builder;->getSession(Lcom/bugsnag/android/HandledState;)Lcom/bugsnag/android/Session;

    move-result-object v8

    .line 479
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v4, p0, Lcom/bugsnag/android/Error$Builder;->config:Lcom/bugsnag/android/Configuration;

    iget-object v5, p0, Lcom/bugsnag/android/Error$Builder;->exception:Ljava/lang/Throwable;

    iget-object v7, p0, Lcom/bugsnag/android/Error$Builder;->severity:Lcom/bugsnag/android/Severity;

    iget-object v9, p0, Lcom/bugsnag/android/Error$Builder;->threadState:Lcom/bugsnag/android/ThreadState;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;Lcom/bugsnag/android/HandledState;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/Session;Lcom/bugsnag/android/ThreadState;)V

    .line 482
    iget-object v1, p0, Lcom/bugsnag/android/Error$Builder;->metaData:Lcom/bugsnag/android/MetaData;

    if-eqz v1, :cond_0

    .line 483
    invoke-virtual {v0, v1}, Lcom/bugsnag/android/Error;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    :cond_0
    return-object v0
.end method

.method metaData(Lcom/bugsnag/android/MetaData;)Lcom/bugsnag/android/Error$Builder;
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/bugsnag/android/Error$Builder;->metaData:Lcom/bugsnag/android/MetaData;

    return-object p0
.end method

.method severity(Lcom/bugsnag/android/Severity;)Lcom/bugsnag/android/Error$Builder;
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/bugsnag/android/Error$Builder;->severity:Lcom/bugsnag/android/Severity;

    return-object p0
.end method

.method severityReasonType(Ljava/lang/String;)Lcom/bugsnag/android/Error$Builder;
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/bugsnag/android/Error$Builder;->severityReasonType:Ljava/lang/String;

    return-object p0
.end method
