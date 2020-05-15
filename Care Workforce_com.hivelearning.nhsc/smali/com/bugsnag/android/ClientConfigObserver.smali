.class public final Lcom/bugsnag/android/ClientConfigObserver;
.super Ljava/lang/Object;
.source "ClientConfigObserver.kt"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u001c\u0010\t\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/bugsnag/android/ClientConfigObserver;",
        "Ljava/util/Observer;",
        "client",
        "Lcom/bugsnag/android/Client;",
        "config",
        "Lcom/bugsnag/android/Configuration;",
        "(Lcom/bugsnag/android/Client;Lcom/bugsnag/android/Configuration;)V",
        "handleNotifyReleaseStages",
        "",
        "update",
        "o",
        "Ljava/util/Observable;",
        "arg",
        "",
        "bugsnag-android-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final client:Lcom/bugsnag/android/Client;

.field private final config:Lcom/bugsnag/android/Configuration;


# direct methods
.method public constructor <init>(Lcom/bugsnag/android/Client;Lcom/bugsnag/android/Configuration;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bugsnag/android/ClientConfigObserver;->client:Lcom/bugsnag/android/Client;

    iput-object p2, p0, Lcom/bugsnag/android/ClientConfigObserver;->config:Lcom/bugsnag/android/Configuration;

    return-void
.end method

.method private final handleNotifyReleaseStages()V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/bugsnag/android/ClientConfigObserver;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getReleaseStage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/Configuration;->shouldNotifyForReleaseStage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/bugsnag/android/ClientConfigObserver;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getDetectAnrs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/bugsnag/android/ClientConfigObserver;->client:Lcom/bugsnag/android/Client;

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->enableAnrReporting()V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/bugsnag/android/ClientConfigObserver;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getDetectNdkCrashes()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/bugsnag/android/ClientConfigObserver;->client:Lcom/bugsnag/android/Client;

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->enableNdkCrashReporting()V

    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/bugsnag/android/ClientConfigObserver;->client:Lcom/bugsnag/android/Client;

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->disableAnrReporting()V

    .line 33
    iget-object v0, p0, Lcom/bugsnag/android/ClientConfigObserver;->client:Lcom/bugsnag/android/Client;

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->disableNdkCrashReporting()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 15
    check-cast p2, Lcom/bugsnag/android/NativeInterface$Message;

    .line 18
    iget-object p1, p2, Lcom/bugsnag/android/NativeInterface$Message;->type:Lcom/bugsnag/android/NativeInterface$MessageType;

    sget-object v0, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_NOTIFY_RELEASE_STAGES:Lcom/bugsnag/android/NativeInterface$MessageType;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/bugsnag/android/ClientConfigObserver;->handleNotifyReleaseStages()V

    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p2, Lcom/bugsnag/android/NativeInterface$Message;->type:Lcom/bugsnag/android/NativeInterface$MessageType;

    sget-object p2, Lcom/bugsnag/android/NativeInterface$MessageType;->UPDATE_RELEASE_STAGE:Lcom/bugsnag/android/NativeInterface$MessageType;

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lcom/bugsnag/android/ClientConfigObserver;->handleNotifyReleaseStages()V

    :cond_1
    :goto_0
    return-void

    .line 15
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.bugsnag.android.NativeInterface.Message"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
