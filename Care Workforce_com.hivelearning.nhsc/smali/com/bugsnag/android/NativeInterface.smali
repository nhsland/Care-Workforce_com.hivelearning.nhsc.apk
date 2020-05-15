.class public Lcom/bugsnag/android/NativeInterface;
.super Ljava/lang/Object;
.source "NativeInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bugsnag/android/NativeInterface$Message;,
        Lcom/bugsnag/android/NativeInterface$MessageType;
    }
.end annotation


# static fields
.field private static UTF8Charset:Ljava/nio/charset/Charset;

.field private static client:Lcom/bugsnag/android/Client;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 142
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/bugsnag/android/NativeInterface;->UTF8Charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 349
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/bugsnag/android/Client;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static clearTab(Ljava/lang/String;)V
    .locals 1

    .line 340
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->clearTab(Ljava/lang/String;)V

    return-void
.end method

.method public static configureClientObservers(Lcom/bugsnag/android/Client;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    invoke-static {p0}, Lcom/bugsnag/android/NativeInterface;->setClient(Lcom/bugsnag/android/Client;)V

    return-void
.end method

.method public static deliverReport([B[B)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 512
    :cond_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/bugsnag/android/NativeInterface;->UTF8Charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 513
    :cond_1
    new-instance p1, Ljava/lang/String;

    sget-object v1, Lcom/bugsnag/android/NativeInterface;->UTF8Charset:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p0, p1

    .line 516
    :goto_0
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object p1

    if-eqz p0, :cond_2

    .line 518
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 519
    invoke-virtual {p1}, Lcom/bugsnag/android/Client;->getConfig()Lcom/bugsnag/android/Configuration;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bugsnag/android/Configuration;->shouldNotifyForReleaseStage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 520
    :cond_2
    invoke-virtual {p1}, Lcom/bugsnag/android/Client;->getErrorStore()Lcom/bugsnag/android/ErrorStore;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bugsnag/android/ErrorStore;->enqueueContentForDelivery(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p1}, Lcom/bugsnag/android/Client;->getErrorStore()Lcom/bugsnag/android/ErrorStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bugsnag/android/ErrorStore;->flushAsync()V

    :cond_3
    return-void
.end method

.method public static disableAnrReporting()V
    .locals 1

    .line 431
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->disableAnrReporting()V

    return-void
.end method

.method public static disableNdkCrashReporting()V
    .locals 1

    .line 445
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->disableNdkCrashReporting()V

    return-void
.end method

.method public static disableUncaughtJavaExceptionReporting()V
    .locals 1

    .line 459
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->disableExceptionHandler()V

    return-void
.end method

.method public static enableAnrReporting()V
    .locals 1

    .line 424
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->enableAnrReporting()V

    return-void
.end method

.method public static enableNdkCrashReporting()V
    .locals 1

    .line 438
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->enableNdkCrashReporting()V

    return-void
.end method

.method public static enableUncaughtJavaExceptionReporting()V
    .locals 1

    .line 452
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->enableExceptionHandler()V

    return-void
.end method

.method public static getAppData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 224
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bugsnag/android/Client;->getAppData()Lcom/bugsnag/android/AppData;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lcom/bugsnag/android/AppData;->getAppData()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 226
    invoke-virtual {v1}, Lcom/bugsnag/android/AppData;->getAppDataMetaData()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    .line 467
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->getConfig()Lcom/bugsnag/android/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBreadcrumbs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bugsnag/android/Breadcrumb;",
            ">;"
        }
    .end annotation

    .line 264
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    iget-object v0, v0, Lcom/bugsnag/android/Client;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    iget-object v0, v0, Lcom/bugsnag/android/Breadcrumbs;->store:Ljava/util/Queue;

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private static getClient()Lcom/bugsnag/android/Client;
    .locals 1

    .line 169
    sget-object v0, Lcom/bugsnag/android/NativeInterface;->client:Lcom/bugsnag/android/Client;

    if-eqz v0, :cond_0

    return-object v0

    .line 172
    :cond_0
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Ljava/lang/String;
    .locals 1

    .line 190
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->getContext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCpuAbi()[Ljava/lang/String;
    .locals 1

    .line 248
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    iget-object v0, v0, Lcom/bugsnag/android/Client;->deviceData:Lcom/bugsnag/android/DeviceData;

    iget-object v0, v0, Lcom/bugsnag/android/DeviceData;->cpuAbi:[Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 237
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bugsnag/android/Client;->getDeviceData()Lcom/bugsnag/android/DeviceData;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Lcom/bugsnag/android/DeviceData;->getDeviceMetaData()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 239
    invoke-virtual {v1}, Lcom/bugsnag/android/DeviceData;->getDeviceData()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public static getEndpoint()Ljava/lang/String;
    .locals 1

    .line 380
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->getConfig()Lcom/bugsnag/android/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoggingEnabled()Z
    .locals 1

    .line 194
    invoke-static {}, Lcom/bugsnag/android/Logger;->getEnabled()Z

    move-result v0

    return v0
.end method

.method public static getMetaData()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bugsnag/android/Client;->getMetaData()Lcom/bugsnag/android/MetaData;

    move-result-object v1

    iget-object v1, v1, Lcom/bugsnag/android/MetaData;->store:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static getNativeReportPath()Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v1

    iget-object v1, v1, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bugsnag-native/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNotifyReleaseStages()[Ljava/lang/String;
    .locals 1

    .line 475
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->getConfig()Lcom/bugsnag/android/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getNotifyReleaseStages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReleaseStage()Ljava/lang/String;
    .locals 1

    .line 364
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->getConfig()Lcom/bugsnag/android/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getReleaseStage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSessionEndpoint()Ljava/lang/String;
    .locals 1

    .line 372
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->getConfig()Lcom/bugsnag/android/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getSessionEndpoint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserData()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bugsnag/android/Client;->getUser()Lcom/bugsnag/android/User;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lcom/bugsnag/android/User;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {v1}, Lcom/bugsnag/android/User;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {v1}, Lcom/bugsnag/android/User;->getEmail()Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static leaveBreadcrumb(Ljava/lang/String;Lcom/bugsnag/android/BreadcrumbType;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 310
    :cond_0
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/bugsnag/android/Client;->leaveBreadcrumb(Ljava/lang/String;Lcom/bugsnag/android/BreadcrumbType;Ljava/util/Map;)V

    return-void
.end method

.method public static leaveBreadcrumb(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 331
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_0

    .line 332
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 333
    :cond_0
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-static {p1}, Lcom/bugsnag/android/BreadcrumbType;->valueOf(Ljava/lang/String;)Lcom/bugsnag/android/BreadcrumbType;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2}, Lcom/bugsnag/android/Client;->leaveBreadcrumb(Ljava/lang/String;Lcom/bugsnag/android/BreadcrumbType;Ljava/util/Map;)V

    return-void
.end method

.method public static leaveBreadcrumb([BLcom/bugsnag/android/BreadcrumbType;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/bugsnag/android/NativeInterface;->UTF8Charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 322
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/bugsnag/android/Client;->leaveBreadcrumb(Ljava/lang/String;Lcom/bugsnag/android/BreadcrumbType;Ljava/util/Map;)V

    return-void
.end method

.method public static notify(Ljava/lang/String;Ljava/lang/String;Lcom/bugsnag/android/Severity;[Ljava/lang/StackTraceElement;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 560
    :cond_0
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    new-instance v1, Lcom/bugsnag/android/NativeInterface$1;

    invoke-direct {v1, p2}, Lcom/bugsnag/android/NativeInterface$1;-><init>(Lcom/bugsnag/android/Severity;)V

    invoke-virtual {v0, p0, p1, p3, v1}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static notify([B[BLcom/bugsnag/android/Severity;[Ljava/lang/StackTraceElement;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 540
    :cond_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/bugsnag/android/NativeInterface;->UTF8Charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 541
    new-instance p0, Ljava/lang/String;

    sget-object v1, Lcom/bugsnag/android/NativeInterface;->UTF8Charset:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 542
    invoke-static {v0, p0, p2, p3}, Lcom/bugsnag/android/NativeInterface;->notify(Ljava/lang/String;Ljava/lang/String;Lcom/bugsnag/android/Severity;[Ljava/lang/StackTraceElement;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static registerSession(JLjava/lang/String;II)V
    .locals 7

    .line 490
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->getUser()Lcom/bugsnag/android/User;

    move-result-object v4

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-lez v3, :cond_0

    .line 492
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    move-object v2, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    move-object v2, p0

    .line 493
    :goto_0
    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->getSessionTracker()Lcom/bugsnag/android/SessionTracker;

    move-result-object v1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/bugsnag/android/SessionTracker;->registerExistingSession(Ljava/util/Date;Ljava/lang/String;Lcom/bugsnag/android/User;II)Lcom/bugsnag/android/Session;

    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 1

    .line 410
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setAppVersion(Ljava/lang/String;)V

    return-void
.end method

.method public static setBinaryArch(Ljava/lang/String;)V
    .locals 1

    .line 417
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setBinaryArch(Ljava/lang/String;)V

    return-void
.end method

.method public static setClient(Lcom/bugsnag/android/Client;)V
    .locals 0

    .line 180
    sput-object p0, Lcom/bugsnag/android/NativeInterface;->client:Lcom/bugsnag/android/Client;

    return-void
.end method

.method public static setContext(Ljava/lang/String;)V
    .locals 1

    .line 403
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setContext(Ljava/lang/String;)V

    return-void
.end method

.method public static setEndpoint(Ljava/lang/String;)V
    .locals 1

    .line 396
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->getConfig()Lcom/bugsnag/android/Configuration;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Configuration;->setEndpoint(Ljava/lang/String;)V

    return-void
.end method

.method public static setNotifyReleaseStages([Ljava/lang/String;)V
    .locals 1

    .line 482
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->getConfig()Lcom/bugsnag/android/Configuration;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Configuration;->setNotifyReleaseStages([Ljava/lang/String;)V

    return-void
.end method

.method public static setReleaseStage(Ljava/lang/String;)V
    .locals 1

    .line 356
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setReleaseStage(Ljava/lang/String;)V

    return-void
.end method

.method public static setSessionEndpoint(Ljava/lang/String;)V
    .locals 1

    .line 388
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->getConfig()Lcom/bugsnag/android/Configuration;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Configuration;->setSessionEndpoint(Ljava/lang/String;)V

    return-void
.end method

.method public static setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 279
    invoke-static {}, Lcom/bugsnag/android/NativeInterface;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    .line 280
    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setUserId(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Client;->setUserEmail(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, p2}, Lcom/bugsnag/android/Client;->setUserName(Ljava/lang/String;)V

    return-void
.end method

.method public static setUser([B[B[B)V
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 296
    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/bugsnag/android/NativeInterface;->UTF8Charset:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_0
    if-nez p1, :cond_1

    move-object p0, v0

    goto :goto_1

    .line 297
    :cond_1
    new-instance p0, Ljava/lang/String;

    sget-object v2, Lcom/bugsnag/android/NativeInterface;->UTF8Charset:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :goto_1
    if-nez p2, :cond_2

    goto :goto_2

    .line 298
    :cond_2
    new-instance v0, Ljava/lang/String;

    sget-object p1, Lcom/bugsnag/android/NativeInterface;->UTF8Charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 299
    :goto_2
    invoke-static {v1, p0, v0}, Lcom/bugsnag/android/NativeInterface;->setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
