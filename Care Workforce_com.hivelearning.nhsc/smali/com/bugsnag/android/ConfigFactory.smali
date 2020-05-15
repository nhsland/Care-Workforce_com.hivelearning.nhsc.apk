.class Lcom/bugsnag/android/ConfigFactory;
.super Ljava/lang/Object;
.source "ConfigFactory.java"


# static fields
.field private static final BUGSNAG_NAMESPACE:Ljava/lang/String; = "com.bugsnag.android"

.field private static final MF_API_KEY:Ljava/lang/String; = "com.bugsnag.android.API_KEY"

.field private static final MF_APP_VERSION:Ljava/lang/String; = "com.bugsnag.android.APP_VERSION"

.field private static final MF_AUTO_CAPTURE_SESSIONS:Ljava/lang/String; = "com.bugsnag.android.AUTO_CAPTURE_SESSIONS"

.field static final MF_BUILD_UUID:Ljava/lang/String; = "com.bugsnag.android.BUILD_UUID"

.field private static final MF_DETECT_ANRS:Ljava/lang/String; = "com.bugsnag.android.DETECT_ANRS"

.field private static final MF_DETECT_NDK_CRASHES:Ljava/lang/String; = "com.bugsnag.android.DETECT_NDK_CRASHES"

.field private static final MF_ENABLE_EXCEPTION_HANDLER:Ljava/lang/String; = "com.bugsnag.android.ENABLE_EXCEPTION_HANDLER"

.field private static final MF_ENDPOINT:Ljava/lang/String; = "com.bugsnag.android.ENDPOINT"

.field private static final MF_PERSIST_USER_BETWEEN_SESSIONS:Ljava/lang/String; = "com.bugsnag.android.PERSIST_USER_BETWEEN_SESSIONS"

.field private static final MF_RELEASE_STAGE:Ljava/lang/String; = "com.bugsnag.android.RELEASE_STAGE"

.field private static final MF_SEND_THREADS:Ljava/lang/String; = "com.bugsnag.android.SEND_THREADS"

.field private static final MF_SESSIONS_ENDPOINT:Ljava/lang/String; = "com.bugsnag.android.SESSIONS_ENDPOINT"

.field private static final MF_VERSION_CODE:Ljava/lang/String; = "com.bugsnag.android.VERSION_CODE"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createNewConfiguration(Landroid/content/Context;Ljava/lang/String;Z)Lcom/bugsnag/android/Configuration;
    .locals 4

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x80

    if-eqz v0, :cond_0

    .line 50
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 54
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.bugsnag.android.API_KEY"

    .line 55
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "Bugsnag is unable to read api key from manifest."

    .line 57
    invoke-static {v2}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 66
    new-instance v2, Lcom/bugsnag/android/Configuration;

    invoke-direct {v2, p1}, Lcom/bugsnag/android/Configuration;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2, p2}, Lcom/bugsnag/android/Configuration;->setEnableExceptionHandler(Z)V

    if-eqz v0, :cond_1

    .line 71
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 74
    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 75
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 76
    invoke-static {v2, p0}, Lcom/bugsnag/android/ConfigFactory;->populateConfigFromManifest(Lcom/bugsnag/android/Configuration;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p0, "Bugsnag is unable to read config from manifest."

    .line 78
    invoke-static {p0}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v2

    .line 62
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "You must provide a Bugsnag API key"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static populateConfigFromManifest(Lcom/bugsnag/android/Configuration;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "com.bugsnag.android.BUILD_UUID"

    .line 92
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bugsnag/android/Configuration;->setBuildUUID(Ljava/lang/String;)V

    const-string v0, "com.bugsnag.android.APP_VERSION"

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bugsnag/android/Configuration;->setAppVersion(Ljava/lang/String;)V

    const-string v0, "com.bugsnag.android.RELEASE_STAGE"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bugsnag/android/Configuration;->setReleaseStage(Ljava/lang/String;)V

    const-string v0, "com.bugsnag.android.VERSION_CODE"

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bugsnag/android/Configuration;->setVersionCode(Ljava/lang/Integer;)V

    :cond_0
    const-string v0, "com.bugsnag.android.ENDPOINT"

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.bugsnag.android.SESSIONS_ENDPOINT"

    .line 101
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/bugsnag/android/Configuration;->setEndpoints(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    const-string v1, "com.bugsnag.android.SEND_THREADS"

    .line 106
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bugsnag/android/Configuration;->setSendThreads(Z)V

    const/4 v1, 0x0

    const-string v2, "com.bugsnag.android.PERSIST_USER_BETWEEN_SESSIONS"

    .line 108
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 107
    invoke-virtual {p0, v1}, Lcom/bugsnag/android/Configuration;->setPersistUserBetweenSessions(Z)V

    const-string v1, "com.bugsnag.android.DETECT_NDK_CRASHES"

    .line 110
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bugsnag/android/Configuration;->setDetectNdkCrashes(Z)V

    :cond_2
    const-string v1, "com.bugsnag.android.DETECT_ANRS"

    .line 113
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bugsnag/android/Configuration;->setDetectAnrs(Z)V

    :cond_3
    const-string v1, "com.bugsnag.android.AUTO_CAPTURE_SESSIONS"

    .line 116
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bugsnag/android/Configuration;->setAutoCaptureSessions(Z)V

    :cond_4
    const-string v1, "com.bugsnag.android.ENABLE_EXCEPTION_HANDLER"

    .line 121
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 120
    invoke-virtual {p0, p1}, Lcom/bugsnag/android/Configuration;->setEnableExceptionHandler(Z)V

    return-void
.end method
