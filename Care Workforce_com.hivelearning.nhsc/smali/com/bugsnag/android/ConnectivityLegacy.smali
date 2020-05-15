.class public final Lcom/bugsnag/android/ConnectivityLegacy;
.super Ljava/lang/Object;
.source "ConnectivityCompat.kt"

# interfaces
.implements Lcom/bugsnag/android/Connectivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bugsnag/android/ConnectivityLegacy$ConnectivityChangeReceiver;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0016B@\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012)\u0010\u0006\u001a%\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0007j\u0004\u0018\u0001`\r\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010\u0011\u001a\u00020\u0008H\u0016J\u0008\u0010\u0012\u001a\u00020\u000cH\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u000cH\u0016R\u0012\u0010\u000f\u001a\u00060\u0010R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/bugsnag/android/ConnectivityLegacy;",
        "Lcom/bugsnag/android/Connectivity;",
        "context",
        "Landroid/content/Context;",
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
        "(Landroid/content/Context;Landroid/net/ConnectivityManager;Lkotlin/jvm/functions/Function1;)V",
        "changeReceiver",
        "Lcom/bugsnag/android/ConnectivityLegacy$ConnectivityChangeReceiver;",
        "hasNetworkConnection",
        "registerForNetworkChanges",
        "retrieveNetworkAccessState",
        "",
        "unregisterForNetworkChanges",
        "ConnectivityChangeReceiver",
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
.field private final changeReceiver:Lcom/bugsnag/android/ConnectivityLegacy$ConnectivityChangeReceiver;

.field private final cm:Landroid/net/ConnectivityManager;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/ConnectivityManager;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bugsnag/android/ConnectivityLegacy;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/bugsnag/android/ConnectivityLegacy;->cm:Landroid/net/ConnectivityManager;

    .line 60
    new-instance p1, Lcom/bugsnag/android/ConnectivityLegacy$ConnectivityChangeReceiver;

    invoke-direct {p1, p0, p3}, Lcom/bugsnag/android/ConnectivityLegacy$ConnectivityChangeReceiver;-><init>(Lcom/bugsnag/android/ConnectivityLegacy;Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lcom/bugsnag/android/ConnectivityLegacy;->changeReceiver:Lcom/bugsnag/android/ConnectivityLegacy$ConnectivityChangeReceiver;

    return-void
.end method


# virtual methods
.method public hasNetworkConnection()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/bugsnag/android/ConnectivityLegacy;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerForNetworkChanges()V
    .locals 3

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/bugsnag/android/ConnectivityLegacy;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/bugsnag/android/ConnectivityLegacy;->changeReceiver:Lcom/bugsnag/android/ConnectivityLegacy$ConnectivityChangeReceiver;

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public retrieveNetworkAccessState()Ljava/lang/String;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/bugsnag/android/ConnectivityLegacy;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 76
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_2

    const-string v0, "wifi"

    goto :goto_1

    :cond_2
    const/16 v1, 0x9

    .line 77
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    const-string v0, "ethernet"

    goto :goto_1

    :cond_3
    const-string v0, "cellular"

    :goto_1
    return-object v0
.end method

.method public unregisterForNetworkChanges()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/bugsnag/android/ConnectivityLegacy;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/bugsnag/android/ConnectivityLegacy;->changeReceiver:Lcom/bugsnag/android/ConnectivityLegacy$ConnectivityChangeReceiver;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
