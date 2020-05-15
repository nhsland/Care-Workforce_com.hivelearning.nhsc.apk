.class public Lio/invertase/firebase/notifications/RNFirebaseNotifications;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNFirebaseNotifications.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/invertase/firebase/notifications/RNFirebaseNotifications$ScheduledNotificationReceiver;,
        Lio/invertase/firebase/notifications/RNFirebaseNotifications$RemoteNotificationReceiver;
    }
.end annotation


# static fields
.field private static final BADGE_FILE:Ljava/lang/String; = "BadgeCountFile"

.field private static final BADGE_KEY:Ljava/lang/String; = "BadgeCount"

.field private static final TAG:Ljava/lang/String; = "RNFirebaseNotifications"


# instance fields
.field private notificationManager:Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 4

    .line 48
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 49
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    .line 51
    new-instance v1, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    invoke-direct {v1, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    iput-object v1, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->notificationManager:Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    const-string v1, "BadgeCountFile"

    const/4 v2, 0x0

    .line 52
    invoke-virtual {p1, v1, v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 54
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    .line 57
    new-instance v1, Lio/invertase/firebase/notifications/RNFirebaseNotifications$RemoteNotificationReceiver;

    invoke-direct {v1, p0, v0}, Lio/invertase/firebase/notifications/RNFirebaseNotifications$RemoteNotificationReceiver;-><init>(Lio/invertase/firebase/notifications/RNFirebaseNotifications;Lio/invertase/firebase/notifications/RNFirebaseNotifications$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "notifications-remote-notification"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 63
    new-instance v1, Lio/invertase/firebase/notifications/RNFirebaseNotifications$ScheduledNotificationReceiver;

    invoke-direct {v1, p0, v0}, Lio/invertase/firebase/notifications/RNFirebaseNotifications$ScheduledNotificationReceiver;-><init>(Lio/invertase/firebase/notifications/RNFirebaseNotifications;Lio/invertase/firebase/notifications/RNFirebaseNotifications$1;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "notifications-scheduled-notification"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method static synthetic access$200(Lio/invertase/firebase/notifications/RNFirebaseNotifications;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lio/invertase/firebase/notifications/RNFirebaseNotifications;Lcom/google/firebase/messaging/RemoteMessage;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->parseRemoteMessage(Lcom/google/firebase/messaging/RemoteMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lio/invertase/firebase/notifications/RNFirebaseNotifications;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lio/invertase/firebase/notifications/RNFirebaseNotifications;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lio/invertase/firebase/notifications/RNFirebaseNotifications;Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->parseNotificationBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lio/invertase/firebase/notifications/RNFirebaseNotifications;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method private getNotificationBody(Lcom/google/firebase/messaging/RemoteMessage$Notification;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 407
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBodyLocalizationKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 410
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBodyLocalizationArgs()[Ljava/lang/String;

    move-result-object p1

    .line 411
    invoke-virtual {p0}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 412
    invoke-static {v0, v1}, Lio/invertase/firebase/Utils;->getResId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 414
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast p1, [Ljava/lang/Object;

    .line 415
    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method private getNotificationTitle(Lcom/google/firebase/messaging/RemoteMessage$Notification;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 423
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitleLocalizationKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 426
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitleLocalizationArgs()[Ljava/lang/String;

    move-result-object p1

    .line 427
    invoke-virtual {p0}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 428
    invoke-static {v0, v1}, Lio/invertase/firebase/Utils;->getResId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 430
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast p1, [Ljava/lang/Object;

    .line 431
    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method private parseIntentForLocalNotification(Landroid/content/Intent;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 298
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "notificationId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/bridge/Arguments;->makeNativeMap(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v0

    .line 303
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 304
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "notification"

    .line 305
    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 308
    invoke-static {p1}, Landroidx/core/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 310
    invoke-static {p1}, Lcom/facebook/react/bridge/Arguments;->makeNativeMap(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object p1

    const-string v0, "results"

    invoke-interface {v1, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseIntentForNotification(Landroid/content/Intent;)Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    .line 290
    invoke-direct {p0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->parseIntentForRemoteNotification(Landroid/content/Intent;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 292
    invoke-direct {p0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->parseIntentForLocalNotification(Landroid/content/Intent;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private parseIntentForRemoteNotification(Landroid/content/Intent;)Lcom/facebook/react/bridge/WritableMap;
    .locals 7

    .line 318
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "google.message_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 322
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 324
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 325
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 327
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 328
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 329
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "notificationId"

    invoke-interface {v2, v6, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v6, "collapse_key"

    .line 330
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "from"

    .line 331
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "google.sent_time"

    .line 332
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "google.ttl"

    .line 333
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "_fbSourceApplicationHasBeenSet"

    .line 334
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 337
    :cond_3
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "data"

    .line 340
    invoke-interface {v2, v0, v3}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 342
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 343
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "action"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "notification"

    .line 344
    invoke-interface {v0, p1, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-object v0

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseNotificationBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 350
    invoke-static {p1}, Lcom/facebook/react/bridge/Arguments;->makeNativeMap(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object p1

    return-object p1
.end method

.method private parseRemoteMessage(Lcom/google/firebase/messaging/RemoteMessage;)Lcom/facebook/react/bridge/WritableMap;
    .locals 6

    .line 354
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v0

    .line 356
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 357
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 360
    invoke-direct {p0, v0}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->getNotificationBody(Lcom/google/firebase/messaging/RemoteMessage$Notification;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "body"

    .line 362
    invoke-interface {v1, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 366
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v3

    .line 367
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 365
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 368
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "data"

    .line 371
    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 372
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 373
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "notificationId"

    invoke-interface {v1, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getSound()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 376
    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getSound()Ljava/lang/String;

    move-result-object p1

    const-string v2, "sound"

    invoke-interface {v1, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_3
    invoke-direct {p0, v0}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->getNotificationTitle(Lcom/google/firebase/messaging/RemoteMessage$Notification;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v2, "title"

    .line 380
    invoke-interface {v1, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_4
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 385
    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getClickAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 386
    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getClickAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "clickAction"

    invoke-interface {p1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_5
    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getColor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 389
    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getColor()Ljava/lang/String;

    move-result-object v2

    const-string v3, "color"

    invoke-interface {p1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_6
    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getIcon()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 392
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 393
    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getIcon()Ljava/lang/String;

    move-result-object v3

    const-string v4, "icon"

    invoke-interface {v2, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "smallIcon"

    .line 394
    invoke-interface {p1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 396
    :cond_7
    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 397
    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "group"

    invoke-interface {p1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tag"

    invoke-interface {p1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v0, "android"

    .line 400
    invoke-interface {v1, v0, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-object v1
.end method


# virtual methods
.method public cancelAllNotifications(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 76
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->notificationManager:Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    invoke-virtual {v0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->cancelAllNotifications(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public cancelNotification(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 81
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->notificationManager:Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    invoke-virtual {v0, p1, p2}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->cancelNotification(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public createChannel(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 158
    :try_start_0
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->notificationManager:Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    invoke-virtual {v0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->createChannel(Lcom/facebook/react/bridge/ReadableMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 p1, 0x0

    .line 162
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public createChannelGroup(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 168
    :try_start_0
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->notificationManager:Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    invoke-virtual {v0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->createChannelGroup(Lcom/facebook/react/bridge/ReadableMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 p1, 0x0

    .line 172
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public createChannelGroups(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 178
    :try_start_0
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->notificationManager:Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    invoke-virtual {v0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->createChannelGroups(Lcom/facebook/react/bridge/ReadableArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 p1, 0x0

    .line 182
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public createChannels(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 188
    :try_start_0
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->notificationManager:Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    invoke-virtual {v0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->createChannels(Lcom/facebook/react/bridge/ReadableArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 p1, 0x0

    .line 192
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public deleteChannel(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 211
    :try_start_0
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->notificationManager:Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    invoke-virtual {v0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->deleteChannel(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 p1, 0x0

    .line 215
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public deleteChannelGroup(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 198
    :try_start_0
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->notificationManager:Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    invoke-virtual {v0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->deleteChannelGroup(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 199
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "notifications/channel-group-not-found"

    const-string v0, "The requested NotificationChannelGroup does not exist, have you created it?"

    .line 201
    invoke-interface {p2, p1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public displayNotification(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 86
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->notificationManager:Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    invoke-virtual {v0, p1, p2}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->displayNotification(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getBadge(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 91
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "BadgeCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got badge count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RNFirebaseNotifications"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public getChannel(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 221
    :try_start_0
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->notificationManager:Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    invoke-virtual {v0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->getChannel(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const/4 p1, 0x0

    .line 226
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public getChannelGroup(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 243
    :try_start_0
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->notificationManager:Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    invoke-virtual {v0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->getChannelGroup(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const/4 p1, 0x0

    .line 248
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public getChannelGroups(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 254
    :try_start_0
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->notificationManager:Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    invoke-virtual {v0}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->getChannelGroups()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 259
    :catchall_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public getChannels(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 232
    :try_start_0
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->notificationManager:Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    invoke-virtual {v0}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->getChannels()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 237
    :catchall_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public getInitialNotification(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 99
    invoke-virtual {p0}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->parseIntentForNotification(Landroid/content/Intent;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 102
    :goto_0
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNFirebaseNotifications"

    return-object v0
.end method

.method public getScheduledNotifications(Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 107
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->notificationManager:Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    invoke-virtual {v0}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->getScheduledNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 108
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 110
    invoke-direct {p0, v2}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->parseNotificationBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 275
    invoke-direct {p0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->parseIntentForNotification(Landroid/content/Intent;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 278
    invoke-virtual {p0}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "notifications_notification_opened"

    .line 277
    invoke-static {v0, v1, p1}, Lio/invertase/firebase/Utils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public removeAllDeliveredNotifications(Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 117
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->notificationManager:Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    invoke-virtual {v0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->removeAllDeliveredNotifications(Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public removeDeliveredNotification(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 122
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->notificationManager:Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    invoke-virtual {v0, p1, p2}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->removeDeliveredNotification(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public removeDeliveredNotificationsByTag(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 127
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->notificationManager:Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    invoke-virtual {v0, p1, p2}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->removeDeliveredNotificationsByTag(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public scheduleNotification(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 149
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->notificationManager:Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;

    invoke-virtual {v0, p1, p2}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->scheduleNotification(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public setBadge(ILcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 133
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BadgeCount"

    .line 135
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "RNFirebaseNotifications"

    if-nez p1, :cond_0

    const-string p1, "Remove badge count"

    .line 138
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    invoke-static {p1}, Lme/leolin/shortcutbadger/ShortcutBadger;->removeCount(Landroid/content/Context;)Z

    goto :goto_0

    .line 141
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Apply badge count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lio/invertase/firebase/notifications/RNFirebaseNotifications;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-static {v0, p1}, Lme/leolin/shortcutbadger/ShortcutBadger;->applyCount(Landroid/content/Context;I)Z

    :goto_0
    const/4 p1, 0x0

    .line 144
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
