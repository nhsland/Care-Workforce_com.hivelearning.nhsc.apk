.class public Lcom/bugsnag/android/Configuration;
.super Ljava/util/Observable;
.source "Configuration.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field static final DEFAULT_EXCEPTION_TYPE:Ljava/lang/String; = "android"

.field private static final DEFAULT_MAX_SIZE:I = 0x20

.field static final HEADER_API_KEY:Ljava/lang/String; = "Bugsnag-Api-Key"

.field private static final HEADER_API_PAYLOAD_VERSION:Ljava/lang/String; = "Bugsnag-Payload-Version"

.field private static final HEADER_BUGSNAG_SENT_AT:Ljava/lang/String; = "Bugsnag-Sent-At"


# instance fields
.field private anrThresholdMs:J

.field private final apiKey:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private autoCaptureSessions:Z

.field private automaticallyCollectBreadcrumbs:Z

.field private final beforeNotifyTasks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/bugsnag/android/BeforeNotify;",
            ">;"
        }
    .end annotation
.end field

.field private final beforeRecordBreadcrumbTasks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/bugsnag/android/BeforeRecordBreadcrumb;",
            ">;"
        }
    .end annotation
.end field

.field private final beforeSendTasks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/bugsnag/android/BeforeSend;",
            ">;"
        }
    .end annotation
.end field

.field private buildUuid:Ljava/lang/String;

.field private callPreviousSigquitHandler:Z

.field private codeBundleId:Ljava/lang/String;

.field private context:Ljava/lang/String;

.field private delivery:Lcom/bugsnag/android/Delivery;

.field private detectAnrs:Z

.field private detectNdkCrashes:Z

.field private enableExceptionHandler:Z

.field private volatile endpoint:Ljava/lang/String;

.field private ignoreClasses:[Ljava/lang/String;

.field private launchCrashThresholdMs:J

.field private maxBreadcrumbs:I

.field private metaData:Lcom/bugsnag/android/MetaData;

.field private notifierType:Ljava/lang/String;

.field private notifyReleaseStages:[Ljava/lang/String;

.field private persistUserBetweenSessions:Z

.field private projectPackages:[Ljava/lang/String;

.field private releaseStage:Ljava/lang/String;

.field private sendThreads:Z

.field private final sessionCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/bugsnag/android/BeforeSendSession;",
            ">;"
        }
    .end annotation
.end field

.field private volatile sessionEndpoint:Ljava/lang/String;

.field private versionCode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 76
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const-string v0, "https://notify.bugsnag.com"

    .line 37
    iput-object v0, p0, Lcom/bugsnag/android/Configuration;->endpoint:Ljava/lang/String;

    const-string v0, "https://sessions.bugsnag.com"

    .line 38
    iput-object v0, p0, Lcom/bugsnag/android/Configuration;->sessionEndpoint:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/bugsnag/android/Configuration;->notifyReleaseStages:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcom/bugsnag/android/Configuration;->sendThreads:Z

    .line 46
    iput-boolean v1, p0, Lcom/bugsnag/android/Configuration;->enableExceptionHandler:Z

    const/4 v2, 0x0

    .line 47
    iput-boolean v2, p0, Lcom/bugsnag/android/Configuration;->persistUserBetweenSessions:Z

    const-wide/16 v3, 0x1388

    .line 48
    iput-wide v3, p0, Lcom/bugsnag/android/Configuration;->launchCrashThresholdMs:J

    .line 49
    iput-boolean v1, p0, Lcom/bugsnag/android/Configuration;->autoCaptureSessions:Z

    .line 50
    iput-boolean v1, p0, Lcom/bugsnag/android/Configuration;->automaticallyCollectBreadcrumbs:Z

    .line 52
    iput-boolean v1, p0, Lcom/bugsnag/android/Configuration;->callPreviousSigquitHandler:Z

    .line 53
    iput-boolean v2, p0, Lcom/bugsnag/android/Configuration;->detectAnrs:Z

    .line 55
    iput-wide v3, p0, Lcom/bugsnag/android/Configuration;->anrThresholdMs:J

    .line 59
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/bugsnag/android/Configuration;->beforeNotifyTasks:Ljava/util/Collection;

    .line 60
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/bugsnag/android/Configuration;->beforeSendTasks:Ljava/util/Collection;

    .line 61
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/bugsnag/android/Configuration;->beforeRecordBreadcrumbTasks:Ljava/util/Collection;

    .line 63
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/bugsnag/android/Configuration;->sessionCallbacks:Ljava/util/Collection;

    const/16 v1, 0x20

    .line 69
    iput v1, p0, Lcom/bugsnag/android/Configuration;->maxBreadcrumbs:I

    .line 77
    iput-object p1, p0, Lcom/bugsnag/android/Configuration;->apiKey:Ljava/lang/String;

    .line 78
    new-instance p1, Lcom/bugsnag/android/MetaData;

    invoke-direct {p1}, Lcom/bugsnag/android/MetaData;-><init>()V

    iput-object p1, p0, Lcom/bugsnag/android/Configuration;->metaData:Lcom/bugsnag/android/MetaData;

    .line 79
    invoke-virtual {p1, p0}, Lcom/bugsnag/android/MetaData;->addObserver(Ljava/util/Observer;)V

    :try_start_0
    const-string p1, "com.bugsnag.android.BuildConfig"

    .line 83
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "DETECT_NDK_CRASHES"

    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bugsnag/android/Configuration;->detectNdkCrashes:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    iput-boolean v2, p0, Lcom/bugsnag/android/Configuration;->detectNdkCrashes:Z

    :goto_0
    return-void
.end method


# virtual methods
.method addBeforeSendSession(Lcom/bugsnag/android/BeforeSendSession;)V
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->sessionCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected beforeNotify(Lcom/bugsnag/android/BeforeNotify;)V
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->beforeNotifyTasks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->beforeNotifyTasks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected beforeRecordBreadcrumb(Lcom/bugsnag/android/BeforeRecordBreadcrumb;)V
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->beforeRecordBreadcrumbTasks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->beforeRecordBreadcrumbTasks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public beforeSend(Lcom/bugsnag/android/BeforeSend;)V
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->beforeSendTasks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->beforeSendTasks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getAnrThresholdMs()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 745
    iget-wide v0, p0, Lcom/bugsnag/android/Configuration;->anrThresholdMs:J

    return-wide v0
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoCaptureSessions()Z
    .locals 1

    .line 471
    iget-boolean v0, p0, Lcom/bugsnag/android/Configuration;->autoCaptureSessions:Z

    return v0
.end method

.method protected getBeforeNotifyTasks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bugsnag/android/BeforeNotify;",
            ">;"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->beforeNotifyTasks:Ljava/util/Collection;

    return-object v0
.end method

.method protected getBeforeRecordBreadcrumbTasks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bugsnag/android/BeforeRecordBreadcrumb;",
            ">;"
        }
    .end annotation

    .line 894
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->beforeRecordBreadcrumbTasks:Ljava/util/Collection;

    return-object v0
.end method

.method protected getBeforeSendTasks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bugsnag/android/BeforeSend;",
            ">;"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->beforeSendTasks:Ljava/util/Collection;

    return-object v0
.end method

.method public getBuildUUID()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->buildUuid:Ljava/lang/String;

    return-object v0
.end method

.method getCallPreviousSigquitHandler()Z
    .locals 1

    .line 710
    iget-boolean v0, p0, Lcom/bugsnag/android/Configuration;->callPreviousSigquitHandler:Z

    return v0
.end method

.method public getCodeBundleId()Ljava/lang/String;
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->codeBundleId:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->context:Ljava/lang/String;

    return-object v0
.end method

.method public getDelivery()Lcom/bugsnag/android/Delivery;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->delivery:Lcom/bugsnag/android/Delivery;

    return-object v0
.end method

.method public getDetectAnrs()Z
    .locals 1

    .line 690
    iget-boolean v0, p0, Lcom/bugsnag/android/Configuration;->detectAnrs:Z

    return v0
.end method

.method public getDetectNdkCrashes()Z
    .locals 1

    .line 722
    iget-boolean v0, p0, Lcom/bugsnag/android/Configuration;->detectNdkCrashes:Z

    return v0
.end method

.method public getEnableExceptionHandler()Z
    .locals 1

    .line 442
    iget-boolean v0, p0, Lcom/bugsnag/android/Configuration;->enableExceptionHandler:Z

    return v0
.end method

.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorApiHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 776
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Bugsnag-Payload-Version"

    const-string v2, "4.0"

    .line 777
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    iget-object v1, p0, Lcom/bugsnag/android/Configuration;->apiKey:Ljava/lang/String;

    const-string v2, "Bugsnag-Api-Key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/bugsnag/android/DateUtils;->toIso8601(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bugsnag-Sent-At"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getFilters()[Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->metaData:Lcom/bugsnag/android/MetaData;

    invoke-virtual {v0}, Lcom/bugsnag/android/MetaData;->getFilters()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoreClasses()[Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->ignoreClasses:[Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchCrashThresholdMs()J
    .locals 2

    .line 561
    iget-wide v0, p0, Lcom/bugsnag/android/Configuration;->launchCrashThresholdMs:J

    return-wide v0
.end method

.method public getMaxBreadcrumbs()I
    .locals 1

    .line 652
    iget v0, p0, Lcom/bugsnag/android/Configuration;->maxBreadcrumbs:I

    return v0
.end method

.method public getMetaData()Lcom/bugsnag/android/MetaData;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->metaData:Lcom/bugsnag/android/MetaData;

    return-object v0
.end method

.method public getNotifierType()Ljava/lang/String;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->notifierType:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyReleaseStages()[Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->notifyReleaseStages:[Ljava/lang/String;

    return-object v0
.end method

.method public getPersistUserBetweenSessions()Z
    .locals 1

    .line 541
    iget-boolean v0, p0, Lcom/bugsnag/android/Configuration;->persistUserBetweenSessions:Z

    return v0
.end method

.method public getProjectPackages()[Ljava/lang/String;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->projectPackages:[Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseStage()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->releaseStage:Ljava/lang/String;

    return-object v0
.end method

.method public getSendThreads()Z
    .locals 1

    .line 423
    iget-boolean v0, p0, Lcom/bugsnag/android/Configuration;->sendThreads:Z

    return v0
.end method

.method public getSessionApiHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 790
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Bugsnag-Payload-Version"

    const-string v2, "1.0"

    .line 791
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    iget-object v1, p0, Lcom/bugsnag/android/Configuration;->apiKey:Ljava/lang/String;

    const-string v2, "Bugsnag-Api-Key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/bugsnag/android/DateUtils;->toIso8601(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bugsnag-Sent-At"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method getSessionCallbacks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bugsnag/android/BeforeSendSession;",
            ">;"
        }
    .end annotation

    .line 902
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->sessionCallbacks:Ljava/util/Collection;

    return-object v0
.end method

.method public getSessionEndpoint()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->sessionEndpoint:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()Ljava/lang/Integer;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->versionCode:Ljava/lang/Integer;

    return-object v0
.end method

.method protected inProject(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 884
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->projectPackages:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/bugsnag/android/Stacktrace;->inProject(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isAutomaticallyCollectingBreadcrumbs()Z
    .locals 1

    .line 588
    iget-boolean v0, p0, Lcom/bugsnag/android/Configuration;->automaticallyCollectBreadcrumbs:Z

    return v0
.end method

.method public setAnrThresholdMs(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 2

    .line 128
    iput-object p1, p0, Lcom/bugsnag/android/Configuration;->appVersion:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/bugsnag/android/Configuration;->setChanged()V

    .line 130
    new-instance v0, Lcom/bugsnag/android/NativeInterface$Message;

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_APP_VERSION:Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/NativeInterface$Message;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/bugsnag/android/Configuration;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public setAutoCaptureSessions(Z)V
    .locals 0

    .line 483
    iput-boolean p1, p0, Lcom/bugsnag/android/Configuration;->autoCaptureSessions:Z

    return-void
.end method

.method public setAutomaticallyCollectBreadcrumbs(Z)V
    .locals 0

    .line 600
    iput-boolean p1, p0, Lcom/bugsnag/android/Configuration;->automaticallyCollectBreadcrumbs:Z

    return-void
.end method

.method public setBuildUUID(Ljava/lang/String;)V
    .locals 2

    .line 282
    iput-object p1, p0, Lcom/bugsnag/android/Configuration;->buildUuid:Ljava/lang/String;

    .line 283
    invoke-virtual {p0}, Lcom/bugsnag/android/Configuration;->setChanged()V

    .line 284
    new-instance v0, Lcom/bugsnag/android/NativeInterface$Message;

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_BUILD_UUID:Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/NativeInterface$Message;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/bugsnag/android/Configuration;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method setCallPreviousSigquitHandler(Z)V
    .locals 0

    .line 714
    iput-boolean p1, p0, Lcom/bugsnag/android/Configuration;->callPreviousSigquitHandler:Z

    return-void
.end method

.method public setCodeBundleId(Ljava/lang/String;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/bugsnag/android/Configuration;->codeBundleId:Ljava/lang/String;

    return-void
.end method

.method public setContext(Ljava/lang/String;)V
    .locals 2

    .line 172
    iput-object p1, p0, Lcom/bugsnag/android/Configuration;->context:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lcom/bugsnag/android/Configuration;->setChanged()V

    .line 174
    new-instance v0, Lcom/bugsnag/android/NativeInterface$Message;

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_CONTEXT:Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/NativeInterface$Message;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/bugsnag/android/Configuration;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public setDelivery(Lcom/bugsnag/android/Delivery;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 682
    iput-object p1, p0, Lcom/bugsnag/android/Configuration;->delivery:Lcom/bugsnag/android/Delivery;

    return-void

    .line 680
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Delivery cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDetectAnrs(Z)V
    .locals 0

    .line 706
    iput-boolean p1, p0, Lcom/bugsnag/android/Configuration;->detectAnrs:Z

    return-void
.end method

.method public setDetectNdkCrashes(Z)V
    .locals 0

    .line 734
    iput-boolean p1, p0, Lcom/bugsnag/android/Configuration;->detectNdkCrashes:Z

    return-void
.end method

.method public setEnableExceptionHandler(Z)V
    .locals 0

    .line 451
    iput-boolean p1, p0, Lcom/bugsnag/android/Configuration;->enableExceptionHandler:Z

    return-void
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/bugsnag/android/Configuration;->endpoint:Ljava/lang/String;

    return-void
.end method

.method public setEndpoints(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 219
    invoke-static {p1}, Lcom/bugsnag/android/Intrinsics;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    iput-object p1, p0, Lcom/bugsnag/android/Configuration;->endpoint:Ljava/lang/String;

    .line 225
    invoke-static {p2}, Lcom/bugsnag/android/Intrinsics;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "The session tracking endpoint has not been set. Session tracking is disabled"

    .line 228
    invoke-static {p1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 230
    iput-object p1, p0, Lcom/bugsnag/android/Configuration;->sessionEndpoint:Ljava/lang/String;

    const/4 p1, 0x0

    .line 231
    iput-boolean p1, p0, Lcom/bugsnag/android/Configuration;->autoCaptureSessions:Z

    goto :goto_0

    .line 233
    :cond_0
    iput-object p2, p0, Lcom/bugsnag/android/Configuration;->sessionEndpoint:Ljava/lang/String;

    :goto_0
    return-void

    .line 220
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Notify endpoint cannot be empty or null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFilters([Ljava/lang/String;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->metaData:Lcom/bugsnag/android/MetaData;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/MetaData;->setFilters([Ljava/lang/String;)V

    return-void
.end method

.method public setIgnoreClasses([Ljava/lang/String;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/bugsnag/android/Configuration;->ignoreClasses:[Ljava/lang/String;

    return-void
.end method

.method public setLaunchCrashThresholdMs(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 577
    iput-wide v0, p0, Lcom/bugsnag/android/Configuration;->launchCrashThresholdMs:J

    goto :goto_0

    .line 579
    :cond_0
    iput-wide p1, p0, Lcom/bugsnag/android/Configuration;->launchCrashThresholdMs:J

    :goto_0
    return-void
.end method

.method public setMaxBreadcrumbs(I)V
    .locals 0

    if-gez p1, :cond_0

    const-string p1, "Ignoring invalid breadcrumb capacity. Must be >= 0."

    .line 638
    invoke-static {p1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 641
    :cond_0
    iput p1, p0, Lcom/bugsnag/android/Configuration;->maxBreadcrumbs:I

    return-void
.end method

.method public setMetaData(Lcom/bugsnag/android/MetaData;)V
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->metaData:Lcom/bugsnag/android/MetaData;

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/MetaData;->deleteObserver(Ljava/util/Observer;)V

    if-nez p1, :cond_0

    .line 505
    new-instance p1, Lcom/bugsnag/android/MetaData;

    invoke-direct {p1}, Lcom/bugsnag/android/MetaData;-><init>()V

    iput-object p1, p0, Lcom/bugsnag/android/Configuration;->metaData:Lcom/bugsnag/android/MetaData;

    goto :goto_0

    .line 507
    :cond_0
    iput-object p1, p0, Lcom/bugsnag/android/Configuration;->metaData:Lcom/bugsnag/android/MetaData;

    .line 509
    :goto_0
    invoke-virtual {p0}, Lcom/bugsnag/android/Configuration;->setChanged()V

    .line 510
    new-instance p1, Lcom/bugsnag/android/NativeInterface$Message;

    sget-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_METADATA:Lcom/bugsnag/android/NativeInterface$MessageType;

    iget-object v1, p0, Lcom/bugsnag/android/Configuration;->metaData:Lcom/bugsnag/android/MetaData;

    iget-object v1, v1, Lcom/bugsnag/android/MetaData;->store:Ljava/util/Map;

    invoke-direct {p1, v0, v1}, Lcom/bugsnag/android/NativeInterface$Message;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/bugsnag/android/Configuration;->notifyObservers(Ljava/lang/Object;)V

    .line 512
    iget-object p1, p0, Lcom/bugsnag/android/Configuration;->metaData:Lcom/bugsnag/android/MetaData;

    invoke-virtual {p1, p0}, Lcom/bugsnag/android/MetaData;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public setNotifierType(Ljava/lang/String;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/bugsnag/android/Configuration;->notifierType:Ljava/lang/String;

    return-void
.end method

.method public setNotifyReleaseStages([Ljava/lang/String;)V
    .locals 1

    .line 360
    iput-object p1, p0, Lcom/bugsnag/android/Configuration;->notifyReleaseStages:[Ljava/lang/String;

    .line 361
    invoke-virtual {p0}, Lcom/bugsnag/android/Configuration;->setChanged()V

    .line 362
    new-instance p1, Lcom/bugsnag/android/NativeInterface$Message;

    sget-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_NOTIFY_RELEASE_STAGES:Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-direct {p1, v0, p0}, Lcom/bugsnag/android/NativeInterface$Message;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/bugsnag/android/Configuration;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public setPersistUserBetweenSessions(Z)V
    .locals 0

    .line 552
    iput-boolean p1, p0, Lcom/bugsnag/android/Configuration;->persistUserBetweenSessions:Z

    return-void
.end method

.method public setProjectPackages([Ljava/lang/String;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/bugsnag/android/Configuration;->projectPackages:[Ljava/lang/String;

    return-void
.end method

.method public setReleaseStage(Ljava/lang/String;)V
    .locals 1

    .line 411
    iput-object p1, p0, Lcom/bugsnag/android/Configuration;->releaseStage:Ljava/lang/String;

    .line 412
    invoke-virtual {p0}, Lcom/bugsnag/android/Configuration;->setChanged()V

    .line 413
    new-instance p1, Lcom/bugsnag/android/NativeInterface$Message;

    sget-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_RELEASE_STAGE:Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-direct {p1, v0, p0}, Lcom/bugsnag/android/NativeInterface$Message;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/bugsnag/android/Configuration;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public setSendThreads(Z)V
    .locals 0

    .line 433
    iput-boolean p1, p0, Lcom/bugsnag/android/Configuration;->sendThreads:Z

    return-void
.end method

.method public setSessionEndpoint(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/bugsnag/android/Configuration;->sessionEndpoint:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(Ljava/lang/Integer;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/bugsnag/android/Configuration;->versionCode:Ljava/lang/Integer;

    return-void
.end method

.method public shouldAutoCaptureSessions()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 462
    invoke-virtual {p0}, Lcom/bugsnag/android/Configuration;->getAutoCaptureSessions()Z

    move-result v0

    return v0
.end method

.method protected shouldIgnoreClass(Ljava/lang/String;)Z
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->ignoreClasses:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 850
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 851
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public shouldNotifyForReleaseStage(Ljava/lang/String;)Z
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/bugsnag/android/Configuration;->notifyReleaseStages:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 835
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 836
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 95
    instance-of p1, p2, Lcom/bugsnag/android/NativeInterface$Message;

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/bugsnag/android/Configuration;->setChanged()V

    .line 97
    invoke-virtual {p0, p2}, Lcom/bugsnag/android/Configuration;->notifyObservers(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
