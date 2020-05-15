.class public Lio/invertase/firebase/notifications/RNFirebaseBackgroundNotificationActionsService;
.super Lcom/facebook/react/HeadlessJsTaskService;
.source "RNFirebaseBackgroundNotificationActionsService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/facebook/react/HeadlessJsTaskService;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTaskConfig(Landroid/content/Intent;)Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 18
    invoke-static {p1}, Lio/invertase/firebase/notifications/RNFirebaseBackgroundNotificationActionReceiver;->isBackgroundNotficationIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {p1}, Lio/invertase/firebase/notifications/RNFirebaseBackgroundNotificationActionReceiver;->toNotificationOpenMap(Landroid/content/Intent;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 21
    new-instance p1, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    const-wide/32 v4, 0xea60

    const/4 v6, 0x1

    const-string v2, "RNFirebaseBackgroundNotificationAction"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;JZ)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
