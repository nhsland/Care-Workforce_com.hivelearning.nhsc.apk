.class public final Lcom/bugsnag/android/ConnectivityApi24;
.super Ljava/lang/Object;
.source "ConnectivityCompat.kt"

# interfaces
.implements Lcom/bugsnag/android/Connectivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bugsnag/android/ConnectivityApi24$ConnectivityTrackerCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u0001:\u0001\u0016B8\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012)\u0010\u0004\u001a%\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u0011\u001a\u00020\u0006H\u0016J\u0008\u0010\u0012\u001a\u00020\nH\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\nH\u0016R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00060\u0010R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/bugsnag/android/ConnectivityApi24;",
        "Lcom/bugsnag/android/Connectivity;",
        "cm",
        "Landroid/net/ConnectivityManager;",
        "callback",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "connected",
        "",
        "Lcom/bugsnag/android/NetworkChangeCallback;",
        "(Landroid/net/ConnectivityManager;Lkotlin/jvm/functions/Function1;)V",
        "activeNetwork",
        "Landroid/net/Network;",
        "networkCallback",
        "Lcom/bugsnag/android/ConnectivityApi24$ConnectivityTrackerCallback;",
        "hasNetworkConnection",
        "registerForNetworkChanges",
        "retrieveNetworkAccessState",
        "",
        "unregisterForNetworkChanges",
        "ConnectivityTrackerCallback",
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
.field public volatile activeNetwork:Landroid/net/Network;

.field private final cm:Landroid/net/ConnectivityManager;

.field private final networkCallback:Lcom/bugsnag/android/ConnectivityApi24$ConnectivityTrackerCallback;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/ConnectivityManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bugsnag/android/ConnectivityApi24;->cm:Landroid/net/ConnectivityManager;

    .line 99
    new-instance p1, Lcom/bugsnag/android/ConnectivityApi24$ConnectivityTrackerCallback;

    invoke-direct {p1, p0, p2}, Lcom/bugsnag/android/ConnectivityApi24$ConnectivityTrackerCallback;-><init>(Lcom/bugsnag/android/ConnectivityApi24;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lcom/bugsnag/android/ConnectivityApi24;->networkCallback:Lcom/bugsnag/android/ConnectivityApi24$ConnectivityTrackerCallback;

    return-void
.end method


# virtual methods
.method public hasNetworkConnection()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/bugsnag/android/ConnectivityApi24;->activeNetwork:Landroid/net/Network;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerForNetworkChanges()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/bugsnag/android/ConnectivityApi24;->cm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/bugsnag/android/ConnectivityApi24;->networkCallback:Lcom/bugsnag/android/ConnectivityApi24$ConnectivityTrackerCallback;

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public retrieveNetworkAccessState()Ljava/lang/String;
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/bugsnag/android/ConnectivityApi24;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/bugsnag/android/ConnectivityApi24;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "none"

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 111
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "wifi"

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    .line 112
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "ethernet"

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "cellular"

    goto :goto_1

    :cond_4
    const-string v0, "unknown"

    :goto_1
    return-object v0
.end method

.method public unregisterForNetworkChanges()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/bugsnag/android/ConnectivityApi24;->cm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/bugsnag/android/ConnectivityApi24;->networkCallback:Lcom/bugsnag/android/ConnectivityApi24$ConnectivityTrackerCallback;

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
