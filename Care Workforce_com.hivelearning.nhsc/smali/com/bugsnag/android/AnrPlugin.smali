.class public final Lcom/bugsnag/android/AnrPlugin;
.super Ljava/lang/Object;
.source "AnrPlugin.kt"

# interfaces
.implements Lcom/bugsnag/android/BugsnagPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bugsnag/android/AnrPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0005\u00a2\u0006\u0002\u0010\u0002J\t\u0010\r\u001a\u00020\u000eH\u0082 J\u0011\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0008H\u0082 J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0012\u001a\u00020\u000eH\u0002J\u0008\u0010\u0013\u001a\u00020\u000eH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u00020\u0008X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/bugsnag/android/AnrPlugin;",
        "Lcom/bugsnag/android/BugsnagPlugin;",
        "()V",
        "client",
        "Lcom/bugsnag/android/Client;",
        "collector",
        "Lcom/bugsnag/android/AnrDetailsCollector;",
        "loaded",
        "",
        "getLoaded",
        "()Z",
        "setLoaded",
        "(Z)V",
        "disableAnrReporting",
        "",
        "enableAnrReporting",
        "callPreviousSigquitHandler",
        "loadPlugin",
        "notifyAnrDetected",
        "unloadPlugin",
        "Companion",
        "bugsnag-plugin-android-anr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bugsnag/android/AnrPlugin$Companion;


# instance fields
.field private client:Lcom/bugsnag/android/Client;

.field private final collector:Lcom/bugsnag/android/AnrDetailsCollector;

.field private loaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bugsnag/android/AnrPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bugsnag/android/AnrPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bugsnag/android/AnrPlugin;->Companion:Lcom/bugsnag/android/AnrPlugin$Companion;

    const-string v0, "bugsnag-plugin-android-anr"

    .line 10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/bugsnag/android/AnrDetailsCollector;

    invoke-direct {v0}, Lcom/bugsnag/android/AnrDetailsCollector;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/AnrPlugin;->collector:Lcom/bugsnag/android/AnrDetailsCollector;

    return-void
.end method

.method public static final synthetic access$enableAnrReporting(Lcom/bugsnag/android/AnrPlugin;Z)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/bugsnag/android/AnrPlugin;->enableAnrReporting(Z)V

    return-void
.end method

.method public static final synthetic access$getClient$p(Lcom/bugsnag/android/AnrPlugin;)Lcom/bugsnag/android/Client;
    .locals 1

    .line 6
    iget-object p0, p0, Lcom/bugsnag/android/AnrPlugin;->client:Lcom/bugsnag/android/Client;

    if-nez p0, :cond_0

    const-string v0, "client"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setClient$p(Lcom/bugsnag/android/AnrPlugin;Lcom/bugsnag/android/Client;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bugsnag/android/AnrPlugin;->client:Lcom/bugsnag/android/Client;

    return-void
.end method

.method private final native disableAnrReporting()V
.end method

.method private final native enableAnrReporting(Z)V
.end method

.method private final notifyAnrDetected()V
    .locals 9

    .line 38
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Looper.getMainLooper()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    .line 42
    new-instance v0, Lcom/bugsnag/android/BugsnagException;

    const-string v1, "thread"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const-string v2, "Application did not respond to UI input"

    const-string v3, "ANR"

    invoke-direct {v0, v3, v2, v1}, Lcom/bugsnag/android/BugsnagException;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 43
    new-instance v1, Lcom/bugsnag/android/Error$Builder;

    iget-object v2, p0, Lcom/bugsnag/android/AnrPlugin;->client:Lcom/bugsnag/android/Client;

    const-string v8, "client"

    if-nez v2, :cond_0

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v3, v2, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/bugsnag/android/AnrPlugin;->client:Lcom/bugsnag/android/Client;

    if-nez v0, :cond_1

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v5, v0, Lcom/bugsnag/android/Client;->sessionTracker:Lcom/bugsnag/android/SessionTracker;

    const/4 v7, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/bugsnag/android/Error$Builder;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;Lcom/bugsnag/android/SessionTracker;Ljava/lang/Thread;Z)V

    .line 44
    sget-object v0, Lcom/bugsnag/android/Severity;->ERROR:Lcom/bugsnag/android/Severity;

    invoke-virtual {v1, v0}, Lcom/bugsnag/android/Error$Builder;->severity(Lcom/bugsnag/android/Severity;)Lcom/bugsnag/android/Error$Builder;

    move-result-object v0

    const-string v1, "anrError"

    .line 45
    invoke-virtual {v0, v1}, Lcom/bugsnag/android/Error$Builder;->severityReasonType(Ljava/lang/String;)Lcom/bugsnag/android/Error$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/bugsnag/android/Error$Builder;->build()Lcom/bugsnag/android/Error;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/bugsnag/android/AnrPlugin;->collector:Lcom/bugsnag/android/AnrDetailsCollector;

    iget-object v2, p0, Lcom/bugsnag/android/AnrPlugin;->client:Lcom/bugsnag/android/Client;

    if-nez v2, :cond_2

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    const-string v3, "error"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Lcom/bugsnag/android/AnrDetailsCollector;->collectAnrErrorDetails$bugsnag_plugin_android_anr_release(Lcom/bugsnag/android/Client;Lcom/bugsnag/android/Error;)V

    return-void
.end method


# virtual methods
.method public getLoaded()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/bugsnag/android/AnrPlugin;->loaded:Z

    return v0
.end method

.method public loadPlugin(Lcom/bugsnag/android/Client;)V
    .locals 2

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bugsnag/android/AnrPlugin$loadPlugin$1;

    invoke-direct {v1, p0, p1}, Lcom/bugsnag/android/AnrPlugin$loadPlugin$1;-><init>(Lcom/bugsnag/android/AnrPlugin;Lcom/bugsnag/android/Client;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setLoaded(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/bugsnag/android/AnrPlugin;->loaded:Z

    return-void
.end method

.method public unloadPlugin()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/bugsnag/android/AnrPlugin;->disableAnrReporting()V

    return-void
.end method
