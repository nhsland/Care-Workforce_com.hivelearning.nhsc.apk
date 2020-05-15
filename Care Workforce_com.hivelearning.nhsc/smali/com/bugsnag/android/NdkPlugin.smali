.class public final Lcom/bugsnag/android/NdkPlugin;
.super Ljava/lang/Object;
.source "NdkPlugin.kt"

# interfaces
.implements Lcom/bugsnag/android/BugsnagPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bugsnag/android/NdkPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002J\t\u0010\u000b\u001a\u00020\u000cH\u0082 J\t\u0010\r\u001a\u00020\u000cH\u0082 J\u0010\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u000cH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/bugsnag/android/NdkPlugin;",
        "Lcom/bugsnag/android/BugsnagPlugin;",
        "()V",
        "loaded",
        "",
        "getLoaded",
        "()Z",
        "setLoaded",
        "(Z)V",
        "nativeBridge",
        "Lcom/bugsnag/android/ndk/NativeBridge;",
        "disableCrashReporting",
        "",
        "enableCrashReporting",
        "loadPlugin",
        "client",
        "Lcom/bugsnag/android/Client;",
        "unloadPlugin",
        "Companion",
        "bugsnag-plugin-android-ndk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bugsnag/android/NdkPlugin$Companion;


# instance fields
.field private loaded:Z

.field private nativeBridge:Lcom/bugsnag/android/ndk/NativeBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bugsnag/android/NdkPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bugsnag/android/NdkPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bugsnag/android/NdkPlugin;->Companion:Lcom/bugsnag/android/NdkPlugin$Companion;

    const-string v0, "bugsnag-ndk"

    .line 9
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final native disableCrashReporting()V
.end method

.method private final native enableCrashReporting()V
.end method


# virtual methods
.method public getLoaded()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/bugsnag/android/NdkPlugin;->loaded:Z

    return v0
.end method

.method public loadPlugin(Lcom/bugsnag/android/Client;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/bugsnag/android/NdkPlugin;->nativeBridge:Lcom/bugsnag/android/ndk/NativeBridge;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/bugsnag/android/ndk/NativeBridge;

    invoke-direct {v0}, Lcom/bugsnag/android/ndk/NativeBridge;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/NdkPlugin;->nativeBridge:Lcom/bugsnag/android/ndk/NativeBridge;

    .line 23
    check-cast v0, Ljava/util/Observer;

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Client;->addObserver(Ljava/util/Observer;)V

    .line 24
    invoke-virtual {p1}, Lcom/bugsnag/android/Client;->sendNativeSetupNotification()V

    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/bugsnag/android/NdkPlugin;->enableCrashReporting()V

    const-string p1, "Initialised NDK Plugin"

    .line 27
    invoke-static {p1}, Lcom/bugsnag/android/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public setLoaded(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/bugsnag/android/NdkPlugin;->loaded:Z

    return-void
.end method

.method public unloadPlugin()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/bugsnag/android/NdkPlugin;->disableCrashReporting()V

    return-void
.end method
