.class Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;
.super Ljava/lang/Object;
.source "RNFirebaseNotificationManager.java"


# static fields
.field private static final PREFERENCES_KEY:Ljava/lang/String; = "RNFNotifications"

.field static final SCHEDULED_NOTIFICATION_EVENT:Ljava/lang/String; = "notifications-scheduled-notification"

.field private static final TAG:Ljava/lang/String; = "RNFNotificationManager"


# instance fields
.field private alarmManager:Landroid/app/AlarmManager;

.field private context:Landroid/content/Context;

.field private notificationManager:Landroid/app/NotificationManager;

.field private preferences:Landroid/content/SharedPreferences;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "alarm"

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->alarmManager:Landroid/app/AlarmManager;

    .line 62
    iput-object p1, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->context:Landroid/content/Context;

    const-string v0, "notification"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    const-string v0, "RNFNotifications"

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 56
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object p1, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method private cancelAlarm(Ljava/lang/String;)V
    .locals 3

    .line 299
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->context:Landroid/content/Context;

    const-class v2, Lio/invertase/firebase/notifications/RNFirebaseNotificationReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    iget-object v1, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->context:Landroid/content/Context;

    .line 302
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/high16 v2, 0x8000000

    .line 300
    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 306
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private createChannelGroupMap(Landroid/app/NotificationChannelGroup;)Lcom/facebook/react/bridge/WritableMap;
    .locals 3

    .line 400
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 402
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 403
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "groupId"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->createChannelsArray(Ljava/util/List;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    const-string v2, "channels"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 406
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 407
    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object p1

    const-string v1, "description"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private createChannelGroupsArray(Ljava/util/List;)Lcom/facebook/react/bridge/WritableArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannelGroup;",
            ">;)",
            "Lcom/facebook/react/bridge/WritableArray;"
        }
    .end annotation

    .line 386
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 388
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 389
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 391
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    invoke-direct {p0, v3}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->createChannelGroupMap(Landroid/app/NotificationChannelGroup;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createChannelMap(Landroid/app/NotificationChannel;)Lcom/facebook/react/bridge/WritableMap;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 417
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 419
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3

    .line 420
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "channelId"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    const-string v2, "importance"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 423
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "description"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    const-string v2, "bypassDnd"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 426
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v1

    const-string v2, "group"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0xffffff

    .line 429
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v3

    and-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "#%06X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lightColor"

    .line 427
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    const-string v2, "lightsEnabled"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 433
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    const/16 v2, -0x3e8

    const-string v4, "lockScreenVisibility"

    if-ne v1, v2, :cond_1

    .line 435
    invoke-interface {v0, v4}, Lcom/facebook/react/bridge/WritableMap;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_1
    invoke-interface {v0, v4, v1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 440
    :goto_0
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    const-string v2, "showBadge"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 441
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sound"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    const-string v2, "vibrationEnabled"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 444
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object p1

    .line 445
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    if-eqz p1, :cond_2

    .line 447
    array-length v2, p1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-wide v4, p1, v3

    long-to-double v4, v4

    .line 448
    invoke-interface {v1, v4, v5}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string p1, "vibrationPattern"

    .line 451
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    :cond_3
    return-object v0
.end method

.method private createChannelsArray(Ljava/util/List;)Lcom/facebook/react/bridge/WritableArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;)",
            "Lcom/facebook/react/bridge/WritableArray;"
        }
    .end annotation

    .line 372
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 374
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 375
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 377
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    invoke-direct {p0, v3}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->createChannelMap(Landroid/app/NotificationChannel;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private displayNotification(Landroid/os/Bundle;Lcom/facebook/react/bridge/Promise;)V
    .locals 7

    .line 310
    new-instance v6, Lio/invertase/firebase/notifications/DisplayNotificationTask;

    iget-object v1, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v3, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lio/invertase/firebase/notifications/DisplayNotificationTask;-><init>(Landroid/content/Context;Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/app/NotificationManager;Landroid/os/Bundle;Lcom/facebook/react/bridge/Promise;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 316
    invoke-virtual {v6, p1}, Lio/invertase/firebase/notifications/DisplayNotificationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    .line 342
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "content"

    if-ne v0, v2, :cond_2

    .line 343
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 345
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "_display_name"

    .line 346
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_0

    .line 349
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 350
    :cond_0
    throw p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 349
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v0, "default"

    if-nez v1, :cond_4

    .line 354
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const/16 p1, 0x2f

    .line 356
    invoke-virtual {v1, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    add-int/lit8 p1, p1, 0x1

    .line 358
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    :cond_4
    :goto_1
    const-string p1, "notification_sound"

    .line 365
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static getSound(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "://"

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "default"

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    .line 79
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "raw"

    .line 81
    invoke-static {p0, v0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    const/16 v2, 0x2e

    .line 83
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 85
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "android.resource://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private parseChannelGroupMap(Lcom/facebook/react/bridge/ReadableMap;)Landroid/app/NotificationChannelGroup;
    .locals 3

    .line 320
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    const-string v0, "groupId"

    .line 321
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    .line 322
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    new-instance v2, Landroid/app/NotificationChannelGroup;

    invoke-direct {v2, v0, v1}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 329
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const-string v0, "description"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 331
    invoke-virtual {v2, p1}, Landroid/app/NotificationChannelGroup;->setDescription(Ljava/lang/String;)V

    :cond_0
    return-object v2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseChannelMap(Lcom/facebook/react/bridge/ReadableMap;)Landroid/app/NotificationChannel;
    .locals 5

    .line 459
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_b

    const-string v0, "channelId"

    .line 460
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "name"

    .line 461
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "importance"

    .line 462
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 464
    new-instance v4, Landroid/app/NotificationChannel;

    invoke-direct {v4, v0, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v0, "bypassDnd"

    .line 465
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    :cond_0
    const-string v0, "description"

    .line 468
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 469
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    :cond_1
    const-string v0, "group"

    .line 471
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 472
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    :cond_2
    const-string v0, "lightColor"

    .line 474
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 475
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/NotificationChannel;->setLightColor(I)V

    :cond_3
    const-string v0, "lightsEnabled"

    .line 478
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 479
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/NotificationChannel;->enableLights(Z)V

    :cond_4
    const-string v0, "lockScreenVisibility"

    .line 481
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 482
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    :cond_5
    const-string v0, "showBadge"

    .line 484
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 485
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    :cond_6
    const-string v0, "sound"

    .line 487
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 488
    iget-object v2, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->context:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->getSound(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 489
    invoke-virtual {v4, v0, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    :cond_7
    const-string v0, "vibrationEnabled"

    .line 491
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 492
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    :cond_8
    const-string v0, "vibrationPattern"

    .line 494
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 495
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    .line 496
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 497
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 498
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    double-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    :cond_9
    invoke-virtual {v4, v0}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    :cond_a
    return-object v4

    :cond_b
    return-object v1
.end method

.method private scheduleNotification(Landroid/os/Bundle;Lcom/facebook/react/bridge/Promise;)V
    .locals 18
    .param p2    # Lcom/facebook/react/bridge/Promise;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "notificationId"

    .line 510
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "notification/schedule_notification_error"

    const-string v6, "RNFNotificationManager"

    if-nez v4, :cond_1

    const-string v0, "Missing notificationId"

    if-nez v2, :cond_0

    .line 512
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 514
    :cond_0
    invoke-interface {v2, v5, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v4, "schedule"

    .line 519
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "Missing schedule information"

    if-nez v7, :cond_3

    if-nez v2, :cond_2

    .line 521
    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 523
    :cond_2
    invoke-interface {v2, v5, v8}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 528
    :cond_3
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 529
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-wide/16 v9, -0x1

    .line 535
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v11, "fireDate"

    .line 536
    invoke-virtual {v4, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 537
    instance-of v12, v11, Ljava/lang/Long;

    if-eqz v12, :cond_4

    .line 538
    move-object v7, v11

    check-cast v7, Ljava/lang/Long;

    goto :goto_2

    .line 539
    :cond_4
    instance-of v12, v11, Ljava/lang/Double;

    if-eqz v12, :cond_5

    .line 540
    check-cast v11, Ljava/lang/Double;

    .line 541
    invoke-virtual {v11}, Ljava/lang/Double;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 544
    :cond_5
    :goto_2
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v13, v11, v9

    if-nez v13, :cond_7

    if-nez v2, :cond_6

    .line 546
    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const-string v0, "Missing fireDate information"

    .line 548
    invoke-interface {v2, v5, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    .line 556
    :cond_7
    :try_start_0
    invoke-static/range {p1 .. p1}, Lio/invertase/firebase/messaging/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v8

    .line 557
    iget-object v9, v1, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->preferences:Landroid/content/SharedPreferences;

    .line 558
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 559
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v3, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 560
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    new-instance v8, Landroid/content/Intent;

    iget-object v9, v1, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->context:Landroid/content/Context;

    const-class v10, Lio/invertase/firebase/notifications/RNFirebaseNotificationReceiver;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 575
    invoke-virtual {v8, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 576
    iget-object v0, v1, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->context:Landroid/content/Context;

    .line 578
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/high16 v9, 0x8000000

    .line 576
    invoke-static {v0, v3, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v3, "repeatInterval"

    .line 583
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 586
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-string v8, "day"

    const-string v15, "minute"

    const/16 v16, -0x1

    const/4 v10, 0x2

    const/4 v9, 0x1

    cmp-long v17, v11, v13

    if-gez v17, :cond_d

    const-string v11, "Scheduled notification date is in the past, will adjust it to be in future"

    .line 587
    invoke-static {v6, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 589
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 590
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v7, 0xd

    .line 592
    invoke-virtual {v12, v7}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v11, v7, v13}, Ljava/util/Calendar;->set(II)V

    .line 594
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v13, "week"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x3

    goto :goto_5

    :sswitch_1
    const-string v13, "hour"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    goto :goto_5

    :sswitch_2
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x2

    goto :goto_5

    :sswitch_3
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v7, -0x1

    :goto_5
    const/16 v13, 0xc

    if-eqz v7, :cond_c

    if-eq v7, v9, :cond_b

    const/4 v14, 0x5

    const/16 v9, 0xb

    if-eq v7, v10, :cond_a

    const/4 v10, 0x3

    if-eq v7, v10, :cond_9

    goto :goto_6

    .line 608
    :cond_9
    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v11, v13, v7}, Ljava/util/Calendar;->set(II)V

    .line 609
    invoke-virtual {v12, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v11, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 610
    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v11, v14, v7}, Ljava/util/Calendar;->set(II)V

    const/4 v7, 0x7

    .line 611
    invoke-virtual {v11, v14, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_6

    .line 603
    :cond_a
    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v11, v13, v7}, Ljava/util/Calendar;->set(II)V

    .line 604
    invoke-virtual {v12, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v11, v9, v7}, Ljava/util/Calendar;->set(II)V

    const/4 v7, 0x1

    .line 605
    invoke-virtual {v11, v14, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_6

    :cond_b
    const/4 v7, 0x1

    .line 599
    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v11, v13, v9}, Ljava/util/Calendar;->set(II)V

    const/16 v9, 0xa

    .line 600
    invoke-virtual {v11, v9, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_6

    :cond_c
    const/4 v7, 0x1

    .line 596
    invoke-virtual {v11, v13, v7}, Ljava/util/Calendar;->add(II)V

    .line 615
    :goto_6
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 619
    :cond_d
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    goto :goto_7

    :sswitch_4
    const-string v8, "week"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v10, 0x3

    goto :goto_8

    :sswitch_5
    const-string v8, "hour"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v10, 0x1

    goto :goto_8

    :sswitch_6
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v10, 0x2

    goto :goto_8

    :sswitch_7
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v10, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    const/4 v10, -0x1

    :goto_8
    if-eqz v10, :cond_12

    const/4 v3, 0x1

    if-eq v10, v3, :cond_11

    const/4 v3, 0x2

    if-eq v10, v3, :cond_10

    const/4 v3, 0x3

    if-eq v10, v3, :cond_f

    .line 633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid interval: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "interval"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_9

    :cond_f
    const-wide/32 v3, 0x240c8400

    .line 630
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_9

    :cond_10
    const-wide/32 v3, 0x5265c00

    .line 627
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_9

    :cond_11
    const-wide/32 v3, 0x36ee80

    .line 624
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_9

    :cond_12
    const-wide/32 v3, 0xea60

    .line 621
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_9
    if-nez v3, :cond_14

    if-nez v2, :cond_13

    const-string v0, "Invalid interval"

    .line 639
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_13
    const-string v0, "Invalid interval"

    .line 641
    invoke-interface {v2, v5, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    return-void

    .line 646
    :cond_14
    iget-object v10, v1, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->alarmManager:Landroid/app/AlarmManager;

    const/4 v11, 0x0

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v16}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_b

    :cond_15
    const-string v3, "exact"

    .line 648
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 649
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_16

    .line 651
    iget-object v3, v1, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4, v5, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_b

    :cond_16
    const/4 v6, 0x0

    .line 653
    iget-object v3, v1, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v6, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_b
    if-eqz v2, :cond_17

    const/4 v0, 0x0

    .line 658
    invoke-interface {v2, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :cond_17
    return-void

    :catch_0
    move-exception v0

    const-string v3, "Failed to store notification"

    if-nez v2, :cond_18

    .line 563
    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 565
    :cond_18
    invoke-interface {v2, v5, v3, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x400459ec -> :sswitch_3
        0x1839c -> :sswitch_2
        0x30f5e4 -> :sswitch_1
        0x379ff4 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x400459ec -> :sswitch_7
        0x1839c -> :sswitch_6
        0x30f5e4 -> :sswitch_5
        0x379ff4 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method cancelAllNotifications(Lcom/facebook/react/bridge/Promise;)V
    .locals 3

    .line 91
    :try_start_0
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    invoke-direct {p0, v1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->cancelAlarm(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->preferences:Landroid/content/SharedPreferences;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    .line 102
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RNFNotificationManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "notification/cancel_notifications_error"

    const-string v2, "Could not cancel notifications"

    .line 107
    invoke-interface {p1, v1, v2, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method cancelNotification(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2

    .line 117
    :try_start_0
    invoke-direct {p0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->cancelAlarm(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->preferences:Landroid/content/SharedPreferences;

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 120
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 121
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    .line 122
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RNFNotificationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "notification/cancel_notification_error"

    const-string v1, "Could not cancel notifications"

    .line 127
    invoke-interface {p2, v0, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method createChannel(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2

    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->parseChannelMap(Lcom/facebook/react/bridge/ReadableMap;)Landroid/app/NotificationChannel;

    move-result-object p1

    .line 134
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method createChannelGroup(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2

    .line 139
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 140
    invoke-direct {p0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->parseChannelGroupMap(Lcom/facebook/react/bridge/ReadableMap;)Landroid/app/NotificationChannelGroup;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    :cond_0
    return-void
.end method

.method createChannelGroups(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 148
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 149
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->parseChannelGroupMap(Lcom/facebook/react/bridge/ReadableMap;)Landroid/app/NotificationChannelGroup;

    move-result-object v2

    .line 150
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannelGroups(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method createChannels(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3

    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 159
    :goto_0
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 160
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-direct {p0, v2}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->parseChannelMap(Lcom/facebook/react/bridge/ReadableMap;)Landroid/app/NotificationChannel;

    move-result-object v2

    .line 161
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method deleteChannel(Ljava/lang/String;)V
    .locals 2

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method deleteChannelGroup(Ljava/lang/String;)V
    .locals 2

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method displayNotification(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 180
    invoke-static {p1}, Lcom/facebook/react/bridge/Arguments;->toBundle(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object p1

    .line 181
    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->displayNotification(Landroid/os/Bundle;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method displayScheduledNotification(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "schedule"

    .line 187
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "repeated"

    .line 188
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 191
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "notificationId"

    .line 192
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->preferences:Landroid/content/SharedPreferences;

    .line 194
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 195
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 199
    :cond_1
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/invertase/firebase/Utils;->isAppInForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "notifications-scheduled-notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "notification"

    .line 203
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 204
    iget-object p1, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->context:Landroid/content/Context;

    .line 205
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    .line 206
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 209
    invoke-direct {p0, p1, v0}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->displayNotification(Landroid/os/Bundle;Lcom/facebook/react/bridge/Promise;)V

    :goto_0
    return-void
.end method

.method getChannel(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 2

    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 215
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->createChannelMap(Landroid/app/NotificationChannel;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getChannelGroup(Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 2

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannelGroup(Ljava/lang/String;)Landroid/app/NotificationChannelGroup;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->createChannelGroupMap(Landroid/app/NotificationChannelGroup;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getChannelGroups()Lcom/facebook/react/bridge/WritableArray;
    .locals 2

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannelGroups()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->createChannelGroupsArray(Ljava/util/List;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getChannels()Lcom/facebook/react/bridge/WritableArray;
    .locals 2

    .line 222
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->createChannelsArray(Ljava/util/List;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getScheduledNotifications()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    iget-object v1, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 250
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 252
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-static {v4}, Lio/invertase/firebase/messaging/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v3

    .line 254
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 256
    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RNFNotificationManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method removeAllDeliveredNotifications(Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    const/4 v0, 0x0

    .line 264
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method removeDeliveredNotification(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 p1, 0x0

    .line 269
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method removeDeliveredNotificationsByTag(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 6

    .line 273
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 274
    iget-object v0, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 275
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 276
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    iget-object v4, p0, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 282
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method rescheduleNotifications()V
    .locals 3

    .line 286
    invoke-virtual {p0}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->getScheduledNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const/4 v2, 0x0

    .line 288
    invoke-direct {p0, v1, v2}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->scheduleNotification(Landroid/os/Bundle;Lcom/facebook/react/bridge/Promise;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method scheduleNotification(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 293
    invoke-static {p1}, Lcom/facebook/react/bridge/Arguments;->toBundle(Lcom/facebook/react/bridge/ReadableMap;)Landroid/os/Bundle;

    move-result-object p1

    .line 295
    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/notifications/RNFirebaseNotificationManager;->scheduleNotification(Landroid/os/Bundle;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method
