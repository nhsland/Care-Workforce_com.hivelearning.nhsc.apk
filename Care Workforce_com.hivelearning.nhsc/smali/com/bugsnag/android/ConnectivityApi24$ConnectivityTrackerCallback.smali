.class final Lcom/bugsnag/android/ConnectivityApi24$ConnectivityTrackerCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConnectivityCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bugsnag/android/ConnectivityApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectivityTrackerCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B0\u0012)\u0010\u0002\u001a%\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0003j\u0004\u0018\u0001`\t\u00a2\u0006\u0002\u0010\nJ\u0012\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u0008H\u0016R1\u0010\u0002\u001a%\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0003j\u0004\u0018\u0001`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/bugsnag/android/ConnectivityApi24$ConnectivityTrackerCallback;",
        "Landroid/net/ConnectivityManager$NetworkCallback;",
        "cb",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "connected",
        "",
        "Lcom/bugsnag/android/NetworkChangeCallback;",
        "(Lcom/bugsnag/android/ConnectivityApi24;Lkotlin/jvm/functions/Function1;)V",
        "onAvailable",
        "network",
        "Landroid/net/Network;",
        "onUnavailable",
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
.field private final cb:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/bugsnag/android/ConnectivityApi24;


# direct methods
.method public constructor <init>(Lcom/bugsnag/android/ConnectivityApi24;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/bugsnag/android/ConnectivityApi24$ConnectivityTrackerCallback;->this$0:Lcom/bugsnag/android/ConnectivityApi24;

    .line 119
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    iput-object p2, p0, Lcom/bugsnag/android/ConnectivityApi24$ConnectivityTrackerCallback;->cb:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 127
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 128
    iget-object v0, p0, Lcom/bugsnag/android/ConnectivityApi24$ConnectivityTrackerCallback;->this$0:Lcom/bugsnag/android/ConnectivityApi24;

    iput-object p1, v0, Lcom/bugsnag/android/ConnectivityApi24;->activeNetwork:Landroid/net/Network;

    .line 129
    iget-object p1, p0, Lcom/bugsnag/android/ConnectivityApi24$ConnectivityTrackerCallback;->cb:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 121
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 122
    iget-object v0, p0, Lcom/bugsnag/android/ConnectivityApi24$ConnectivityTrackerCallback;->this$0:Lcom/bugsnag/android/ConnectivityApi24;

    const/4 v1, 0x0

    check-cast v1, Landroid/net/Network;

    iput-object v1, v0, Lcom/bugsnag/android/ConnectivityApi24;->activeNetwork:Landroid/net/Network;

    .line 123
    iget-object v0, p0, Lcom/bugsnag/android/ConnectivityApi24$ConnectivityTrackerCallback;->cb:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    :cond_0
    return-void
.end method
