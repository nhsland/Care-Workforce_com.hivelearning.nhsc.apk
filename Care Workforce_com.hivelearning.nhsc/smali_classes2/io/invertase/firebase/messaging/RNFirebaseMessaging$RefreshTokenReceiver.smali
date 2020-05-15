.class Lio/invertase/firebase/messaging/RNFirebaseMessaging$RefreshTokenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RNFirebaseMessaging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/invertase/firebase/messaging/RNFirebaseMessaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshTokenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/messaging/RNFirebaseMessaging;


# direct methods
.method private constructor <init>(Lio/invertase/firebase/messaging/RNFirebaseMessaging;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lio/invertase/firebase/messaging/RNFirebaseMessaging$RefreshTokenReceiver;->this$0:Lio/invertase/firebase/messaging/RNFirebaseMessaging;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/invertase/firebase/messaging/RNFirebaseMessaging;Lio/invertase/firebase/messaging/RNFirebaseMessaging$1;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lio/invertase/firebase/messaging/RNFirebaseMessaging$RefreshTokenReceiver;-><init>(Lio/invertase/firebase/messaging/RNFirebaseMessaging;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 189
    iget-object p1, p0, Lio/invertase/firebase/messaging/RNFirebaseMessaging$RefreshTokenReceiver;->this$0:Lio/invertase/firebase/messaging/RNFirebaseMessaging;

    invoke-static {p1}, Lio/invertase/firebase/messaging/RNFirebaseMessaging;->access$400(Lio/invertase/firebase/messaging/RNFirebaseMessaging;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "RNFirebaseMessaging"

    const-string p2, "Received new messaging token."

    .line 190
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lio/invertase/firebase/messaging/RNFirebaseMessaging$RefreshTokenReceiver$1;

    invoke-direct {p2, p0}, Lio/invertase/firebase/messaging/RNFirebaseMessaging$RefreshTokenReceiver$1;-><init>(Lio/invertase/firebase/messaging/RNFirebaseMessaging$RefreshTokenReceiver;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 212
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
