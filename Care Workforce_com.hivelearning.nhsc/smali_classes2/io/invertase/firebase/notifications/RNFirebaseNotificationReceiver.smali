.class public Lio/invertase/firebase/notifications/RNFirebaseNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RNFirebaseNotificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 13
    new-instance v0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    invoke-direct {v0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->displayScheduledNotification(Landroid/os/Bundle;)V

    return-void
.end method
