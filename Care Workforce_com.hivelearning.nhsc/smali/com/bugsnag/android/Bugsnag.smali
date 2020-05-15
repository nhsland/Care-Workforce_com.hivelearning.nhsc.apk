.class public final Lcom/bugsnag/android/Bugsnag;
.super Ljava/lang/Object;
.source "Bugsnag.java"


# static fields
.field static client:Lcom/bugsnag/android/Client;

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bugsnag/android/Bugsnag;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 569
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/bugsnag/android/Client;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static beforeNotify(Lcom/bugsnag/android/BeforeNotify;)V
    .locals 1

    .line 363
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->beforeNotify(Lcom/bugsnag/android/BeforeNotify;)V

    return-void
.end method

.method public static beforeRecordBreadcrumb(Lcom/bugsnag/android/BeforeRecordBreadcrumb;)V
    .locals 1

    .line 386
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->beforeRecordBreadcrumb(Lcom/bugsnag/android/BeforeRecordBreadcrumb;)V

    return-void
.end method

.method public static clearBreadcrumbs()V
    .locals 1

    .line 640
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->clearBreadcrumbs()V

    return-void
.end method

.method public static clearTab(Ljava/lang/String;)V
    .locals 1

    .line 578
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->clearTab(Ljava/lang/String;)V

    return-void
.end method

.method public static clearUser()V
    .locals 1

    .line 270
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->clearUser()V

    return-void
.end method

.method public static disableExceptionHandler()V
    .locals 1

    .line 655
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->disableExceptionHandler()V

    return-void
.end method

.method public static enableExceptionHandler()V
    .locals 1

    .line 648
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->enableExceptionHandler()V

    return-void
.end method

.method public static getClient()Lcom/bugsnag/android/Client;
    .locals 2

    .line 741
    sget-object v0, Lcom/bugsnag/android/Bugsnag;->client:Lcom/bugsnag/android/Client;

    if-eqz v0, :cond_0

    return-object v0

    .line 742
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call Bugsnag.init before any other Bugsnag methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getContext()Ljava/lang/String;
    .locals 1

    .line 107
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->getContext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMetaData()Lcom/bugsnag/android/MetaData;
    .locals 1

    .line 587
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->getMetaData()Lcom/bugsnag/android/MetaData;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/bugsnag/android/Client;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 37
    invoke-static {p0, v0, v1}, Lcom/bugsnag/android/Bugsnag;->init(Landroid/content/Context;Ljava/lang/String;Z)Lcom/bugsnag/android/Client;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;Lcom/bugsnag/android/Configuration;)Lcom/bugsnag/android/Client;
    .locals 2

    .line 75
    sget-object v0, Lcom/bugsnag/android/Bugsnag;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lcom/bugsnag/android/Bugsnag;->client:Lcom/bugsnag/android/Client;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lcom/bugsnag/android/Client;

    invoke-direct {v1, p0, p1}, Lcom/bugsnag/android/Client;-><init>(Landroid/content/Context;Lcom/bugsnag/android/Configuration;)V

    sput-object v1, Lcom/bugsnag/android/Bugsnag;->client:Lcom/bugsnag/android/Client;

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->logClientInitWarning()V

    .line 81
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    sget-object p0, Lcom/bugsnag/android/Bugsnag;->client:Lcom/bugsnag/android/Client;

    return-object p0

    :catchall_0
    move-exception p0

    .line 81
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)Lcom/bugsnag/android/Client;
    .locals 1

    const/4 v0, 0x1

    .line 48
    invoke-static {p0, p1, v0}, Lcom/bugsnag/android/Bugsnag;->init(Landroid/content/Context;Ljava/lang/String;Z)Lcom/bugsnag/android/Client;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Z)Lcom/bugsnag/android/Client;
    .locals 0

    .line 63
    invoke-static {p0, p1, p2}, Lcom/bugsnag/android/ConfigFactory;->createNewConfiguration(Landroid/content/Context;Ljava/lang/String;Z)Lcom/bugsnag/android/Configuration;

    move-result-object p1

    .line 64
    invoke-static {p0, p1}, Lcom/bugsnag/android/Bugsnag;->init(Landroid/content/Context;Lcom/bugsnag/android/Configuration;)Lcom/bugsnag/android/Client;

    move-result-object p0

    return-object p0
.end method

.method public static internalClientNotify(Ljava/lang/Throwable;Ljava/util/Map;ZLcom/bugsnag/android/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/bugsnag/android/Callback;",
            ")V"
        }
    .end annotation

    .line 550
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/bugsnag/android/Client;->internalClientNotify(Ljava/lang/Throwable;Ljava/util/Map;ZLcom/bugsnag/android/Callback;)V

    return-void
.end method

.method public static leaveBreadcrumb(Ljava/lang/String;)V
    .locals 1

    .line 606
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->leaveBreadcrumb(Ljava/lang/String;)V

    return-void
.end method

.method public static leaveBreadcrumb(Ljava/lang/String;Lcom/bugsnag/android/BreadcrumbType;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bugsnag/android/BreadcrumbType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 620
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/bugsnag/android/Client;->leaveBreadcrumb(Ljava/lang/String;Lcom/bugsnag/android/BreadcrumbType;Ljava/util/Map;)V

    return-void
.end method

.method private static logClientInitWarning()V
    .locals 1

    const-string v0, "It appears that Bugsnag.init() was called more than once. Subsequent calls have no effect, but may indicate that Bugsnag is not integrated in an Application subclass, which can lead to undesired behaviour."

    .line 86
    invoke-static {v0}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public static notify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 532
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    new-instance v1, Lcom/bugsnag/android/Bugsnag$4;

    invoke-direct {v1, p4, p5, p2}, Lcom/bugsnag/android/Bugsnag$4;-><init>(Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1, p3, v1}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Callback;)V

    return-void
.end method

.method public static notify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Callback;)V
    .locals 1

    .line 423
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Callback;)V

    return-void
.end method

.method public static notify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 498
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    new-instance v1, Lcom/bugsnag/android/Bugsnag$3;

    invoke-direct {v1, p3, p4}, Lcom/bugsnag/android/Bugsnag$3;-><init>(Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Callback;)V

    return-void
.end method

.method public static notify(Ljava/lang/Throwable;)V
    .locals 1

    .line 395
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Callback;)V
    .locals 1

    .line 407
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Callback;)V

    return-void
.end method

.method public static notify(Ljava/lang/Throwable;Lcom/bugsnag/android/MetaData;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 448
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    new-instance v1, Lcom/bugsnag/android/Bugsnag$1;

    invoke-direct {v1, p1}, Lcom/bugsnag/android/Bugsnag$1;-><init>(Lcom/bugsnag/android/MetaData;)V

    invoke-virtual {v0, p0, v1}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Callback;)V

    return-void
.end method

.method public static notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;)V
    .locals 1

    .line 435
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;)V

    return-void
.end method

.method public static notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 469
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    new-instance v1, Lcom/bugsnag/android/Bugsnag$2;

    invoke-direct {v1, p1, p2}, Lcom/bugsnag/android/Bugsnag$2;-><init>(Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V

    invoke-virtual {v0, p0, v1}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Callback;)V

    return-void
.end method

.method public static resumeSession()Z
    .locals 1

    .line 714
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->resumeSession()Z

    move-result v0

    return v0
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 1

    .line 98
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setAppVersion(Ljava/lang/String;)V

    return-void
.end method

.method public static setAutoCaptureSessions(Z)V
    .locals 1

    .line 245
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setAutoCaptureSessions(Z)V

    return-void
.end method

.method public static setBuildUUID(Ljava/lang/String;)V
    .locals 1

    .line 146
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setBuildUUID(Ljava/lang/String;)V

    return-void
.end method

.method public static setContext(Ljava/lang/String;)V
    .locals 1

    .line 118
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setContext(Ljava/lang/String;)V

    return-void
.end method

.method public static setEndpoint(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 133
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setEndpoint(Ljava/lang/String;)V

    return-void
.end method

.method public static setErrorReportApiClient(Lcom/bugsnag/android/ErrorReportApiClient;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setErrorReportApiClient(Lcom/bugsnag/android/ErrorReportApiClient;)V

    return-void
.end method

.method public static varargs setFilters([Ljava/lang/String;)V
    .locals 1

    .line 163
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setFilters([Ljava/lang/String;)V

    return-void
.end method

.method public static varargs setIgnoreClasses([Ljava/lang/String;)V
    .locals 1

    .line 176
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setIgnoreClasses([Ljava/lang/String;)V

    return-void
.end method

.method public static setLoggingEnabled(Z)V
    .locals 1

    .line 668
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setLoggingEnabled(Z)V

    return-void
.end method

.method public static setMaxBreadcrumbs(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 633
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    iget-object v0, v0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Configuration;->setMaxBreadcrumbs(I)V

    return-void
.end method

.method public static setMetaData(Lcom/bugsnag/android/MetaData;)V
    .locals 1

    .line 596
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    return-void
.end method

.method public static varargs setNotifyReleaseStages([Ljava/lang/String;)V
    .locals 1

    .line 191
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setNotifyReleaseStages([Ljava/lang/String;)V

    return-void
.end method

.method public static varargs setProjectPackages([Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setProjectPackages([Ljava/lang/String;)V

    return-void
.end method

.method public static setReleaseStage(Ljava/lang/String;)V
    .locals 1

    .line 223
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setReleaseStage(Ljava/lang/String;)V

    return-void
.end method

.method public static setSendThreads(Z)V
    .locals 1

    .line 233
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setSendThreads(Z)V

    return-void
.end method

.method public static setSessionTrackingApiClient(Lcom/bugsnag/android/SessionTrackingApiClient;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 336
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setSessionTrackingApiClient(Lcom/bugsnag/android/SessionTrackingApiClient;)V

    return-void
.end method

.method public static setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 263
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/bugsnag/android/Client;->setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUserEmail(Ljava/lang/String;)V
    .locals 1

    .line 291
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setUserEmail(Ljava/lang/String;)V

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1

    .line 281
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public static setUserName(Ljava/lang/String;)V
    .locals 1

    .line 301
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setUserName(Ljava/lang/String;)V

    return-void
.end method

.method public static startSession()V
    .locals 1

    .line 688
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->startSession()V

    return-void
.end method

.method public static stopSession()V
    .locals 1

    .line 733
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->stopSession()V

    return-void
.end method
