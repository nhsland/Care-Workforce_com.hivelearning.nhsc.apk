.class Lcom/bugsnag/android/SessionTracker;
.super Ljava/util/Observable;
.source "SessionTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final DEFAULT_TIMEOUT_MS:I = 0x7530

.field private static final KEY_LIFECYCLE_CALLBACK:Ljava/lang/String; = "ActivityLifecycle"


# instance fields
.field final client:Lcom/bugsnag/android/Client;

.field final configuration:Lcom/bugsnag/android/Configuration;

.field private final currentSession:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/bugsnag/android/Session;",
            ">;"
        }
    .end annotation
.end field

.field private final flushingRequest:Ljava/util/concurrent/Semaphore;

.field private final foregroundActivities:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final foregroundDetector:Lcom/bugsnag/android/ForegroundDetector;

.field private final lastEnteredForegroundMs:Ljava/util/concurrent/atomic/AtomicLong;

.field private final lastExitedForegroundMs:Ljava/util/concurrent/atomic/AtomicLong;

.field final sessionStore:Lcom/bugsnag/android/SessionStore;

.field private final timeoutMs:J


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Configuration;Lcom/bugsnag/android/Client;JLcom/bugsnag/android/SessionStore;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/SessionTracker;->foregroundActivities:Ljava/util/Collection;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/bugsnag/android/SessionTracker;->lastExitedForegroundMs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/bugsnag/android/SessionTracker;->lastEnteredForegroundMs:Ljava/util/concurrent/atomic/AtomicLong;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/SessionTracker;->currentSession:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/bugsnag/android/SessionTracker;->flushingRequest:Ljava/util/concurrent/Semaphore;

    .line 55
    iput-object p1, p0, Lcom/bugsnag/android/SessionTracker;->configuration:Lcom/bugsnag/android/Configuration;

    .line 56
    iput-object p2, p0, Lcom/bugsnag/android/SessionTracker;->client:Lcom/bugsnag/android/Client;

    .line 57
    iput-wide p3, p0, Lcom/bugsnag/android/SessionTracker;->timeoutMs:J

    .line 58
    iput-object p5, p0, Lcom/bugsnag/android/SessionTracker;->sessionStore:Lcom/bugsnag/android/SessionStore;

    .line 59
    new-instance p1, Lcom/bugsnag/android/ForegroundDetector;

    iget-object p2, p2, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/bugsnag/android/ForegroundDetector;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bugsnag/android/SessionTracker;->foregroundDetector:Lcom/bugsnag/android/ForegroundDetector;

    .line 60
    invoke-direct {p0}, Lcom/bugsnag/android/SessionTracker;->notifyNdkInForeground()V

    return-void
.end method

.method constructor <init>(Lcom/bugsnag/android/Configuration;Lcom/bugsnag/android/Client;Lcom/bugsnag/android/SessionStore;)V
    .locals 6

    const-wide/16 v3, 0x7530

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/bugsnag/android/SessionTracker;-><init>(Lcom/bugsnag/android/Configuration;Lcom/bugsnag/android/Client;JLcom/bugsnag/android/SessionStore;)V

    return-void
.end method

.method private getActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    .line 329
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getReleaseStage()Ljava/lang/String;
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker;->client:Lcom/bugsnag/android/Client;

    iget-object v0, v0, Lcom/bugsnag/android/Client;->appData:Lcom/bugsnag/android/AppData;

    invoke-virtual {v0}, Lcom/bugsnag/android/AppData;->getAppDataSummary()Ljava/util/Map;

    move-result-object v0

    const-string v1, "releaseStage"

    invoke-static {v1, v0}, Lcom/bugsnag/android/MapUtils;->getStringFromMap(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private leaveBreadcrumb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker;->configuration:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->isAutomaticallyCollectingBreadcrumbs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ActivityLifecycle"

    .line 339
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :try_start_0
    iget-object p2, p0, Lcom/bugsnag/android/SessionTracker;->client:Lcom/bugsnag/android/Client;

    sget-object v1, Lcom/bugsnag/android/BreadcrumbType;->NAVIGATION:Lcom/bugsnag/android/BreadcrumbType;

    invoke-virtual {p2, p1, v1, v0}, Lcom/bugsnag/android/Client;->leaveBreadcrumb(Ljava/lang/String;Lcom/bugsnag/android/BreadcrumbType;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 344
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to leave breadcrumb in SessionTracker: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private notifyNdkInForeground()V
    .locals 5

    .line 404
    invoke-virtual {p0}, Lcom/bugsnag/android/SessionTracker;->isInForeground()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    new-instance v1, Lcom/bugsnag/android/NativeInterface$Message;

    sget-object v2, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_IN_FOREGROUND:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/io/Serializable;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    .line 409
    invoke-virtual {p0}, Lcom/bugsnag/android/SessionTracker;->getContextActivity()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/bugsnag/android/NativeInterface$Message;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    .line 407
    invoke-virtual {p0, v1}, Lcom/bugsnag/android/SessionTracker;->notifyObservers(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private notifySessionStartObserver(Lcom/bugsnag/android/Session;)V
    .locals 6

    .line 120
    invoke-virtual {p0}, Lcom/bugsnag/android/SessionTracker;->setChanged()V

    .line 121
    invoke-virtual {p1}, Lcom/bugsnag/android/Session;->getStartedAt()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/bugsnag/android/DateUtils;->toIso8601(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/bugsnag/android/NativeInterface$Message;

    sget-object v2, Lcom/bugsnag/android/NativeInterface$MessageType;->START_SESSION:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/io/Serializable;

    .line 124
    invoke-virtual {p1}, Lcom/bugsnag/android/Session;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 125
    invoke-virtual {p1}, Lcom/bugsnag/android/Session;->getHandledCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {p1}, Lcom/bugsnag/android/Session;->getUnhandledCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, v3, v0

    .line 124
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/bugsnag/android/NativeInterface$Message;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0, v1}, Lcom/bugsnag/android/SessionTracker;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method private trackSessionIfNeeded(Lcom/bugsnag/android/Session;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker;->configuration:Lcom/bugsnag/android/Configuration;

    invoke-direct {p0}, Lcom/bugsnag/android/SessionTracker;->getReleaseStage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/Configuration;->shouldNotifyForReleaseStage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker;->configuration:Lcom/bugsnag/android/Configuration;

    .line 165
    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getAutoCaptureSessions()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/bugsnag/android/Session;->isAutoCaptured()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/bugsnag/android/Session;->isTracked()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    invoke-direct {p0, p1}, Lcom/bugsnag/android/SessionTracker;->notifySessionStartObserver(Lcom/bugsnag/android/Session;)V

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker;->configuration:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getSessionEndpoint()Ljava/lang/String;

    .line 171
    new-instance v0, Lcom/bugsnag/android/SessionTracker$1;

    invoke-direct {v0, p0, p1}, Lcom/bugsnag/android/SessionTracker$1;-><init>(Lcom/bugsnag/android/SessionTracker;Lcom/bugsnag/android/Session;)V

    invoke-static {v0}, Lcom/bugsnag/android/Async;->run(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker;->sessionStore:Lcom/bugsnag/android/SessionStore;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/SessionStore;->write(Lcom/bugsnag/android/JsonStream$Streamable;)Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method flushStoredSessions()V
    .locals 6

    .line 259
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker;->flushingRequest:Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker;->sessionStore:Lcom/bugsnag/android/SessionStore;

    invoke-virtual {v0}, Lcom/bugsnag/android/SessionStore;->findStoredFiles()Ljava/util/List;

    move-result-object v0

    .line 265
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 266
    new-instance v2, Lcom/bugsnag/android/SessionTrackingPayload;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bugsnag/android/SessionTracker;->client:Lcom/bugsnag/android/Client;

    iget-object v4, v4, Lcom/bugsnag/android/Client;->appData:Lcom/bugsnag/android/AppData;

    iget-object v5, p0, Lcom/bugsnag/android/SessionTracker;->client:Lcom/bugsnag/android/Client;

    iget-object v5, v5, Lcom/bugsnag/android/Client;->deviceData:Lcom/bugsnag/android/DeviceData;

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/bugsnag/android/SessionTrackingPayload;-><init>(Lcom/bugsnag/android/Session;Ljava/util/List;Lcom/bugsnag/android/AppData;Lcom/bugsnag/android/DeviceData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :try_start_1
    iget-object v3, p0, Lcom/bugsnag/android/SessionTracker;->configuration:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v3}, Lcom/bugsnag/android/Configuration;->getDelivery()Lcom/bugsnag/android/Delivery;

    move-result-object v3

    iget-object v4, p0, Lcom/bugsnag/android/SessionTracker;->configuration:Lcom/bugsnag/android/Configuration;

    invoke-interface {v3, v2, v4}, Lcom/bugsnag/android/Delivery;->deliver(Lcom/bugsnag/android/SessionTrackingPayload;Lcom/bugsnag/android/Configuration;)V

    .line 273
    iget-object v2, p0, Lcom/bugsnag/android/SessionTracker;->sessionStore:Lcom/bugsnag/android/SessionStore;

    invoke-virtual {v2, v0}, Lcom/bugsnag/android/SessionStore;->deleteStoredFiles(Ljava/util/Collection;)V
    :try_end_1
    .catch Lcom/bugsnag/android/DeliveryFailureException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "Deleting invalid session tracking payload"

    .line 279
    invoke-static {v3, v2}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    iget-object v2, p0, Lcom/bugsnag/android/SessionTracker;->sessionStore:Lcom/bugsnag/android/SessionStore;

    invoke-virtual {v2, v0}, Lcom/bugsnag/android/SessionStore;->deleteStoredFiles(Ljava/util/Collection;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 275
    iget-object v3, p0, Lcom/bugsnag/android/SessionTracker;->sessionStore:Lcom/bugsnag/android/SessionStore;

    invoke-virtual {v3, v0}, Lcom/bugsnag/android/SessionStore;->cancelQueuedFiles(Ljava/util/Collection;)V

    const-string v0, "Leaving session payload for future delivery"

    .line 276
    invoke-static {v0, v2}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker;->flushingRequest:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->release(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/bugsnag/android/SessionTracker;->flushingRequest:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/Semaphore;->release(I)V

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method getContextActivity()Ljava/lang/String;
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker;->foregroundActivities:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker;->foregroundActivities:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 443
    iget-object v1, p0, Lcom/bugsnag/android/SessionTracker;->foregroundActivities:Ljava/util/Collection;

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    .line 444
    aget-object v0, v1, v0

    return-object v0
.end method

.method getCurrentSession()Lcom/bugsnag/android/Session;
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker;->currentSession:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bugsnag/android/Session;

    if-eqz v0, :cond_0

    .line 221
    iget-object v1, v0, Lcom/bugsnag/android/Session;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getDurationInForegroundMs(J)Ljava/lang/Long;
    .locals 5

    .line 422
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker;->lastEnteredForegroundMs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 424
    invoke-virtual {p0}, Lcom/bugsnag/android/SessionTracker;->isInForeground()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 429
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    cmp-long v2, v0, v3

    if-eqz v2, :cond_1

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_1
    move-wide p1, v3

    :goto_0
    cmp-long v0, p1, v3

    if-lez v0, :cond_2

    move-wide v3, p1

    .line 432
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method incrementHandledAndCopy()Lcom/bugsnag/android/Session;
    .locals 1

    .line 248
    invoke-virtual {p0}, Lcom/bugsnag/android/SessionTracker;->getCurrentSession()Lcom/bugsnag/android/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Lcom/bugsnag/android/Session;->incrementHandledAndCopy()Lcom/bugsnag/android/Session;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method incrementUnhandledAndCopy()Lcom/bugsnag/android/Session;
    .locals 1

    .line 234
    invoke-virtual {p0}, Lcom/bugsnag/android/SessionTracker;->getCurrentSession()Lcom/bugsnag/android/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/bugsnag/android/Session;->incrementUnhandledAndCopy()Lcom/bugsnag/android/Session;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method isInForeground()Ljava/lang/Boolean;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker;->foregroundDetector:Lcom/bugsnag/android/ForegroundDetector;

    invoke-virtual {v0}, Lcom/bugsnag/android/ForegroundDetector;->isInForeground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method leaveLifecycleBreadcrumb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/bugsnag/android/SessionTracker;->leaveBreadcrumb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 291
    invoke-direct {p0, p1}, Lcom/bugsnag/android/SessionTracker;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onCreate()"

    invoke-virtual {p0, p1, p2}, Lcom/bugsnag/android/SessionTracker;->leaveLifecycleBreadcrumb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 325
    invoke-direct {p0, p1}, Lcom/bugsnag/android/SessionTracker;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onDestroy()"

    invoke-virtual {p0, p1, v0}, Lcom/bugsnag/android/SessionTracker;->leaveLifecycleBreadcrumb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 308
    invoke-direct {p0, p1}, Lcom/bugsnag/android/SessionTracker;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPause()"

    invoke-virtual {p0, p1, v0}, Lcom/bugsnag/android/SessionTracker;->leaveLifecycleBreadcrumb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 303
    invoke-direct {p0, p1}, Lcom/bugsnag/android/SessionTracker;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onResume()"

    invoke-virtual {p0, p1, v0}, Lcom/bugsnag/android/SessionTracker;->leaveLifecycleBreadcrumb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/bugsnag/android/SessionTracker;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onSaveInstanceState()"

    invoke-virtual {p0, p1, p2}, Lcom/bugsnag/android/SessionTracker;->leaveLifecycleBreadcrumb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .line 296
    invoke-direct {p0, p1}, Lcom/bugsnag/android/SessionTracker;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onStart()"

    .line 297
    invoke-virtual {p0, p1, v0}, Lcom/bugsnag/android/SessionTracker;->leaveLifecycleBreadcrumb(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/bugsnag/android/SessionTracker;->updateForegroundTracker(Ljava/lang/String;ZJ)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    .line 313
    invoke-direct {p0, p1}, Lcom/bugsnag/android/SessionTracker;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onStop()"

    .line 314
    invoke-virtual {p0, p1, v0}, Lcom/bugsnag/android/SessionTracker;->leaveLifecycleBreadcrumb(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/bugsnag/android/SessionTracker;->updateForegroundTracker(Ljava/lang/String;ZJ)V

    return-void
.end method

.method onAutoCaptureEnabled()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker;->currentSession:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bugsnag/android/Session;

    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/bugsnag/android/SessionTracker;->foregroundActivities:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    invoke-direct {p0, v0}, Lcom/bugsnag/android/SessionTracker;->trackSessionIfNeeded(Lcom/bugsnag/android/Session;)V

    :cond_0
    return-void
.end method

.method registerExistingSession(Ljava/util/Date;Ljava/lang/String;Lcom/bugsnag/android/User;II)Lcom/bugsnag/android/Session;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 144
    new-instance v0, Lcom/bugsnag/android/Session;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/bugsnag/android/Session;-><init>(Ljava/lang/String;Ljava/util/Date;Lcom/bugsnag/android/User;II)V

    .line 145
    invoke-direct {p0, v0}, Lcom/bugsnag/android/SessionTracker;->notifySessionStartObserver(Lcom/bugsnag/android/Session;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/bugsnag/android/SessionTracker;->setChanged()V

    .line 148
    new-instance p1, Lcom/bugsnag/android/NativeInterface$Message;

    sget-object p2, Lcom/bugsnag/android/NativeInterface$MessageType;->STOP_SESSION:Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-direct {p1, p2, v0}, Lcom/bugsnag/android/NativeInterface$Message;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/bugsnag/android/SessionTracker;->notifyObservers(Ljava/lang/Object;)V

    .line 151
    :goto_0
    iget-object p1, p0, Lcom/bugsnag/android/SessionTracker;->currentSession:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method resumeSession()Z
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker;->currentSession:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bugsnag/android/Session;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0, v1}, Lcom/bugsnag/android/SessionTracker;->startSession(Z)Lcom/bugsnag/android/Session;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_0
    iget-object v2, v0, Lcom/bugsnag/android/Session;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    :goto_0
    if-eqz v0, :cond_1

    .line 114
    invoke-direct {p0, v0}, Lcom/bugsnag/android/SessionTracker;->notifySessionStartObserver(Lcom/bugsnag/android/Session;)V

    :cond_1
    return v1
.end method

.method startFirstSession(Landroid/app/Activity;)V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker;->currentSession:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bugsnag/android/Session;

    if-nez v0, :cond_0

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 359
    iget-object v2, p0, Lcom/bugsnag/android/SessionTracker;->lastEnteredForegroundMs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 360
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker;->client:Lcom/bugsnag/android/Client;

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->getUser()Lcom/bugsnag/android/User;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/bugsnag/android/SessionTracker;->startNewSession(Ljava/util/Date;Lcom/bugsnag/android/User;Z)Lcom/bugsnag/android/Session;

    .line 361
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker;->foregroundActivities:Ljava/util/Collection;

    invoke-direct {p0, p1}, Lcom/bugsnag/android/SessionTracker;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method startNewSession(Ljava/util/Date;Lcom/bugsnag/android/User;Z)Lcom/bugsnag/android/Session;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker;->configuration:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getSessionEndpoint()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "The session tracking endpoint has not been set. Session tracking is disabled"

    .line 77
    invoke-static {p1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 81
    :cond_0
    new-instance v0, Lcom/bugsnag/android/Session;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/bugsnag/android/Session;-><init>(Ljava/lang/String;Ljava/util/Date;Lcom/bugsnag/android/User;Z)V

    .line 82
    iget-object p1, p0, Lcom/bugsnag/android/SessionTracker;->currentSession:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 83
    invoke-direct {p0, v0}, Lcom/bugsnag/android/SessionTracker;->trackSessionIfNeeded(Lcom/bugsnag/android/Session;)V

    return-object v0
.end method

.method startSession(Z)Lcom/bugsnag/android/Session;
    .locals 2

    .line 88
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lcom/bugsnag/android/SessionTracker;->client:Lcom/bugsnag/android/Client;

    invoke-virtual {v1}, Lcom/bugsnag/android/Client;->getUser()Lcom/bugsnag/android/User;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/bugsnag/android/SessionTracker;->startNewSession(Ljava/util/Date;Lcom/bugsnag/android/User;Z)Lcom/bugsnag/android/Session;

    move-result-object p1

    return-object p1
.end method

.method stopSession()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker;->currentSession:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bugsnag/android/Session;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, v0, Lcom/bugsnag/android/Session;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/bugsnag/android/SessionTracker;->setChanged()V

    .line 97
    new-instance v0, Lcom/bugsnag/android/NativeInterface$Message;

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->STOP_SESSION:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bugsnag/android/NativeInterface$Message;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/bugsnag/android/SessionTracker;->notifyObservers(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method updateForegroundTracker(Ljava/lang/String;ZJ)V
    .locals 4

    if-eqz p2, :cond_1

    .line 380
    iget-object p2, p0, Lcom/bugsnag/android/SessionTracker;->lastExitedForegroundMs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    sub-long v0, p3, v0

    .line 383
    iget-object p2, p0, Lcom/bugsnag/android/SessionTracker;->foregroundActivities:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 384
    iget-object p2, p0, Lcom/bugsnag/android/SessionTracker;->lastEnteredForegroundMs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 386
    iget-wide v2, p0, Lcom/bugsnag/android/SessionTracker;->timeoutMs:J

    cmp-long p2, v0, v2

    if-ltz p2, :cond_0

    iget-object p2, p0, Lcom/bugsnag/android/SessionTracker;->configuration:Lcom/bugsnag/android/Configuration;

    .line 387
    invoke-virtual {p2}, Lcom/bugsnag/android/Configuration;->getAutoCaptureSessions()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 388
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p3, p4}, Ljava/util/Date;-><init>(J)V

    iget-object p3, p0, Lcom/bugsnag/android/SessionTracker;->client:Lcom/bugsnag/android/Client;

    invoke-virtual {p3}, Lcom/bugsnag/android/Client;->getUser()Lcom/bugsnag/android/User;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p0, p2, p3, p4}, Lcom/bugsnag/android/SessionTracker;->startNewSession(Ljava/util/Date;Lcom/bugsnag/android/User;Z)Lcom/bugsnag/android/Session;

    .line 391
    :cond_0
    iget-object p2, p0, Lcom/bugsnag/android/SessionTracker;->foregroundActivities:Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 393
    :cond_1
    iget-object p2, p0, Lcom/bugsnag/android/SessionTracker;->foregroundActivities:Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 395
    iget-object p1, p0, Lcom/bugsnag/android/SessionTracker;->foregroundActivities:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 396
    iget-object p1, p0, Lcom/bugsnag/android/SessionTracker;->lastExitedForegroundMs:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 399
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/bugsnag/android/SessionTracker;->setChanged()V

    .line 400
    invoke-direct {p0}, Lcom/bugsnag/android/SessionTracker;->notifyNdkInForeground()V

    return-void
.end method
