.class public Lio/invertase/firebase/messaging/RNFirebaseBackgroundMessagingService;
.super Lcom/facebook/react/HeadlessJsTaskService;
.source "RNFirebaseBackgroundMessagingService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/facebook/react/HeadlessJsTaskService;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTaskConfig(Landroid/content/Intent;)Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 17
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "message"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/messaging/RemoteMessage;

    .line 20
    invoke-static {p1}, Lio/invertase/firebase/messaging/MessagingSerializer;->parseRemoteMessage(Lcom/google/firebase/messaging/RemoteMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 21
    new-instance p1, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;

    const-wide/32 v3, 0xea60

    const/4 v5, 0x0

    const-string v1, "RNFirebaseBackgroundMessage"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/jstasks/HeadlessJsTaskConfig;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;JZ)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
