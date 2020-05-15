.class Lcom/bugsnag/android/AppData;
.super Ljava/lang/Object;
.source "AppData.java"


# static fields
.field static final RELEASE_STAGE_DEVELOPMENT:Ljava/lang/String; = "development"

.field static final RELEASE_STAGE_PRODUCTION:Ljava/lang/String; = "production"

.field private static final startTimeMs:J


# instance fields
.field private final appContext:Landroid/content/Context;

.field final appName:Ljava/lang/String;

.field private applicationInfo:Landroid/content/pm/ApplicationInfo;

.field private binaryArch:Ljava/lang/String;

.field private final config:Lcom/bugsnag/android/Configuration;

.field private packageInfo:Landroid/content/pm/PackageInfo;

.field private packageManager:Landroid/content/pm/PackageManager;

.field private final packageName:Ljava/lang/String;

.field private final sessionTracker:Lcom/bugsnag/android/SessionTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/bugsnag/android/AppData;->startTimeMs:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/bugsnag/android/Configuration;Lcom/bugsnag/android/SessionTracker;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/bugsnag/android/AppData;->binaryArch:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/bugsnag/android/AppData;->appContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/bugsnag/android/AppData;->packageManager:Landroid/content/pm/PackageManager;

    .line 47
    iput-object p3, p0, Lcom/bugsnag/android/AppData;->config:Lcom/bugsnag/android/Configuration;

    .line 48
    iput-object p4, p0, Lcom/bugsnag/android/AppData;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/AppData;->packageName:Ljava/lang/String;

    .line 54
    :try_start_0
    iput-object p2, p0, Lcom/bugsnag/android/AppData;->packageManager:Landroid/content/pm/PackageManager;

    const/4 p3, 0x0

    .line 55
    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/AppData;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 56
    iget-object p1, p0, Lcom/bugsnag/android/AppData;->packageManager:Landroid/content/pm/PackageManager;

    iget-object p2, p0, Lcom/bugsnag/android/AppData;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/AppData;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not retrieve package/application information for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/bugsnag/android/AppData;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    .line 61
    :goto_0
    invoke-direct {p0}, Lcom/bugsnag/android/AppData;->getAppName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/AppData;->appName:Ljava/lang/String;

    return-void
.end method

.method private calculateNotifierType()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/bugsnag/android/AppData;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getNotifierType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "android"

    return-object v0
.end method

.method private calculateVersionCode()Ljava/lang/Integer;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/bugsnag/android/AppData;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getVersionCode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/AppData;->packageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    .line 148
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private calculateVersionName()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/bugsnag/android/AppData;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/AppData;->packageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAppName()Ljava/lang/String;
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/bugsnag/android/AppData;->packageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bugsnag/android/AppData;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static getDurationMs()J
    .locals 4

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/bugsnag/android/AppData;->startTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getMemoryUsage()J
    .locals 5

    .line 210
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method private isLowMemory()Ljava/lang/Boolean;
    .locals 2

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/bugsnag/android/AppData;->appContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 221
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    .line 224
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 225
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 226
    iget-boolean v0, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Could not check lowMemory status"

    .line 229
    invoke-static {v0}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method calculateDurationInForeground()Ljava/lang/Long;
    .locals 3

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 117
    iget-object v2, p0, Lcom/bugsnag/android/AppData;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    invoke-virtual {v2, v0, v1}, Lcom/bugsnag/android/SessionTracker;->getDurationInForegroundMs(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method getActiveScreenClass()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/bugsnag/android/AppData;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    invoke-virtual {v0}, Lcom/bugsnag/android/SessionTracker;->getContextActivity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAppData()Ljava/util/Map;
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

    .line 75
    invoke-virtual {p0}, Lcom/bugsnag/android/AppData;->getAppDataSummary()Ljava/util/Map;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/bugsnag/android/AppData;->packageName:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lcom/bugsnag/android/AppData;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v1}, Lcom/bugsnag/android/Configuration;->getBuildUUID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "buildUUID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {}, Lcom/bugsnag/android/AppData;->getDurationMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, Lcom/bugsnag/android/AppData;->calculateDurationInForeground()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "durationInForeground"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v1, p0, Lcom/bugsnag/android/AppData;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    invoke-virtual {v1}, Lcom/bugsnag/android/SessionTracker;->isInForeground()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "inForeground"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v1, p0, Lcom/bugsnag/android/AppData;->packageName:Ljava/lang/String;

    const-string v2, "packageName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/bugsnag/android/AppData;->binaryArch:Ljava/lang/String;

    const-string v2, "binaryArch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method getAppDataMetaData()Ljava/util/Map;
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

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/bugsnag/android/AppData;->appName:Ljava/lang/String;

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lcom/bugsnag/android/AppData;->packageName:Ljava/lang/String;

    const-string v2, "packageName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-direct {p0}, Lcom/bugsnag/android/AppData;->calculateVersionName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "versionName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p0}, Lcom/bugsnag/android/AppData;->getActiveScreenClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activeScreen"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-direct {p0}, Lcom/bugsnag/android/AppData;->getMemoryUsage()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "memoryUsage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-direct {p0}, Lcom/bugsnag/android/AppData;->isLowMemory()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "lowMemory"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method getAppDataSummary()Ljava/util/Map;
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

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    invoke-direct {p0}, Lcom/bugsnag/android/AppData;->calculateNotifierType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Lcom/bugsnag/android/AppData;->guessReleaseStage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "releaseStage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-direct {p0}, Lcom/bugsnag/android/AppData;->calculateVersionName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-direct {p0}, Lcom/bugsnag/android/AppData;->calculateVersionCode()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "versionCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lcom/bugsnag/android/AppData;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v1}, Lcom/bugsnag/android/Configuration;->getCodeBundleId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "codeBundleId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method guessReleaseStage()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/bugsnag/android/AppData;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getReleaseStage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/AppData;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    .line 185
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "development"

    return-object v0

    :cond_1
    const-string v0, "production"

    return-object v0
.end method

.method setBinaryArch(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/bugsnag/android/AppData;->binaryArch:Ljava/lang/String;

    return-void
.end method
