.class public Lcom/bugsnag/BugsnagReactNative;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "BugsnagReactNative.java"


# static fields
.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field private bugsnagAndroidVersion:Ljava/lang/String;

.field private libraryVersion:Ljava/lang/String;

.field private reactContext:Lcom/facebook/react/bridge/ReactContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "bugsnag-react-native"

    .line 33
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/bugsnag/BugsnagReactNative;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 85
    iput-object p1, p0, Lcom/bugsnag/BugsnagReactNative;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/bugsnag/BugsnagReactNative;->libraryVersion:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/bugsnag/BugsnagReactNative;->bugsnagAndroidVersion:Ljava/lang/String;

    return-void
.end method

.method private configureRuntimeOptions(Lcom/bugsnag/android/Client;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.facebook.react.common.JavascriptException"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 262
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Client;->setIgnoreClasses([Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Lcom/bugsnag/android/Client;->getConfig()Lcom/bugsnag/android/Configuration;

    move-result-object v0

    const-string v1, "appVersion"

    .line 264
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 267
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/Client;->setAppVersion(Ljava/lang/String;)V

    :cond_0
    const-string v1, "endpoint"

    .line 274
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 275
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    const-string v3, "sessionsEndpoint"

    .line 277
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 278
    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    if-eqz v1, :cond_3

    .line 281
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 282
    invoke-virtual {v0, v1, v4}, Lcom/bugsnag/android/Configuration;->setEndpoints(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    .line 283
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 284
    sget-object v1, Lcom/bugsnag/BugsnagReactNative;->logger:Ljava/util/logging/Logger;

    const-string v3, "The session tracking endpoint should not be set without the error reporting endpoint."

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_4
    :goto_1
    const-string v1, "releaseStage"

    .line 289
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 290
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 291
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 292
    invoke-virtual {p1, v1}, Lcom/bugsnag/android/Client;->setReleaseStage(Ljava/lang/String;)V

    :cond_5
    const-string v1, "autoNotify"

    .line 296
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 297
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 298
    invoke-virtual {p1}, Lcom/bugsnag/android/Client;->enableExceptionHandler()V

    goto :goto_2

    .line 300
    :cond_6
    invoke-virtual {p1}, Lcom/bugsnag/android/Client;->disableExceptionHandler()V

    :cond_7
    :goto_2
    const-string v1, "codeBundleId"

    .line 304
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 305
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 306
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    const-string v4, "app"

    .line 307
    invoke-virtual {p1, v4, v1, v3}, Lcom/bugsnag/android/Client;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    const-string v1, "notifyReleaseStages"

    .line 311
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 312
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 313
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 314
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 315
    :goto_3
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_9

    .line 316
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 318
    :cond_9
    invoke-virtual {p1, v3}, Lcom/bugsnag/android/Client;->setNotifyReleaseStages([Ljava/lang/String;)V

    :cond_a
    const-string v1, "automaticallyCollectBreadcrumbs"

    .line 321
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 322
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 323
    invoke-virtual {v0, v1}, Lcom/bugsnag/android/Configuration;->setAutomaticallyCollectBreadcrumbs(Z)V

    :cond_b
    const-string v1, "autoCaptureSessions"

    .line 327
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 328
    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 329
    invoke-virtual {v0, p2}, Lcom/bugsnag/android/Configuration;->setAutoCaptureSessions(Z)V

    if-eqz p2, :cond_c

    .line 334
    invoke-virtual {p1}, Lcom/bugsnag/android/Client;->resumeSession()Z

    :cond_c
    return-void
.end method

.method private getClient(Ljava/lang/String;)Lcom/bugsnag/android/Client;
    .locals 1

    .line 241
    :try_start_0
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-eqz p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/bugsnag/BugsnagReactNative;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v0, p1}, Lcom/bugsnag/android/Bugsnag;->init(Landroid/content/Context;Ljava/lang/String;)Lcom/bugsnag/android/Client;

    move-result-object p1

    goto :goto_0

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/bugsnag/BugsnagReactNative;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-static {p1}, Lcom/bugsnag/android/Bugsnag;->init(Landroid/content/Context;)Lcom/bugsnag/android/Client;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static getPackage()Lcom/facebook/react/ReactPackage;
    .locals 1

    .line 36
    new-instance v0, Lcom/bugsnag/BugsnagPackage;

    invoke-direct {v0}, Lcom/bugsnag/BugsnagPackage;-><init>()V

    return-object v0
.end method

.method private parseBreadcrumbType(Ljava/lang/String;)Lcom/bugsnag/android/BreadcrumbType;
    .locals 5

    .line 253
    invoke-static {}, Lcom/bugsnag/android/BreadcrumbType;->values()[Lcom/bugsnag/android/BreadcrumbType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 254
    invoke-virtual {v3}, Lcom/bugsnag/android/BreadcrumbType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    :cond_1
    sget-object p1, Lcom/bugsnag/android/BreadcrumbType;->MANUAL:Lcom/bugsnag/android/BreadcrumbType;

    return-object p1
.end method

.method private readStringMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 214
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    .line 215
    :goto_0
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 216
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    const-string v4, "type"

    .line 218
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "boolean"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string v6, "map"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_2
    const-string v6, "string"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_3
    const-string v6, "number"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    :cond_0
    :goto_1
    const-string v4, "value"

    if-eqz v5, :cond_4

    if-eq v5, v9, :cond_3

    if-eq v5, v8, :cond_2

    if-eq v5, v7, :cond_1

    goto :goto_0

    .line 229
    :cond_1
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bugsnag/BugsnagReactNative;->readStringMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 226
    :cond_2
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 223
    :cond_3
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 220
    :cond_4
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_3
        -0x352a9fef -> :sswitch_2
        0x1a55c -> :sswitch_1
        0x3db6c28 -> :sswitch_0
    .end sparse-switch
.end method

.method public static start(Landroid/content/Context;)Lcom/bugsnag/android/Client;
    .locals 1

    .line 46
    invoke-static {p0}, Lcom/bugsnag/android/Bugsnag;->init(Landroid/content/Context;)Lcom/bugsnag/android/Client;

    move-result-object p0

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Lcom/bugsnag/android/Client;->setAutoCaptureSessions(Z)V

    return-object p0
.end method

.method public static startWithApiKey(Landroid/content/Context;Ljava/lang/String;)Lcom/bugsnag/android/Client;
    .locals 0

    .line 63
    invoke-static {p0, p1}, Lcom/bugsnag/android/Bugsnag;->init(Landroid/content/Context;Ljava/lang/String;)Lcom/bugsnag/android/Client;

    move-result-object p0

    const/4 p1, 0x0

    .line 64
    invoke-virtual {p0, p1}, Lcom/bugsnag/android/Client;->setAutoCaptureSessions(Z)V

    return-object p0
.end method

.method public static startWithConfiguration(Landroid/content/Context;Lcom/bugsnag/android/Configuration;)Lcom/bugsnag/android/Client;
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Configuration;->setAutoCaptureSessions(Z)V

    .line 77
    invoke-static {p0, p1}, Lcom/bugsnag/android/Bugsnag;->init(Landroid/content/Context;Lcom/bugsnag/android/Configuration;)Lcom/bugsnag/android/Client;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearUser()V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 206
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->clearUser()V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "BugsnagReactNative"

    return-object v0
.end method

.method public leaveBreadcrumb(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "name"

    .line 140
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    .line 142
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bugsnag/BugsnagReactNative;->parseBreadcrumbType(Ljava/lang/String;)Lcom/bugsnag/android/BreadcrumbType;

    move-result-object v1

    const-string v2, "metadata"

    .line 143
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bugsnag/BugsnagReactNative;->readStringMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object p1

    .line 141
    invoke-static {v0, v1, p1}, Lcom/bugsnag/android/Bugsnag;->leaveBreadcrumb(Ljava/lang/String;Lcom/bugsnag/android/BreadcrumbType;Ljava/util/Map;)V

    return-void
.end method

.method public notify(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 9
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "errorClass"

    .line 155
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    sget-object p1, Lcom/bugsnag/BugsnagReactNative;->logger:Ljava/util/logging/Logger;

    const-string p2, "Bugsnag could not notify: No error class"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "stacktrace"

    .line 159
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 160
    sget-object p1, Lcom/bugsnag/BugsnagReactNative;->logger:Ljava/util/logging/Logger;

    const-string p2, "Bugsnag could not notify: No stacktrace"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 163
    :cond_1
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "errorMessage"

    .line 164
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    sget-object v3, Lcom/bugsnag/BugsnagReactNative;->logger:Ljava/util/logging/Logger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v2, v4, v6

    const/4 v7, 0x2

    aput-object v1, v4, v7

    const-string v7, "Sending exception: %s - %s %s\n"

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 169
    new-instance v3, Lcom/bugsnag/android/JavaScriptException;

    invoke-direct {v3, v0, v2, v1}, Lcom/bugsnag/android/JavaScriptException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v0, Lcom/bugsnag/DiagnosticsCallback;

    iget-object v1, p0, Lcom/bugsnag/BugsnagReactNative;->libraryVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/bugsnag/BugsnagReactNative;->bugsnagAndroidVersion:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/bugsnag/DiagnosticsCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 177
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "severity"

    .line 178
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "severityReason"

    .line 179
    invoke-interface {p1, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 180
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "blocking"

    .line 182
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v5, 0x1

    .line 184
    :cond_2
    invoke-static {v3, v1, v5, v0}, Lcom/bugsnag/android/Bugsnag;->internalClientNotify(Ljava/lang/Throwable;Ljava/util/Map;ZLcom/bugsnag/android/Callback;)V

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    .line 187
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public resumeSession()V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 107
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->resumeSession()Z

    return-void
.end method

.method public setUser(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 5
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "id"

    .line 198
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const-string v1, "email"

    .line 199
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string v3, "name"

    .line 200
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    :cond_2
    invoke-static {v0, v1, v2}, Lcom/bugsnag/android/Bugsnag;->setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startSession()V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 97
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->startSession()V

    return-void
.end method

.method public startWithOptions(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "apiKey"

    .line 119
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 122
    :goto_0
    invoke-direct {p0, v0}, Lcom/bugsnag/BugsnagReactNative;->getClient(Ljava/lang/String;)Lcom/bugsnag/android/Client;

    move-result-object v0

    const-string v1, "version"

    .line 123
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bugsnag/BugsnagReactNative;->libraryVersion:Ljava/lang/String;

    .line 124
    invoke-static {}, Lcom/bugsnag/android/Notifier;->getInstance()Lcom/bugsnag/android/Notifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bugsnag/android/Notifier;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bugsnag/BugsnagReactNative;->bugsnagAndroidVersion:Ljava/lang/String;

    .line 125
    invoke-direct {p0, v0, p1}, Lcom/bugsnag/BugsnagReactNative;->configureRuntimeOptions(Lcom/bugsnag/android/Client;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 126
    invoke-static {v0}, Lcom/bugsnag/android/InternalHooks;->configureClient(Lcom/bugsnag/android/Client;)V

    .line 128
    sget-object p1, Lcom/bugsnag/BugsnagReactNative;->logger:Ljava/util/logging/Logger;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bugsnag/BugsnagReactNative;->libraryVersion:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bugsnag/BugsnagReactNative;->bugsnagAndroidVersion:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Initialized Bugsnag React Native %s/Android %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public stopSession()V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 102
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->stopSession()V

    return-void
.end method
