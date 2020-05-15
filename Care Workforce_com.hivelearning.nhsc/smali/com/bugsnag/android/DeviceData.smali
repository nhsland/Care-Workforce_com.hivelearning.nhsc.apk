.class Lcom/bugsnag/android/DeviceData;
.super Ljava/lang/Object;
.source "DeviceData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bugsnag/android/DeviceData$Abi2Wrapper;,
        Lcom/bugsnag/android/DeviceData$SupportedAbiWrapper;
    }
.end annotation


# static fields
.field private static final INSTALL_ID_KEY:Ljava/lang/String; = "install.iud"

.field private static final ROOT_INDICATORS:[Ljava/lang/String;


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final connectivity:Lcom/bugsnag/android/Connectivity;

.field final cpuAbi:[Ljava/lang/String;

.field private final displayMetrics:Landroid/util/DisplayMetrics;

.field final dpi:Ljava/lang/Integer;

.field private final emulator:Z

.field private final id:Ljava/lang/String;

.field final locale:Ljava/lang/String;

.field private final resources:Landroid/content/res/Resources;

.field private final rooted:Z

.field final screenDensity:Ljava/lang/Float;

.field final screenResolution:Ljava/lang/String;

.field private final sharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/xbin/su"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/system/bin/su"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/app/Superuser.apk"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/system/app/SuperSU.apk"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/system/app/Superuser"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/system/app/SuperSU"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/system/xbin/daemonsu"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/su/bin"

    aput-object v2, v0, v1

    .line 29
    sput-object v0, Lcom/bugsnag/android/DeviceData;->ROOT_INDICATORS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/bugsnag/android/Connectivity;Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/bugsnag/android/DeviceData;->connectivity:Lcom/bugsnag/android/Connectivity;

    .line 74
    iput-object p2, p0, Lcom/bugsnag/android/DeviceData;->appContext:Landroid/content/Context;

    .line 75
    iput-object p3, p0, Lcom/bugsnag/android/DeviceData;->resources:Landroid/content/res/Resources;

    .line 76
    iput-object p4, p0, Lcom/bugsnag/android/DeviceData;->sharedPrefs:Landroid/content/SharedPreferences;

    if-eqz p3, :cond_0

    .line 79
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/DeviceData;->displayMetrics:Landroid/util/DisplayMetrics;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/bugsnag/android/DeviceData;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 84
    :goto_0
    invoke-direct {p0}, Lcom/bugsnag/android/DeviceData;->getScreenDensity()Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/DeviceData;->screenDensity:Ljava/lang/Float;

    .line 85
    invoke-direct {p0}, Lcom/bugsnag/android/DeviceData;->getScreenDensityDpi()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/DeviceData;->dpi:Ljava/lang/Integer;

    .line 86
    invoke-direct {p0}, Lcom/bugsnag/android/DeviceData;->getScreenResolution()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/DeviceData;->screenResolution:Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Lcom/bugsnag/android/DeviceData;->getLocale()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/DeviceData;->locale:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/bugsnag/android/DeviceData;->getCpuAbi()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/DeviceData;->cpuAbi:[Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Lcom/bugsnag/android/DeviceData;->isEmulator()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bugsnag/android/DeviceData;->emulator:Z

    .line 90
    invoke-direct {p0}, Lcom/bugsnag/android/DeviceData;->retrieveUniqueInstallId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/DeviceData;->id:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Lcom/bugsnag/android/DeviceData;->isRooted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bugsnag/android/DeviceData;->rooted:Z

    return-void
.end method

.method private calculateFreeMemory()J
    .locals 6

    .line 270
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 272
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    add-long/2addr v1, v3

    return-wide v1

    .line 274
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method private calculateOrientation()Ljava/lang/String;
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/bugsnag/android/DeviceData;->resources:Landroid/content/res/Resources;

    if-eqz v0, :cond_2

    .line 286
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "landscape"

    goto :goto_1

    :cond_1
    const-string v0, "portrait"

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method static calculateTotalMemory()J
    .locals 6

    .line 214
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    return-wide v0

    .line 218
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method private getBatteryLevel()Ljava/lang/Float;
    .locals 5

    const/4 v0, 0x0

    .line 306
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/bugsnag/android/DeviceData;->appContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "level"

    const/4 v3, -0x1

    .line 309
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const-string v4, "scale"

    .line 310
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 309
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v1, "Could not get batteryLevel"

    .line 312
    invoke-static {v1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    return-object v0
.end method

.method private getCpuAbi()[Ljava/lang/String;
    .locals 2

    .line 249
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 250
    invoke-static {}, Lcom/bugsnag/android/DeviceData$SupportedAbiWrapper;->getSupportedAbis()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 252
    :cond_0
    invoke-static {}, Lcom/bugsnag/android/DeviceData$Abi2Wrapper;->getAbi1andAbi2()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLocale()Ljava/lang/String;
    .locals 1

    .line 227
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLocationStatus()Ljava/lang/String;
    .locals 2

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/bugsnag/android/DeviceData;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    .line 344
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "allowed"

    return-object v0

    :cond_0
    const-string v0, "disallowed"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Could not get locationStatus"

    .line 351
    invoke-static {v0}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getNetworkAccess()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/bugsnag/android/DeviceData;->connectivity:Lcom/bugsnag/android/Connectivity;

    invoke-interface {v0}, Lcom/bugsnag/android/Connectivity;->retrieveNetworkAccessState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getScreenDensity()Ljava/lang/Float;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/bugsnag/android/DeviceData;->displayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    .line 178
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getScreenDensityDpi()Ljava/lang/Integer;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/bugsnag/android/DeviceData;->displayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    .line 190
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getScreenResolution()Ljava/lang/String;
    .locals 5

    .line 201
    iget-object v0, p0, Lcom/bugsnag/android/DeviceData;->displayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    .line 202
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/bugsnag/android/DeviceData;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 203
    iget-object v1, p0, Lcom/bugsnag/android/DeviceData;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/bugsnag/android/DeviceData;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 204
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "%dx%d"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTime()Ljava/lang/String;
    .locals 1

    .line 369
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/bugsnag/android/DateUtils;->toIso8601(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isCharging()Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    .line 323
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 324
    iget-object v2, p0, Lcom/bugsnag/android/DeviceData;->appContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "status"

    const/4 v3, -0x1

    .line 326
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 327
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v1, "Could not get charging status"

    .line 330
    invoke-static {v1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    return-object v0
.end method

.method private isEmulator()Z
    .locals 2

    .line 166
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "unknown"

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "generic"

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "vbox"

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isRooted()Z
    .locals 7

    .line 144
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const-string v2, "test-keys"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 149
    :try_start_0
    sget-object v2, Lcom/bugsnag/android/DeviceData;->ROOT_INDICATORS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 150
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return v0
.end method

.method private retrieveUniqueInstallId()Ljava/lang/String;
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/bugsnag/android/DeviceData;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "install.iud"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 238
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    iget-object v2, p0, Lcom/bugsnag/android/DeviceData;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v0
.end method


# virtual methods
.method calculateFreeDisk()J
    .locals 2

    .line 262
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method getDeviceData()Ljava/util/Map;
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

    .line 111
    invoke-virtual {p0}, Lcom/bugsnag/android/DeviceData;->getDeviceDataSummary()Ljava/util/Map;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/bugsnag/android/DeviceData;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-direct {p0}, Lcom/bugsnag/android/DeviceData;->calculateFreeMemory()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "freeMemory"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {}, Lcom/bugsnag/android/DeviceData;->calculateTotalMemory()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "totalMemory"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {p0}, Lcom/bugsnag/android/DeviceData;->calculateFreeDisk()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "freeDisk"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-direct {p0}, Lcom/bugsnag/android/DeviceData;->calculateOrientation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "orientation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method getDeviceDataSummary()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "manufacturer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "model"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-boolean v1, p0, Lcom/bugsnag/android/DeviceData;->rooted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "jailbroken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "osName"

    const-string v2, "android"

    .line 99
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "osVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lcom/bugsnag/android/DeviceData;->cpuAbi:[Ljava/lang/String;

    const-string v2, "cpuAbi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 104
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "androidApiLevel"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v3, "osBuild"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "runtimeVersions"

    .line 106
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method getDeviceMetaData()Ljava/util/Map;
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

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    invoke-direct {p0}, Lcom/bugsnag/android/DeviceData;->getBatteryLevel()Ljava/lang/Float;

    move-result-object v1

    const-string v2, "batteryLevel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-direct {p0}, Lcom/bugsnag/android/DeviceData;->isCharging()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "charging"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-direct {p0}, Lcom/bugsnag/android/DeviceData;->getLocationStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "locationStatus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-direct {p0}, Lcom/bugsnag/android/DeviceData;->getNetworkAccess()Ljava/lang/String;

    move-result-object v1

    const-string v2, "networkAccess"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-direct {p0}, Lcom/bugsnag/android/DeviceData;->getTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "brand"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, p0, Lcom/bugsnag/android/DeviceData;->locale:Ljava/lang/String;

    const-string v2, "locale"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, p0, Lcom/bugsnag/android/DeviceData;->screenDensity:Ljava/lang/Float;

    const-string v2, "screenDensity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lcom/bugsnag/android/DeviceData;->dpi:Ljava/lang/Integer;

    const-string v2, "dpi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-boolean v1, p0, Lcom/bugsnag/android/DeviceData;->emulator:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "emulator"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lcom/bugsnag/android/DeviceData;->screenResolution:Ljava/lang/String;

    const-string v2, "screenResolution"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/bugsnag/android/DeviceData;->id:Ljava/lang/String;

    return-object v0
.end method
