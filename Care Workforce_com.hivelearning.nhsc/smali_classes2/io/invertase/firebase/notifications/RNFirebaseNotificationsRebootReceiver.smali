.class public Lio/invertase/firebase/notifications/RNFirebaseNotificationsRebootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RNFirebaseNotificationsRebootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p2, "RNFNotifRebootReceiver"

    const-string v0, "Received reboot event"

    .line 15
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance p2, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    invoke-direct {p2, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->rescheduleNotifications()V

    return-void
.end method
