.class Lio/invertase/firebase/notifications/RNFirebaseNotifications$ScheduledNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RNFirebaseNotifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/invertase/firebase/notifications/RNFirebaseNotifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScheduledNotificationReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/notifications/RNFirebaseNotifications;


# direct methods
.method private constructor <init>(Lio/invertase/firebase/notifications/RNFirebaseNotifications;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications$ScheduledNotificationReceiver;->this$0:Lio/invertase/firebase/notifications/RNFirebaseNotifications;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/invertase/firebase/notifications/RNFirebaseNotifications;Lio/invertase/firebase/notifications/RNFirebaseNotifications$1;)V
    .locals 0

    .line 455
    invoke-direct {p0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotifications$ScheduledNotificationReceiver;-><init>(Lio/invertase/firebase/notifications/RNFirebaseNotifications;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 458
    iget-object p1, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications$ScheduledNotificationReceiver;->this$0:Lio/invertase/firebase/notifications/RNFirebaseNotifications;

    invoke-static {p1}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->access$500(Lio/invertase/firebase/notifications/RNFirebaseNotifications;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "RNFirebaseNotifications"

    const-string v0, "Received new scheduled notification"

    .line 459
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "notification"

    .line 461
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 462
    iget-object p2, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications$ScheduledNotificationReceiver;->this$0:Lio/invertase/firebase/notifications/RNFirebaseNotifications;

    invoke-static {p2, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->access$600(Lio/invertase/firebase/notifications/RNFirebaseNotifications;Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 464
    iget-object p2, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications$ScheduledNotificationReceiver;->this$0:Lio/invertase/firebase/notifications/RNFirebaseNotifications;

    .line 465
    invoke-static {p2}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->access$700(Lio/invertase/firebase/notifications/RNFirebaseNotifications;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p2

    const-string v0, "notifications_notification_received"

    .line 464
    invoke-static {p2, v0, p1}, Lio/invertase/firebase/Utils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
