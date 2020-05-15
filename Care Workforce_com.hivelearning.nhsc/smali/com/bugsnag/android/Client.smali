.class public Lcom/bugsnag/android/Client;
.super Ljava/util/Observable;
.source "Client.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final BLOCKING:Z = true

.field static final INTERNAL_DIAGNOSTICS_TAB:Ljava/lang/String; = "BugsnagDiagnostics"

.field private static final SHARED_PREF_KEY:Ljava/lang/String; = "com.bugsnag.android"

.field private static final USER_EMAIL_KEY:Ljava/lang/String; = "user.email"

.field private static final USER_ID_KEY:Ljava/lang/String; = "user.id"

.field private static final USER_NAME_KEY:Ljava/lang/String; = "user.name"


# instance fields
.field private anrPluginClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final appContext:Landroid/content/Context;

.field protected final appData:Lcom/bugsnag/android/AppData;

.field final breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

.field protected final config:Lcom/bugsnag/android/Configuration;

.field private final connectivity:Lcom/bugsnag/android/Connectivity;

.field protected final deviceData:Lcom/bugsnag/android/DeviceData;

.field protected final errorStore:Lcom/bugsnag/android/ErrorStore;

.field final eventReceiver:Lcom/bugsnag/android/EventReceiver;

.field private ndkPluginClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final orientationListener:Landroid/view/OrientationEventListener;

.field final sessionStore:Lcom/bugsnag/android/SessionStore;

.field final sessionTracker:Lcom/bugsnag/android/SessionTracker;

.field final sharedPrefs:Landroid/content/SharedPreferences;

.field final storageManager:Landroid/os/storage/StorageManager;

.field private final user:Lcom/bugsnag/android/User;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 99
    invoke-direct {p0, p1, v0, v1}, Lcom/bugsnag/android/Client;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bugsnag/android/Configuration;)V
    .locals 6

    .line 132
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 71
    new-instance v0, Lcom/bugsnag/android/User;

    invoke-direct {v0}, Lcom/bugsnag/android/User;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    .line 133
    invoke-static {p1}, Lcom/bugsnag/android/Client;->warnIfNotAppContext(Landroid/content/Context;)V

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    .line 135
    iput-object p2, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    .line 136
    new-instance p1, Lcom/bugsnag/android/SessionStore;

    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/bugsnag/android/SessionStore;-><init>(Lcom/bugsnag/android/Configuration;Landroid/content/Context;Lcom/bugsnag/android/FileStore$Delegate;)V

    iput-object p1, p0, Lcom/bugsnag/android/Client;->sessionStore:Lcom/bugsnag/android/SessionStore;

    .line 137
    iget-object p1, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/bugsnag/android/Client;->storageManager:Landroid/os/storage/StorageManager;

    .line 139
    new-instance p1, Lcom/bugsnag/android/ConnectivityCompat;

    iget-object v0, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    new-instance v1, Lcom/bugsnag/android/Client$1;

    invoke-direct {v1, p0}, Lcom/bugsnag/android/Client$1;-><init>(Lcom/bugsnag/android/Client;)V

    invoke-direct {p1, v0, v1}, Lcom/bugsnag/android/ConnectivityCompat;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lcom/bugsnag/android/Client;->connectivity:Lcom/bugsnag/android/Connectivity;

    .line 150
    invoke-virtual {p2}, Lcom/bugsnag/android/Configuration;->getDelivery()Lcom/bugsnag/android/Delivery;

    move-result-object p1

    if-nez p1, :cond_0

    .line 151
    new-instance p1, Lcom/bugsnag/android/DefaultDelivery;

    iget-object v0, p0, Lcom/bugsnag/android/Client;->connectivity:Lcom/bugsnag/android/Connectivity;

    invoke-direct {p1, v0}, Lcom/bugsnag/android/DefaultDelivery;-><init>(Lcom/bugsnag/android/Connectivity;)V

    invoke-virtual {p2, p1}, Lcom/bugsnag/android/Configuration;->setDelivery(Lcom/bugsnag/android/Delivery;)V

    .line 154
    :cond_0
    new-instance p1, Lcom/bugsnag/android/SessionTracker;

    iget-object v0, p0, Lcom/bugsnag/android/Client;->sessionStore:Lcom/bugsnag/android/SessionStore;

    invoke-direct {p1, p2, p0, v0}, Lcom/bugsnag/android/SessionTracker;-><init>(Lcom/bugsnag/android/Configuration;Lcom/bugsnag/android/Client;Lcom/bugsnag/android/SessionStore;)V

    iput-object p1, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    .line 156
    new-instance p1, Lcom/bugsnag/android/EventReceiver;

    invoke-direct {p1, p0}, Lcom/bugsnag/android/EventReceiver;-><init>(Lcom/bugsnag/android/Client;)V

    iput-object p1, p0, Lcom/bugsnag/android/Client;->eventReceiver:Lcom/bugsnag/android/EventReceiver;

    .line 159
    iget-object p1, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "com.bugsnag.android"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/Client;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 161
    new-instance p1, Lcom/bugsnag/android/AppData;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v5, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    invoke-direct {p1, v1, v3, v4, v5}, Lcom/bugsnag/android/AppData;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/bugsnag/android/Configuration;Lcom/bugsnag/android/SessionTracker;)V

    iput-object p1, p0, Lcom/bugsnag/android/Client;->appData:Lcom/bugsnag/android/AppData;

    .line 162
    iget-object p1, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 163
    new-instance v1, Lcom/bugsnag/android/DeviceData;

    iget-object v3, p0, Lcom/bugsnag/android/Client;->connectivity:Lcom/bugsnag/android/Connectivity;

    iget-object v4, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/bugsnag/android/Client;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {v1, v3, v4, p1, v5}, Lcom/bugsnag/android/DeviceData;-><init>(Lcom/bugsnag/android/Connectivity;Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lcom/bugsnag/android/Client;->deviceData:Lcom/bugsnag/android/DeviceData;

    .line 166
    new-instance p1, Lcom/bugsnag/android/Breadcrumbs;

    invoke-direct {p1, p2}, Lcom/bugsnag/android/Breadcrumbs;-><init>(Lcom/bugsnag/android/Configuration;)V

    iput-object p1, p0, Lcom/bugsnag/android/Client;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    .line 169
    iget-object p1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {p1}, Lcom/bugsnag/android/Configuration;->getProjectPackages()[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    new-array p1, p2, [Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Lcom/bugsnag/android/Client;->setProjectPackages([Ljava/lang/String;)V

    .line 173
    :cond_1
    iget-object p1, p0, Lcom/bugsnag/android/Client;->deviceData:Lcom/bugsnag/android/DeviceData;

    invoke-virtual {p1}, Lcom/bugsnag/android/DeviceData;->getId()Ljava/lang/String;

    move-result-object p1

    .line 175
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getPersistUserBetweenSessions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "user.id"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setId(Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    iget-object v0, p0, Lcom/bugsnag/android/Client;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "user.name"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/User;->setName(Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    iget-object v0, p0, Lcom/bugsnag/android/Client;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "user.email"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/User;->setEmail(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setId(Ljava/lang/String;)V

    .line 184
    :goto_0
    iget-object p1, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_3

    .line 185
    check-cast p1, Landroid/app/Application;

    .line 186
    iget-object v0, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_1

    :cond_3
    const-string p1, "Bugsnag is unable to setup automatic activity lifecycle breadcrumbs on API Levels below 14."

    .line 188
    invoke-static {p1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    .line 194
    :goto_1
    iget-object p1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {p1}, Lcom/bugsnag/android/Configuration;->getBuildUUID()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 197
    :try_start_0
    iget-object p1, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 198
    iget-object v0, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x80

    .line 200
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 201
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.bugsnag.android.BUILD_UUID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "Bugsnag is unable to read build UUID from manifest."

    .line 203
    invoke-static {p1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    :goto_2
    if-eqz v2, :cond_4

    .line 206
    iget-object p1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {p1, v2}, Lcom/bugsnag/android/Configuration;->setBuildUUID(Ljava/lang/String;)V

    .line 211
    :cond_4
    new-instance p1, Lcom/bugsnag/android/ErrorStore;

    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    new-instance v2, Lcom/bugsnag/android/Client$2;

    invoke-direct {v2, p0}, Lcom/bugsnag/android/Client$2;-><init>(Lcom/bugsnag/android/Client;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/bugsnag/android/ErrorStore;-><init>(Lcom/bugsnag/android/Configuration;Landroid/content/Context;Lcom/bugsnag/android/FileStore$Delegate;)V

    iput-object p1, p0, Lcom/bugsnag/android/Client;->errorStore:Lcom/bugsnag/android/ErrorStore;

    .line 235
    iget-object p1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {p1}, Lcom/bugsnag/android/Configuration;->getEnableExceptionHandler()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 236
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->enableExceptionHandler()V

    :cond_5
    :try_start_1
    const-string p1, "com.bugsnag.android.NdkPlugin"

    .line 240
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/Client;->ndkPluginClz:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const-string p1, "bugsnag-plugin-android-ndk artefact not found on classpath, NDK errors will not be captured."

    .line 242
    invoke-static {p1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    :goto_3
    :try_start_2
    const-string p1, "com.bugsnag.android.AnrPlugin"

    .line 247
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/bugsnag/android/Client;->anrPluginClz:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    const-string p1, "bugsnag-plugin-android-anr artefact not found on classpath, ANR errors will not be captured."

    .line 249
    invoke-static {p1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    .line 256
    :goto_4
    :try_start_3
    new-instance p1, Lcom/bugsnag/android/Client$3;

    invoke-direct {p1, p0}, Lcom/bugsnag/android/Client$3;-><init>(Lcom/bugsnag/android/Client;)V

    invoke-static {p1}, Lcom/bugsnag/android/Async;->run(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    const-string v0, "Failed to register for automatic breadcrumb broadcasts"

    .line 263
    invoke-static {v0, p1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    :goto_5
    iget-object p1, p0, Lcom/bugsnag/android/Client;->connectivity:Lcom/bugsnag/android/Connectivity;

    invoke-interface {p1}, Lcom/bugsnag/android/Connectivity;->registerForNetworkChanges()V

    .line 267
    iget-object p1, p0, Lcom/bugsnag/android/Client;->appData:Lcom/bugsnag/android/AppData;

    .line 268
    invoke-virtual {p1}, Lcom/bugsnag/android/AppData;->guessReleaseStage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "production"

    .line 267
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, p2

    .line 269
    invoke-static {p1}, Lcom/bugsnag/android/Logger;->setEnabled(Z)V

    .line 271
    iget-object p1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {p1, p0}, Lcom/bugsnag/android/Configuration;->addObserver(Ljava/util/Observer;)V

    .line 272
    iget-object p1, p0, Lcom/bugsnag/android/Client;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    invoke-virtual {p1, p0}, Lcom/bugsnag/android/Breadcrumbs;->addObserver(Ljava/util/Observer;)V

    .line 273
    iget-object p1, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    invoke-virtual {p1, p0}, Lcom/bugsnag/android/SessionTracker;->addObserver(Ljava/util/Observer;)V

    .line 274
    iget-object p1, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    invoke-virtual {p1, p0}, Lcom/bugsnag/android/User;->addObserver(Ljava/util/Observer;)V

    .line 277
    new-instance p1, Lcom/bugsnag/android/Client$4;

    iget-object p2, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2, p0}, Lcom/bugsnag/android/Client$4;-><init>(Lcom/bugsnag/android/Client;Landroid/content/Context;Lcom/bugsnag/android/Client;)V

    iput-object p1, p0, Lcom/bugsnag/android/Client;->orientationListener:Landroid/view/OrientationEventListener;

    .line 286
    :try_start_4
    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception p1

    .line 288
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set up orientation tracking: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    .line 292
    :goto_6
    iget-object p1, p0, Lcom/bugsnag/android/Client;->errorStore:Lcom/bugsnag/android/ErrorStore;

    invoke-virtual {p1}, Lcom/bugsnag/android/ErrorStore;->flushOnLaunch()V

    .line 293
    invoke-direct {p0}, Lcom/bugsnag/android/Client;->loadPlugins()V

    .line 296
    new-instance p1, Lcom/bugsnag/android/ClientConfigObserver;

    iget-object p2, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {p1, p0, p2}, Lcom/bugsnag/android/ClientConfigObserver;-><init>(Lcom/bugsnag/android/Client;Lcom/bugsnag/android/Configuration;)V

    .line 297
    iget-object p2, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {p2, p1}, Lcom/bugsnag/android/Configuration;->addObserver(Ljava/util/Observer;)V

    .line 298
    invoke-virtual {p0, p1}, Lcom/bugsnag/android/Client;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 109
    invoke-direct {p0, p1, p2, v0}, Lcom/bugsnag/android/Client;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 123
    invoke-static {p1, p2, p3}, Lcom/bugsnag/android/ConfigFactory;->createNewConfiguration(Landroid/content/Context;Ljava/lang/String;Z)Lcom/bugsnag/android/Configuration;

    move-result-object p2

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/bugsnag/android/Client;-><init>(Landroid/content/Context;Lcom/bugsnag/android/Configuration;)V

    return-void
.end method

.method static synthetic access$000(Lcom/bugsnag/android/Client;)V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->setChanged()V

    return-void
.end method

.method private deliverReportAsync(Lcom/bugsnag/android/Error;Lcom/bugsnag/android/Report;)V
    .locals 1

    .line 1104
    :try_start_0
    new-instance v0, Lcom/bugsnag/android/Client$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/bugsnag/android/Client$7;-><init>(Lcom/bugsnag/android/Client;Lcom/bugsnag/android/Report;Lcom/bugsnag/android/Error;)V

    invoke-static {v0}, Lcom/bugsnag/android/Async;->run(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1111
    :catch_0
    iget-object p2, p0, Lcom/bugsnag/android/Client;->errorStore:Lcom/bugsnag/android/ErrorStore;

    invoke-virtual {p2, p1}, Lcom/bugsnag/android/ErrorStore;->write(Lcom/bugsnag/android/JsonStream$Streamable;)Ljava/lang/String;

    const-string p1, "Exceeded max queue count, saving to disk to send later"

    .line 1112
    invoke-static {p1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getKeyFromClientData(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1316
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1317
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1318
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    if-nez p3, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1320
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in client data!"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private leaveErrorBreadcrumb(Lcom/bugsnag/android/Error;)V
    .locals 4

    .line 1118
    invoke-virtual {p1}, Lcom/bugsnag/android/Error;->getExceptionMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    .line 1119
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 1120
    iget-object v1, p0, Lcom/bugsnag/android/Client;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    new-instance v2, Lcom/bugsnag/android/Breadcrumb;

    invoke-virtual {p1}, Lcom/bugsnag/android/Error;->getExceptionName()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/bugsnag/android/BreadcrumbType;->ERROR:Lcom/bugsnag/android/BreadcrumbType;

    invoke-direct {v2, p1, v3, v0}, Lcom/bugsnag/android/Breadcrumb;-><init>(Ljava/lang/String;Lcom/bugsnag/android/BreadcrumbType;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/bugsnag/android/Breadcrumbs;->add(Lcom/bugsnag/android/Breadcrumb;)V

    return-void
.end method

.method private loadPlugins()V
    .locals 1

    .line 318
    invoke-static {p0}, Lcom/bugsnag/android/NativeInterface;->setClient(Lcom/bugsnag/android/Client;)V

    .line 319
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->enableOrDisableNdkReporting()V

    .line 320
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->enableOrDisableAnrReporting()V

    .line 321
    sget-object v0, Lcom/bugsnag/android/BugsnagPluginInterface;->INSTANCE:Lcom/bugsnag/android/BugsnagPluginInterface;

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/BugsnagPluginInterface;->loadRegisteredPlugins(Lcom/bugsnag/android/Client;)V

    return-void
.end method

.method private notify(Lcom/bugsnag/android/Error;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 957
    sget-object p2, Lcom/bugsnag/android/DeliveryStyle;->SAME_THREAD:Lcom/bugsnag/android/DeliveryStyle;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/bugsnag/android/DeliveryStyle;->ASYNC:Lcom/bugsnag/android/DeliveryStyle;

    :goto_0
    const/4 v0, 0x0

    .line 958
    invoke-virtual {p0, p1, p2, v0}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Lcom/bugsnag/android/DeliveryStyle;Lcom/bugsnag/android/Callback;)V

    return-void
.end method

.method private runBeforeBreadcrumbTasks(Lcom/bugsnag/android/Breadcrumb;)Z
    .locals 3

    .line 1543
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getBeforeRecordBreadcrumbTasks()Ljava/util/Collection;

    move-result-object v0

    .line 1544
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bugsnag/android/BeforeRecordBreadcrumb;

    .line 1546
    :try_start_0
    invoke-interface {v1, p1}, Lcom/bugsnag/android/BeforeRecordBreadcrumb;->shouldRecord(Lcom/bugsnag/android/Breadcrumb;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v1

    const-string v2, "BeforeRecordBreadcrumb threw an Exception"

    .line 1550
    invoke-static {v2, v1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private runBeforeNotifyTasks(Lcom/bugsnag/android/Error;)Z
    .locals 3

    .line 1528
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getBeforeNotifyTasks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bugsnag/android/BeforeNotify;

    .line 1530
    :try_start_0
    invoke-interface {v1, p1}, Lcom/bugsnag/android/BeforeNotify;->run(Lcom/bugsnag/android/Error;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v1

    const-string v2, "BeforeNotify threw an Exception"

    .line 1534
    invoke-static {v2, v1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private runBeforeSendTasks(Lcom/bugsnag/android/Report;)Z
    .locals 3

    .line 1505
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getBeforeSendTasks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bugsnag/android/BeforeSend;

    .line 1507
    :try_start_0
    invoke-interface {v1, p1}, Lcom/bugsnag/android/BeforeSend;->run(Lcom/bugsnag/android/Report;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v1

    const-string v2, "BeforeSend threw an Exception"

    .line 1511
    invoke-static {v2, v1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private storeInSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1564
    iget-object v0, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    const-string v1, "com.bugsnag.android"

    const/4 v2, 0x0

    .line 1565
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1566
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static warnIfNotAppContext(Landroid/content/Context;)V
    .locals 0

    .line 1592
    instance-of p0, p0, Landroid/app/Application;

    if-nez p0, :cond_0

    const-string p0, "Warning - Non-Application context detected! Please ensure that you are initializing Bugsnag from a custom Application class."

    .line 1593
    invoke-static {p0}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1339
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getMetaData()Lcom/bugsnag/android/MetaData;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bugsnag/android/MetaData;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public beforeNotify(Lcom/bugsnag/android/BeforeNotify;)V
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Configuration;->beforeNotify(Lcom/bugsnag/android/BeforeNotify;)V

    return-void
.end method

.method public beforeRecordBreadcrumb(Lcom/bugsnag/android/BeforeRecordBreadcrumb;)V
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Configuration;->beforeRecordBreadcrumb(Lcom/bugsnag/android/BeforeRecordBreadcrumb;)V

    return-void
.end method

.method cacheAndNotify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;)V
    .locals 7

    .line 1493
    new-instance v6, Lcom/bugsnag/android/Error$Builder;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v3, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v2, p1

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/bugsnag/android/Error$Builder;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;Z)V

    .line 1495
    invoke-virtual {v6, p2}, Lcom/bugsnag/android/Error$Builder;->severity(Lcom/bugsnag/android/Severity;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 1496
    invoke-virtual {p1, p3}, Lcom/bugsnag/android/Error$Builder;->metaData(Lcom/bugsnag/android/MetaData;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 1497
    invoke-virtual {p1, p4}, Lcom/bugsnag/android/Error$Builder;->severityReasonType(Ljava/lang/String;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 1498
    invoke-virtual {p1, p5}, Lcom/bugsnag/android/Error$Builder;->attributeValue(Ljava/lang/String;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 1499
    invoke-virtual {p1}, Lcom/bugsnag/android/Error$Builder;->build()Lcom/bugsnag/android/Error;

    move-result-object p1

    .line 1501
    sget-object p2, Lcom/bugsnag/android/DeliveryStyle;->ASYNC_WITH_CACHE:Lcom/bugsnag/android/DeliveryStyle;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Lcom/bugsnag/android/DeliveryStyle;Lcom/bugsnag/android/Callback;)V

    return-void
.end method

.method public clearBreadcrumbs()V
    .locals 1

    .line 1414
    iget-object v0, p0, Lcom/bugsnag/android/Client;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    invoke-virtual {v0}, Lcom/bugsnag/android/Breadcrumbs;->clear()V

    return-void
.end method

.method public clearTab(Ljava/lang/String;)V
    .locals 1

    .line 1348
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getMetaData()Lcom/bugsnag/android/MetaData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/MetaData;->clearTab(Ljava/lang/String;)V

    return-void
.end method

.method public clearUser()V
    .locals 3

    .line 666
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->deviceData:Lcom/bugsnag/android/DeviceData;

    invoke-virtual {v1}, Lcom/bugsnag/android/DeviceData;->getDeviceData()Ljava/util/Map;

    move-result-object v1

    const-string v2, "id"

    invoke-static {v2, v1}, Lcom/bugsnag/android/MapUtils;->getStringFromMap(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/User;->setId(Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/User;->setEmail(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/User;->setName(Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    const-string v1, "com.bugsnag.android"

    const/4 v2, 0x0

    .line 671
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 672
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user.id"

    .line 673
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user.email"

    .line 674
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user.name"

    .line 675
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 676
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method close()V
    .locals 1

    .line 1634
    iget-object v0, p0, Lcom/bugsnag/android/Client;->orientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 1635
    iget-object v0, p0, Lcom/bugsnag/android/Client;->connectivity:Lcom/bugsnag/android/Connectivity;

    invoke-interface {v0}, Lcom/bugsnag/android/Connectivity;->unregisterForNetworkChanges()V

    return-void
.end method

.method deliver(Lcom/bugsnag/android/Report;Lcom/bugsnag/android/Error;)V
    .locals 2

    .line 1465
    invoke-direct {p0, p1}, Lcom/bugsnag/android/Client;->runBeforeSendTasks(Lcom/bugsnag/android/Report;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Skipping notification - beforeSend task returned false"

    .line 1466
    invoke-static {p1}, Lcom/bugsnag/android/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 1470
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getDelivery()Lcom/bugsnag/android/Delivery;

    move-result-object v0

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-interface {v0, p1, v1}, Lcom/bugsnag/android/Delivery;->deliver(Lcom/bugsnag/android/Report;Lcom/bugsnag/android/Configuration;)V

    const-string v0, "Sent 1 new error to Bugsnag"

    .line 1471
    invoke-static {v0}, Lcom/bugsnag/android/Logger;->info(Ljava/lang/String;)V

    .line 1472
    invoke-direct {p0, p2}, Lcom/bugsnag/android/Client;->leaveErrorBreadcrumb(Lcom/bugsnag/android/Error;)V
    :try_end_0
    .catch Lcom/bugsnag/android/DeliveryFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Problem sending error to Bugsnag"

    .line 1481
    invoke-static {p2, p1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1474
    invoke-virtual {p1}, Lcom/bugsnag/android/Report;->isCachingDisabled()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Could not send error(s) to Bugsnag, saving to disk to send later"

    .line 1475
    invoke-static {p1, v0}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1477
    iget-object p1, p0, Lcom/bugsnag/android/Client;->errorStore:Lcom/bugsnag/android/ErrorStore;

    invoke-virtual {p1, p2}, Lcom/bugsnag/android/ErrorStore;->write(Lcom/bugsnag/android/JsonStream$Streamable;)Ljava/lang/String;

    .line 1478
    invoke-direct {p0, p2}, Lcom/bugsnag/android/Client;->leaveErrorBreadcrumb(Lcom/bugsnag/android/Error;)V

    :cond_1
    :goto_0
    return-void
.end method

.method disableAnrReporting()V
    .locals 2

    .line 1429
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->getConfig()Lcom/bugsnag/android/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/Configuration;->setDetectAnrs(Z)V

    .line 1430
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->enableOrDisableAnrReporting()V

    return-void
.end method

.method public disableExceptionHandler()V
    .locals 0

    .line 1461
    invoke-static {p0}, Lcom/bugsnag/android/ExceptionHandler;->disable(Lcom/bugsnag/android/Client;)V

    return-void
.end method

.method disableNdkCrashReporting()V
    .locals 2

    .line 1445
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->getConfig()Lcom/bugsnag/android/Configuration;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/Configuration;->setDetectNdkCrashes(Z)V

    .line 1446
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->enableOrDisableNdkReporting()V

    return-void
.end method

.method enableAnrReporting()V
    .locals 2

    .line 1421
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->getConfig()Lcom/bugsnag/android/Configuration;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/Configuration;->setDetectAnrs(Z)V

    .line 1422
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->enableOrDisableAnrReporting()V

    return-void
.end method

.method public enableExceptionHandler()V
    .locals 0

    .line 1454
    invoke-static {p0}, Lcom/bugsnag/android/ExceptionHandler;->enable(Lcom/bugsnag/android/Client;)V

    return-void
.end method

.method enableNdkCrashReporting()V
    .locals 2

    .line 1437
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->getConfig()Lcom/bugsnag/android/Configuration;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/Configuration;->setDetectNdkCrashes(Z)V

    .line 1438
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->enableOrDisableNdkReporting()V

    return-void
.end method

.method enableOrDisableAnrReporting()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/bugsnag/android/Client;->anrPluginClz:Ljava/lang/Class;

    if-nez v0, :cond_0

    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getDetectAnrs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    sget-object v0, Lcom/bugsnag/android/BugsnagPluginInterface;->INSTANCE:Lcom/bugsnag/android/BugsnagPluginInterface;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->anrPluginClz:Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Lcom/bugsnag/android/BugsnagPluginInterface;->loadPlugin(Lcom/bugsnag/android/Client;Ljava/lang/Class;)V

    goto :goto_0

    .line 342
    :cond_1
    sget-object v0, Lcom/bugsnag/android/BugsnagPluginInterface;->INSTANCE:Lcom/bugsnag/android/BugsnagPluginInterface;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->anrPluginClz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/BugsnagPluginInterface;->unloadPlugin(Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method enableOrDisableNdkReporting()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/bugsnag/android/Client;->ndkPluginClz:Ljava/lang/Class;

    if-nez v0, :cond_0

    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getDetectNdkCrashes()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    sget-object v0, Lcom/bugsnag/android/BugsnagPluginInterface;->INSTANCE:Lcom/bugsnag/android/BugsnagPluginInterface;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->ndkPluginClz:Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Lcom/bugsnag/android/BugsnagPluginInterface;->loadPlugin(Lcom/bugsnag/android/Client;Ljava/lang/Class;)V

    goto :goto_0

    .line 331
    :cond_1
    sget-object v0, Lcom/bugsnag/android/BugsnagPluginInterface;->INSTANCE:Lcom/bugsnag/android/BugsnagPluginInterface;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->ndkPluginClz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/BugsnagPluginInterface;->unloadPlugin(Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method enqueuePendingNativeReports()V
    .locals 3

    .line 365
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->setChanged()V

    .line 366
    new-instance v0, Lcom/bugsnag/android/NativeInterface$Message;

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->DELIVER_PENDING:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bugsnag/android/NativeInterface$Message;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/bugsnag/android/Client;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1580
    iget-object v0, p0, Lcom/bugsnag/android/Client;->eventReceiver:Lcom/bugsnag/android/EventReceiver;

    if-eqz v0, :cond_0

    .line 1582
    :try_start_0
    iget-object v1, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Receiver not registered"

    .line 1584
    invoke-static {v0}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    .line 1588
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method getAndSetDeliveryCompat()Lcom/bugsnag/android/DeliveryCompat;
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getDelivery()Lcom/bugsnag/android/Delivery;

    move-result-object v0

    .line 725
    instance-of v1, v0, Lcom/bugsnag/android/DeliveryCompat;

    if-eqz v1, :cond_0

    .line 726
    check-cast v0, Lcom/bugsnag/android/DeliveryCompat;

    return-object v0

    .line 728
    :cond_0
    new-instance v0, Lcom/bugsnag/android/DeliveryCompat;

    invoke-direct {v0}, Lcom/bugsnag/android/DeliveryCompat;-><init>()V

    .line 729
    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v1, v0}, Lcom/bugsnag/android/Configuration;->setDelivery(Lcom/bugsnag/android/Delivery;)V

    return-object v0
.end method

.method public getAppData()Lcom/bugsnag/android/AppData;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/bugsnag/android/Client;->appData:Lcom/bugsnag/android/AppData;

    return-object v0
.end method

.method public getBreadcrumbs()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bugsnag/android/Breadcrumb;",
            ">;"
        }
    .end annotation

    .line 647
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    iget-object v1, v1, Lcom/bugsnag/android/Breadcrumbs;->store:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getConfig()Lcom/bugsnag/android/Configuration;
    .locals 1

    .line 1617
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    return-object v0
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getContext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceData()Lcom/bugsnag/android/DeviceData;
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/bugsnag/android/Client;->deviceData:Lcom/bugsnag/android/DeviceData;

    return-object v0
.end method

.method getErrorStore()Lcom/bugsnag/android/ErrorStore;
    .locals 1

    .line 1570
    iget-object v0, p0, Lcom/bugsnag/android/Client;->errorStore:Lcom/bugsnag/android/ErrorStore;

    return-object v0
.end method

.method public getLaunchTimeMs()J
    .locals 2

    .line 1626
    invoke-static {}, Lcom/bugsnag/android/AppData;->getDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetaData()Lcom/bugsnag/android/MetaData;
    .locals 1

    .line 1357
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getMetaData()Lcom/bugsnag/android/MetaData;

    move-result-object v0

    return-object v0
.end method

.method getOrientationListener()Landroid/view/OrientationEventListener;
    .locals 1

    .line 1520
    iget-object v0, p0, Lcom/bugsnag/android/Client;->orientationListener:Landroid/view/OrientationEventListener;

    return-object v0
.end method

.method getSessionTracker()Lcom/bugsnag/android/SessionTracker;
    .locals 1

    .line 1524
    iget-object v0, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    return-object v0
.end method

.method public getUser()Lcom/bugsnag/android/User;
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    return-object v0
.end method

.method public internalClientNotify(Ljava/lang/Throwable;Ljava/util/Map;ZLcom/bugsnag/android/Callback;)V
    .locals 9
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

    const/4 v0, 0x1

    const-string v1, "severity"

    .line 1291
    invoke-direct {p0, p2, v1, v0}, Lcom/bugsnag/android/Client;->getKeyFromClientData(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "severityReason"

    .line 1293
    invoke-direct {p0, p2, v2, v0}, Lcom/bugsnag/android/Client;->getKeyFromClientData(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "logLevel"

    .line 1294
    invoke-direct {p0, p2, v4, v3}, Lcom/bugsnag/android/Client;->getKeyFromClientData(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object v2, v4, v0

    const-string v0, "Internal client notify, severity = \'%s\', severityReason = \'%s\'"

    .line 1296
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1298
    invoke-static {v0}, Lcom/bugsnag/android/Logger;->info(Ljava/lang/String;)V

    .line 1301
    new-instance v0, Lcom/bugsnag/android/Error$Builder;

    iget-object v4, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v6, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    .line 1302
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/bugsnag/android/Error$Builder;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;Z)V

    .line 1303
    invoke-static {v1}, Lcom/bugsnag/android/Severity;->fromString(Ljava/lang/String;)Lcom/bugsnag/android/Severity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Error$Builder;->severity(Lcom/bugsnag/android/Severity;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 1304
    invoke-virtual {p1, v2}, Lcom/bugsnag/android/Error$Builder;->severityReasonType(Ljava/lang/String;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 1305
    invoke-virtual {p1, p2}, Lcom/bugsnag/android/Error$Builder;->attributeValue(Ljava/lang/String;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 1306
    invoke-virtual {p1}, Lcom/bugsnag/android/Error$Builder;->build()Lcom/bugsnag/android/Error;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 1308
    sget-object p2, Lcom/bugsnag/android/DeliveryStyle;->SAME_THREAD:Lcom/bugsnag/android/DeliveryStyle;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/bugsnag/android/DeliveryStyle;->ASYNC:Lcom/bugsnag/android/DeliveryStyle;

    .line 1309
    :goto_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Lcom/bugsnag/android/DeliveryStyle;Lcom/bugsnag/android/Callback;)V

    return-void
.end method

.method public leaveBreadcrumb(Ljava/lang/String;)V
    .locals 1

    .line 1376
    new-instance v0, Lcom/bugsnag/android/Breadcrumb;

    invoke-direct {v0, p1}, Lcom/bugsnag/android/Breadcrumb;-><init>(Ljava/lang/String;)V

    .line 1378
    invoke-direct {p0, v0}, Lcom/bugsnag/android/Client;->runBeforeBreadcrumbTasks(Lcom/bugsnag/android/Breadcrumb;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1379
    iget-object p1, p0, Lcom/bugsnag/android/Client;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Breadcrumbs;->add(Lcom/bugsnag/android/Breadcrumb;)V

    :cond_0
    return-void
.end method

.method public leaveBreadcrumb(Ljava/lang/String;Lcom/bugsnag/android/BreadcrumbType;Ljava/util/Map;)V
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

    .line 1390
    new-instance v0, Lcom/bugsnag/android/Breadcrumb;

    invoke-direct {v0, p1, p2, p3}, Lcom/bugsnag/android/Breadcrumb;-><init>(Ljava/lang/String;Lcom/bugsnag/android/BreadcrumbType;Ljava/util/Map;)V

    .line 1392
    invoke-direct {p0, v0}, Lcom/bugsnag/android/Client;->runBeforeBreadcrumbTasks(Lcom/bugsnag/android/Breadcrumb;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1393
    iget-object p1, p0, Lcom/bugsnag/android/Client;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Breadcrumbs;->add(Lcom/bugsnag/android/Breadcrumb;)V

    :cond_0
    return-void
.end method

.method notify(Lcom/bugsnag/android/Error;Lcom/bugsnag/android/DeliveryStyle;Lcom/bugsnag/android/Callback;)V
    .locals 4

    .line 965
    invoke-virtual {p1}, Lcom/bugsnag/android/Error;->shouldIgnoreClass()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/Client;->appData:Lcom/bugsnag/android/AppData;

    invoke-virtual {v0}, Lcom/bugsnag/android/AppData;->getAppData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "releaseStage"

    .line 973
    invoke-static {v1, v0}, Lcom/bugsnag/android/MapUtils;->getStringFromMap(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 975
    iget-object v2, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v2, v1}, Lcom/bugsnag/android/Configuration;->shouldNotifyForReleaseStage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 980
    :cond_1
    iget-object v1, p0, Lcom/bugsnag/android/Client;->deviceData:Lcom/bugsnag/android/DeviceData;

    invoke-virtual {v1}, Lcom/bugsnag/android/DeviceData;->getDeviceData()Ljava/util/Map;

    move-result-object v1

    .line 981
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/Error;->setDeviceData(Ljava/util/Map;)V

    .line 982
    invoke-virtual {p1}, Lcom/bugsnag/android/Error;->getMetaData()Lcom/bugsnag/android/MetaData;

    move-result-object v1

    iget-object v1, v1, Lcom/bugsnag/android/MetaData;->store:Ljava/util/Map;

    iget-object v2, p0, Lcom/bugsnag/android/Client;->deviceData:Lcom/bugsnag/android/DeviceData;

    invoke-virtual {v2}, Lcom/bugsnag/android/DeviceData;->getDeviceMetaData()Ljava/util/Map;

    move-result-object v2

    const-string v3, "device"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Error;->setAppData(Ljava/util/Map;)V

    .line 987
    invoke-virtual {p1}, Lcom/bugsnag/android/Error;->getMetaData()Lcom/bugsnag/android/MetaData;

    move-result-object v0

    iget-object v0, v0, Lcom/bugsnag/android/MetaData;->store:Ljava/util/Map;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->appData:Lcom/bugsnag/android/AppData;

    invoke-virtual {v1}, Lcom/bugsnag/android/AppData;->getAppDataMetaData()Ljava/util/Map;

    move-result-object v1

    const-string v2, "app"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    iget-object v0, p0, Lcom/bugsnag/android/Client;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Error;->setBreadcrumbs(Lcom/bugsnag/android/Breadcrumbs;)V

    .line 993
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Error;->setUser(Lcom/bugsnag/android/User;)V

    .line 996
    invoke-virtual {p1}, Lcom/bugsnag/android/Error;->getContext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 997
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getContext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 998
    :cond_2
    iget-object v0, p0, Lcom/bugsnag/android/Client;->appData:Lcom/bugsnag/android/AppData;

    invoke-virtual {v0}, Lcom/bugsnag/android/AppData;->getActiveScreenClass()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Error;->setContext(Ljava/lang/String;)V

    .line 1002
    :cond_3
    invoke-direct {p0, p1}, Lcom/bugsnag/android/Client;->runBeforeNotifyTasks(Lcom/bugsnag/android/Error;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "Skipping notification - beforeNotify task returned false"

    .line 1003
    invoke-static {p1}, Lcom/bugsnag/android/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 1008
    :cond_4
    new-instance v0, Lcom/bugsnag/android/Report;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v1}, Lcom/bugsnag/android/Configuration;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/Report;-><init>(Ljava/lang/String;Lcom/bugsnag/android/Error;)V

    if-eqz p3, :cond_5

    .line 1011
    invoke-interface {p3, v0}, Lcom/bugsnag/android/Callback;->beforeNotify(Lcom/bugsnag/android/Report;)V

    .line 1014
    :cond_5
    invoke-virtual {p1}, Lcom/bugsnag/android/Error;->getSession()Lcom/bugsnag/android/Session;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 1015
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->setChanged()V

    .line 1017
    invoke-virtual {p1}, Lcom/bugsnag/android/Error;->getHandledState()Lcom/bugsnag/android/HandledState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bugsnag/android/HandledState;->isUnhandled()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1018
    new-instance p3, Lcom/bugsnag/android/NativeInterface$Message;

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->NOTIFY_UNHANDLED:Lcom/bugsnag/android/NativeInterface$MessageType;

    const/4 v2, 0x0

    invoke-direct {p3, v1, v2}, Lcom/bugsnag/android/NativeInterface$Message;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Lcom/bugsnag/android/Client;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    .line 1021
    :cond_6
    new-instance p3, Lcom/bugsnag/android/NativeInterface$Message;

    sget-object v1, Lcom/bugsnag/android/NativeInterface$MessageType;->NOTIFY_HANDLED:Lcom/bugsnag/android/NativeInterface$MessageType;

    .line 1022
    invoke-virtual {p1}, Lcom/bugsnag/android/Error;->getExceptionName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v1, v2}, Lcom/bugsnag/android/NativeInterface$Message;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    .line 1021
    invoke-virtual {p0, p3}, Lcom/bugsnag/android/Client;->notifyObservers(Ljava/lang/Object;)V

    .line 1026
    :cond_7
    :goto_1
    sget-object p3, Lcom/bugsnag/android/Client$8;->$SwitchMap$com$bugsnag$android$DeliveryStyle:[I

    invoke-virtual {p2}, Lcom/bugsnag/android/DeliveryStyle;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_b

    const/4 v1, 0x2

    if-eq p2, v1, :cond_a

    const/4 p3, 0x3

    if-eq p2, p3, :cond_9

    const/4 p3, 0x4

    if-eq p2, p3, :cond_8

    goto :goto_2

    .line 1038
    :cond_8
    iget-object p2, p0, Lcom/bugsnag/android/Client;->errorStore:Lcom/bugsnag/android/ErrorStore;

    invoke-virtual {p2, p1}, Lcom/bugsnag/android/ErrorStore;->write(Lcom/bugsnag/android/JsonStream$Streamable;)Ljava/lang/String;

    .line 1039
    iget-object p1, p0, Lcom/bugsnag/android/Client;->errorStore:Lcom/bugsnag/android/ErrorStore;

    invoke-virtual {p1}, Lcom/bugsnag/android/ErrorStore;->flushAsync()V

    goto :goto_2

    .line 1035
    :cond_9
    invoke-direct {p0, p1, v0}, Lcom/bugsnag/android/Client;->deliverReportAsync(Lcom/bugsnag/android/Error;Lcom/bugsnag/android/Report;)V

    goto :goto_2

    .line 1031
    :cond_a
    invoke-virtual {v0, p3}, Lcom/bugsnag/android/Report;->setCachingDisabled(Z)V

    .line 1032
    invoke-direct {p0, p1, v0}, Lcom/bugsnag/android/Client;->deliverReportAsync(Lcom/bugsnag/android/Error;Lcom/bugsnag/android/Report;)V

    goto :goto_2

    .line 1028
    :cond_b
    invoke-virtual {p0, v0, p1}, Lcom/bugsnag/android/Client;->deliver(Lcom/bugsnag/android/Report;Lcom/bugsnag/android/Error;)V

    :goto_2
    return-void
.end method

.method public notify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 947
    new-instance v7, Lcom/bugsnag/android/Error$Builder;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v5, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    .line 948
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/bugsnag/android/Error$Builder;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;)V

    .line 949
    invoke-virtual {v7, p5}, Lcom/bugsnag/android/Error$Builder;->severity(Lcom/bugsnag/android/Severity;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 950
    invoke-virtual {p1, p6}, Lcom/bugsnag/android/Error$Builder;->metaData(Lcom/bugsnag/android/MetaData;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 951
    invoke-virtual {p1}, Lcom/bugsnag/android/Error$Builder;->build()Lcom/bugsnag/android/Error;

    move-result-object p1

    .line 952
    invoke-virtual {p1, p3}, Lcom/bugsnag/android/Error;->setContext(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 953
    invoke-direct {p0, p1, p2}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Callback;)V
    .locals 8

    .line 843
    new-instance v7, Lcom/bugsnag/android/Error$Builder;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v5, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    .line 844
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/bugsnag/android/Error$Builder;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;)V

    const-string p1, "handledException"

    .line 845
    invoke-virtual {v7, p1}, Lcom/bugsnag/android/Error$Builder;->severityReasonType(Ljava/lang/String;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 846
    invoke-virtual {p1}, Lcom/bugsnag/android/Error$Builder;->build()Lcom/bugsnag/android/Error;

    move-result-object p1

    .line 847
    sget-object p2, Lcom/bugsnag/android/DeliveryStyle;->ASYNC:Lcom/bugsnag/android/DeliveryStyle;

    invoke-virtual {p0, p1, p2, p4}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Lcom/bugsnag/android/DeliveryStyle;Lcom/bugsnag/android/Callback;)V

    return-void
.end method

.method public notify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 919
    new-instance v7, Lcom/bugsnag/android/Error$Builder;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v5, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    .line 920
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/bugsnag/android/Error$Builder;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;)V

    .line 921
    invoke-virtual {v7, p4}, Lcom/bugsnag/android/Error$Builder;->severity(Lcom/bugsnag/android/Severity;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 922
    invoke-virtual {p1, p5}, Lcom/bugsnag/android/Error$Builder;->metaData(Lcom/bugsnag/android/MetaData;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 923
    invoke-virtual {p1}, Lcom/bugsnag/android/Error$Builder;->build()Lcom/bugsnag/android/Error;

    move-result-object p1

    const/4 p2, 0x0

    .line 924
    invoke-direct {p0, p1, p2}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notify(Ljava/lang/Throwable;)V
    .locals 7

    .line 808
    new-instance v6, Lcom/bugsnag/android/Error$Builder;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v3, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    .line 809
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/bugsnag/android/Error$Builder;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;Z)V

    const-string p1, "handledException"

    .line 810
    invoke-virtual {v6, p1}, Lcom/bugsnag/android/Error$Builder;->severityReasonType(Ljava/lang/String;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 811
    invoke-virtual {p1}, Lcom/bugsnag/android/Error$Builder;->build()Lcom/bugsnag/android/Error;

    move-result-object p1

    const/4 v0, 0x0

    .line 812
    invoke-direct {p0, p1, v0}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Callback;)V
    .locals 7

    .line 823
    new-instance v6, Lcom/bugsnag/android/Error$Builder;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v3, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    .line 824
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/bugsnag/android/Error$Builder;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;Z)V

    const-string p1, "handledException"

    .line 825
    invoke-virtual {v6, p1}, Lcom/bugsnag/android/Error$Builder;->severityReasonType(Ljava/lang/String;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 826
    invoke-virtual {p1}, Lcom/bugsnag/android/Error$Builder;->build()Lcom/bugsnag/android/Error;

    move-result-object p1

    .line 827
    sget-object v0, Lcom/bugsnag/android/DeliveryStyle;->ASYNC:Lcom/bugsnag/android/DeliveryStyle;

    invoke-virtual {p0, p1, v0, p2}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Lcom/bugsnag/android/DeliveryStyle;Lcom/bugsnag/android/Callback;)V

    return-void
.end method

.method public notify(Ljava/lang/Throwable;Lcom/bugsnag/android/MetaData;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 875
    new-instance v6, Lcom/bugsnag/android/Error$Builder;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v3, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    .line 876
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/bugsnag/android/Error$Builder;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;Z)V

    .line 877
    invoke-virtual {v6, p2}, Lcom/bugsnag/android/Error$Builder;->metaData(Lcom/bugsnag/android/MetaData;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    const-string p2, "handledException"

    .line 878
    invoke-virtual {p1, p2}, Lcom/bugsnag/android/Error$Builder;->severityReasonType(Ljava/lang/String;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 879
    invoke-virtual {p1}, Lcom/bugsnag/android/Error$Builder;->build()Lcom/bugsnag/android/Error;

    move-result-object p1

    const/4 p2, 0x0

    .line 880
    invoke-direct {p0, p1, p2}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;)V
    .locals 7

    .line 858
    new-instance v6, Lcom/bugsnag/android/Error$Builder;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v3, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    .line 859
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/bugsnag/android/Error$Builder;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;Z)V

    .line 860
    invoke-virtual {v6, p2}, Lcom/bugsnag/android/Error$Builder;->severity(Lcom/bugsnag/android/Severity;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 861
    invoke-virtual {p1}, Lcom/bugsnag/android/Error$Builder;->build()Lcom/bugsnag/android/Error;

    move-result-object p1

    const/4 p2, 0x0

    .line 862
    invoke-direct {p0, p1, p2}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 895
    new-instance v6, Lcom/bugsnag/android/Error$Builder;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v3, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    .line 896
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/bugsnag/android/Error$Builder;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;Z)V

    .line 897
    invoke-virtual {v6, p3}, Lcom/bugsnag/android/Error$Builder;->metaData(Lcom/bugsnag/android/MetaData;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 898
    invoke-virtual {p1, p2}, Lcom/bugsnag/android/Error$Builder;->severity(Lcom/bugsnag/android/Severity;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 899
    invoke-virtual {p1}, Lcom/bugsnag/android/Error$Builder;->build()Lcom/bugsnag/android/Error;

    move-result-object p1

    const/4 p2, 0x0

    .line 900
    invoke-direct {p0, p1, p2}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notifyBlocking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1255
    new-instance v7, Lcom/bugsnag/android/Error$Builder;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v5, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    .line 1256
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/bugsnag/android/Error$Builder;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;)V

    .line 1257
    invoke-virtual {v7, p5}, Lcom/bugsnag/android/Error$Builder;->severity(Lcom/bugsnag/android/Severity;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 1258
    invoke-virtual {p1, p6}, Lcom/bugsnag/android/Error$Builder;->metaData(Lcom/bugsnag/android/MetaData;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 1259
    invoke-virtual {p1}, Lcom/bugsnag/android/Error$Builder;->build()Lcom/bugsnag/android/Error;

    move-result-object p1

    .line 1260
    invoke-virtual {p1, p3}, Lcom/bugsnag/android/Error;->setContext(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 1261
    invoke-direct {p0, p1, p2}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notifyBlocking(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Callback;)V
    .locals 8

    .line 1164
    new-instance v7, Lcom/bugsnag/android/Error$Builder;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v5, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    .line 1165
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/bugsnag/android/Error$Builder;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;)V

    const-string p1, "handledException"

    .line 1166
    invoke-virtual {v7, p1}, Lcom/bugsnag/android/Error$Builder;->severityReasonType(Ljava/lang/String;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 1167
    invoke-virtual {p1}, Lcom/bugsnag/android/Error$Builder;->build()Lcom/bugsnag/android/Error;

    move-result-object p1

    .line 1168
    sget-object p2, Lcom/bugsnag/android/DeliveryStyle;->SAME_THREAD:Lcom/bugsnag/android/DeliveryStyle;

    invoke-virtual {p0, p1, p2, p4}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Lcom/bugsnag/android/DeliveryStyle;Lcom/bugsnag/android/Callback;)V

    return-void
.end method

.method public notifyBlocking(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1227
    new-instance v7, Lcom/bugsnag/android/Error$Builder;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v5, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    .line 1228
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/bugsnag/android/Error$Builder;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;)V

    .line 1229
    invoke-virtual {v7, p4}, Lcom/bugsnag/android/Error$Builder;->severity(Lcom/bugsnag/android/Severity;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 1230
    invoke-virtual {p1, p5}, Lcom/bugsnag/android/Error$Builder;->metaData(Lcom/bugsnag/android/MetaData;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 1231
    invoke-virtual {p1}, Lcom/bugsnag/android/Error$Builder;->build()Lcom/bugsnag/android/Error;

    move-result-object p1

    const/4 p2, 0x1

    .line 1232
    invoke-direct {p0, p1, p2}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notifyBlocking(Ljava/lang/Throwable;)V
    .locals 7

    .line 1129
    new-instance v6, Lcom/bugsnag/android/Error$Builder;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v3, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    .line 1130
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/bugsnag/android/Error$Builder;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;Z)V

    const-string p1, "handledException"

    .line 1131
    invoke-virtual {v6, p1}, Lcom/bugsnag/android/Error$Builder;->severityReasonType(Ljava/lang/String;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 1132
    invoke-virtual {p1}, Lcom/bugsnag/android/Error$Builder;->build()Lcom/bugsnag/android/Error;

    move-result-object p1

    const/4 v0, 0x1

    .line 1133
    invoke-direct {p0, p1, v0}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notifyBlocking(Ljava/lang/Throwable;Lcom/bugsnag/android/Callback;)V
    .locals 7

    .line 1144
    new-instance v6, Lcom/bugsnag/android/Error$Builder;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v3, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    .line 1145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/bugsnag/android/Error$Builder;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;Z)V

    const-string p1, "handledException"

    .line 1146
    invoke-virtual {v6, p1}, Lcom/bugsnag/android/Error$Builder;->severityReasonType(Ljava/lang/String;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 1147
    invoke-virtual {p1}, Lcom/bugsnag/android/Error$Builder;->build()Lcom/bugsnag/android/Error;

    move-result-object p1

    .line 1148
    sget-object v0, Lcom/bugsnag/android/DeliveryStyle;->SAME_THREAD:Lcom/bugsnag/android/DeliveryStyle;

    invoke-virtual {p0, p1, v0, p2}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Lcom/bugsnag/android/DeliveryStyle;Lcom/bugsnag/android/Callback;)V

    return-void
.end method

.method public notifyBlocking(Ljava/lang/Throwable;Lcom/bugsnag/android/MetaData;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1181
    new-instance v6, Lcom/bugsnag/android/Error$Builder;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v3, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    .line 1182
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/bugsnag/android/Error$Builder;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;Z)V

    const-string p1, "handledException"

    .line 1183
    invoke-virtual {v6, p1}, Lcom/bugsnag/android/Error$Builder;->severityReasonType(Ljava/lang/String;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 1184
    invoke-virtual {p1, p2}, Lcom/bugsnag/android/Error$Builder;->metaData(Lcom/bugsnag/android/MetaData;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 1185
    invoke-virtual {p1}, Lcom/bugsnag/android/Error$Builder;->build()Lcom/bugsnag/android/Error;

    move-result-object p1

    const/4 p2, 0x1

    .line 1186
    invoke-direct {p0, p1, p2}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notifyBlocking(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;)V
    .locals 7

    .line 1272
    new-instance v6, Lcom/bugsnag/android/Error$Builder;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v3, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    .line 1273
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/bugsnag/android/Error$Builder;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;Z)V

    .line 1274
    invoke-virtual {v6, p2}, Lcom/bugsnag/android/Error$Builder;->severity(Lcom/bugsnag/android/Severity;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 1275
    invoke-virtual {p1}, Lcom/bugsnag/android/Error$Builder;->build()Lcom/bugsnag/android/Error;

    move-result-object p1

    const/4 p2, 0x1

    .line 1276
    invoke-direct {p0, p1, p2}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method public notifyBlocking(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1201
    new-instance v6, Lcom/bugsnag/android/Error$Builder;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v3, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    .line 1202
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/bugsnag/android/Error$Builder;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;Z)V

    .line 1203
    invoke-virtual {v6, p3}, Lcom/bugsnag/android/Error$Builder;->metaData(Lcom/bugsnag/android/MetaData;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 1204
    invoke-virtual {p1, p2}, Lcom/bugsnag/android/Error$Builder;->severity(Lcom/bugsnag/android/Severity;)Lcom/bugsnag/android/Error$Builder;

    move-result-object p1

    .line 1205
    invoke-virtual {p1}, Lcom/bugsnag/android/Error$Builder;->build()Lcom/bugsnag/android/Error;

    move-result-object p1

    const/4 p2, 0x1

    .line 1206
    invoke-direct {p0, p1, p2}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    return-void
.end method

.method recordStorageCacheBehavior(Lcom/bugsnag/android/MetaData;)V
    .locals 4

    const-string v0, "BugsnagDiagnostics"

    .line 302
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 303
    iget-object v1, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 304
    new-instance v2, Ljava/io/File;

    const-string v3, "bugsnag-errors"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/bugsnag/android/Client;->storageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->isCacheBehaviorTombstone(Ljava/io/File;)Z

    move-result v1

    .line 308
    iget-object v3, p0, Lcom/bugsnag/android/Client;->storageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v2}, Landroid/os/storage/StorageManager;->isCacheBehaviorGroup(Ljava/io/File;)Z

    move-result v2

    const-string v3, "cacheTombstone"

    .line 309
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1}, Lcom/bugsnag/android/MetaData;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "cacheGroup"

    .line 310
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/bugsnag/android/MetaData;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to record cache behaviour, skipping diagnostics"

    .line 312
    invoke-static {v0, p1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method reportInternalBugsnagError(Lcom/bugsnag/android/Error;)V
    .locals 5

    .line 1052
    iget-object v0, p0, Lcom/bugsnag/android/Client;->appData:Lcom/bugsnag/android/AppData;

    invoke-virtual {v0}, Lcom/bugsnag/android/AppData;->getAppDataSummary()Ljava/util/Map;

    move-result-object v0

    .line 1053
    invoke-static {}, Lcom/bugsnag/android/AppData;->getDurationMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    iget-object v1, p0, Lcom/bugsnag/android/Client;->appData:Lcom/bugsnag/android/AppData;

    invoke-virtual {v1}, Lcom/bugsnag/android/AppData;->calculateDurationInForeground()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "durationInForeground"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    iget-object v1, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    invoke-virtual {v1}, Lcom/bugsnag/android/SessionTracker;->isInForeground()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "inForeground"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Error;->setAppData(Ljava/util/Map;)V

    .line 1058
    iget-object v0, p0, Lcom/bugsnag/android/Client;->deviceData:Lcom/bugsnag/android/DeviceData;

    invoke-virtual {v0}, Lcom/bugsnag/android/DeviceData;->getDeviceDataSummary()Ljava/util/Map;

    move-result-object v0

    .line 1059
    iget-object v1, p0, Lcom/bugsnag/android/Client;->deviceData:Lcom/bugsnag/android/DeviceData;

    invoke-virtual {v1}, Lcom/bugsnag/android/DeviceData;->calculateFreeDisk()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "freeDisk"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Error;->setDeviceData(Ljava/util/Map;)V

    .line 1062
    invoke-virtual {p1}, Lcom/bugsnag/android/Error;->getMetaData()Lcom/bugsnag/android/MetaData;

    move-result-object v0

    .line 1063
    invoke-static {}, Lcom/bugsnag/android/Notifier;->getInstance()Lcom/bugsnag/android/Notifier;

    move-result-object v1

    .line 1064
    invoke-virtual {v1}, Lcom/bugsnag/android/Notifier;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BugsnagDiagnostics"

    const-string v4, "notifierName"

    invoke-virtual {v0, v3, v4, v2}, Lcom/bugsnag/android/MetaData;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1065
    invoke-virtual {v1}, Lcom/bugsnag/android/Notifier;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifierVersion"

    invoke-virtual {v0, v3, v2, v1}, Lcom/bugsnag/android/MetaData;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1066
    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v1}, Lcom/bugsnag/android/Configuration;->getApiKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apiKey"

    invoke-virtual {v0, v3, v2, v1}, Lcom/bugsnag/android/MetaData;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1068
    iget-object v1, p0, Lcom/bugsnag/android/Client;->appData:Lcom/bugsnag/android/AppData;

    invoke-virtual {v1}, Lcom/bugsnag/android/AppData;->getAppData()Ljava/util/Map;

    move-result-object v1

    const-string v2, "packageName"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1069
    invoke-virtual {v0, v3, v2, v1}, Lcom/bugsnag/android/MetaData;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1071
    new-instance v0, Lcom/bugsnag/android/Report;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/Report;-><init>(Ljava/lang/String;Lcom/bugsnag/android/Error;)V

    .line 1073
    :try_start_0
    new-instance p1, Lcom/bugsnag/android/Client$6;

    invoke-direct {p1, p0, v0}, Lcom/bugsnag/android/Client$6;-><init>(Lcom/bugsnag/android/Client;Lcom/bugsnag/android/Report;)V

    invoke-static {p1}, Lcom/bugsnag/android/Async;->run(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final resumeSession()Z
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    invoke-virtual {v0}, Lcom/bugsnag/android/SessionTracker;->resumeSession()Z

    move-result v0

    return v0
.end method

.method sendNativeSetupNotification()V
    .locals 3

    .line 347
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->setChanged()V

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v1, Lcom/bugsnag/android/NativeInterface$Message;

    sget-object v2, Lcom/bugsnag/android/NativeInterface$MessageType;->INSTALL:Lcom/bugsnag/android/NativeInterface$MessageType;

    invoke-direct {v1, v2, v0}, Lcom/bugsnag/android/NativeInterface$Message;-><init>(Lcom/bugsnag/android/NativeInterface$MessageType;Ljava/lang/Object;)V

    invoke-super {p0, v1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 353
    :try_start_0
    new-instance v0, Lcom/bugsnag/android/Client$5;

    invoke-direct {v0, p0}, Lcom/bugsnag/android/Client$5;-><init>(Lcom/bugsnag/android/Client;)V

    invoke-static {v0}, Lcom/bugsnag/android/Async;->run(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to enqueue native reports, will retry next launch: "

    .line 360
    invoke-static {v1, v0}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Configuration;->setAppVersion(Ljava/lang/String;)V

    return-void
.end method

.method public setAutoCaptureSessions(Z)V
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Configuration;->setAutoCaptureSessions(Z)V

    if-eqz p1, :cond_0

    .line 611
    iget-object p1, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    invoke-virtual {p1}, Lcom/bugsnag/android/SessionTracker;->onAutoCaptureEnabled()V

    :cond_0
    return-void
.end method

.method setBinaryArch(Ljava/lang/String;)V
    .locals 1

    .line 1630
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->getAppData()Lcom/bugsnag/android/AppData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/AppData;->setBinaryArch(Ljava/lang/String;)V

    return-void
.end method

.method public setBuildUUID(Ljava/lang/String;)V
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Configuration;->setBuildUUID(Ljava/lang/String;)V

    return-void
.end method

.method public setContext(Ljava/lang/String;)V
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Configuration;->setContext(Ljava/lang/String;)V

    return-void
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Configuration;->setEndpoint(Ljava/lang/String;)V

    return-void
.end method

.method setErrorReportApiClient(Lcom/bugsnag/android/ErrorReportApiClient;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 740
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->getAndSetDeliveryCompat()Lcom/bugsnag/android/DeliveryCompat;

    move-result-object v0

    .line 741
    iput-object p1, v0, Lcom/bugsnag/android/DeliveryCompat;->errorReportApiClient:Lcom/bugsnag/android/ErrorReportApiClient;

    return-void

    .line 738
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ErrorReportApiClient cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs setFilters([Ljava/lang/String;)V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Configuration;->setFilters([Ljava/lang/String;)V

    return-void
.end method

.method public varargs setIgnoreClasses([Ljava/lang/String;)V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Configuration;->setIgnoreClasses([Ljava/lang/String;)V

    return-void
.end method

.method public setLoggingEnabled(Z)V
    .locals 0

    .line 1608
    invoke-static {p1}, Lcom/bugsnag/android/Logger;->setEnabled(Z)V

    return-void
.end method

.method public setMaxBreadcrumbs(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1407
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Configuration;->setMaxBreadcrumbs(I)V

    return-void
.end method

.method public setMetaData(Lcom/bugsnag/android/MetaData;)V
    .locals 1

    .line 1366
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Configuration;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    return-void
.end method

.method public varargs setNotifyReleaseStages([Ljava/lang/String;)V
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Configuration;->setNotifyReleaseStages([Ljava/lang/String;)V

    return-void
.end method

.method public varargs setProjectPackages([Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 572
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Configuration;->setProjectPackages([Ljava/lang/String;)V

    return-void
.end method

.method public setReleaseStage(Ljava/lang/String;)V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Configuration;->setReleaseStage(Ljava/lang/String;)V

    const-string v0, "production"

    .line 585
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/bugsnag/android/Logger;->setEnabled(Z)V

    return-void
.end method

.method public setSendThreads(Z)V
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Configuration;->setSendThreads(Z)V

    return-void
.end method

.method setSessionTrackingApiClient(Lcom/bugsnag/android/SessionTrackingApiClient;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->getAndSetDeliveryCompat()Lcom/bugsnag/android/DeliveryCompat;

    move-result-object v0

    .line 751
    iput-object p1, v0, Lcom/bugsnag/android/DeliveryCompat;->sessionTrackingApiClient:Lcom/bugsnag/android/SessionTrackingApiClient;

    return-void

    .line 748
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SessionTrackingApiClient cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 628
    invoke-virtual {p0, p1}, Lcom/bugsnag/android/Client;->setUserId(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p0, p2}, Lcom/bugsnag/android/Client;->setUserEmail(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0, p3}, Lcom/bugsnag/android/Client;->setUserName(Ljava/lang/String;)V

    return-void
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setEmail(Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getPersistUserBetweenSessions()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "user.email"

    .line 704
    invoke-direct {p0, v0, p1}, Lcom/bugsnag/android/Client;->storeInSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setId(Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getPersistUserBetweenSessions()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "user.id"

    .line 690
    invoke-direct {p0, v0, p1}, Lcom/bugsnag/android/Client;->storeInSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setName(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getPersistUserBetweenSessions()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "user.name"

    .line 718
    invoke-direct {p0, v0, p1}, Lcom/bugsnag/android/Client;->storeInSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startFirstSession(Landroid/app/Activity;)V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/SessionTracker;->startFirstSession(Landroid/app/Activity;)V

    return-void
.end method

.method public startSession()V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/SessionTracker;->startSession(Z)Lcom/bugsnag/android/Session;

    return-void
.end method

.method public final stopSession()V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    invoke-virtual {v0}, Lcom/bugsnag/android/SessionTracker;->stopSession()V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 372
    instance-of p1, p2, Lcom/bugsnag/android/NativeInterface$Message;

    if-eqz p1, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->setChanged()V

    .line 374
    invoke-super {p0, p2}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
