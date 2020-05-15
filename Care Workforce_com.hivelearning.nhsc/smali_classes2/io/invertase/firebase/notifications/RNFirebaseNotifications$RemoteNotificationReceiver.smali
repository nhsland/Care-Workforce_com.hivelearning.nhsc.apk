.class Lio/invertase/firebase/notifications/RNFirebaseNotifications$RemoteNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RNFirebaseNotifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/invertase/firebase/notifications/RNFirebaseNotifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteNotificationReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/notifications/RNFirebaseNotifications;


# direct methods
.method private constructor <init>(Lio/invertase/firebase/notifications/RNFirebaseNotifications;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications$RemoteNotificationReceiver;->this$0:Lio/invertase/firebase/notifications/RNFirebaseNotifications;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/invertase/firebase/notifications/RNFirebaseNotifications;Lio/invertase/firebase/notifications/RNFirebaseNotifications$1;)V
    .locals 0

    .line 437
    invoke-direct {p0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotifications$RemoteNotificationReceiver;-><init>(Lio/invertase/firebase/notifications/RNFirebaseNotifications;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 440
    iget-object p1, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications$RemoteNotificationReceiver;->this$0:Lio/invertase/firebase/notifications/RNFirebaseNotifications;

    invoke-static {p1}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->access$200(Lio/invertase/firebase/notifications/RNFirebaseNotifications;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "RNFirebaseNotifications"

    const-string v0, "Received new remote notification"

    .line 441
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "notification"

    .line 443
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/messaging/RemoteMessage;

    .line 444
    iget-object p2, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications$RemoteNotificationReceiver;->this$0:Lio/invertase/firebase/notifications/RNFirebaseNotifications;

    invoke-static {p2, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->access$300(Lio/invertase/firebase/notifications/RNFirebaseNotifications;Lcom/google/firebase/messaging/RemoteMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 446
    iget-object p2, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications$RemoteNotificationReceiver;->this$0:Lio/invertase/firebase/notifications/RNFirebaseNotifications;

    .line 447
    invoke-static {p2}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->access$400(Lio/invertase/firebase/notifications/RNFirebaseNotifications;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p2

    const-string v0, "notifications_notification_received"

    .line 446
    invoke-static {p2, v0, p1}, Lio/invertase/firebase/Utils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
