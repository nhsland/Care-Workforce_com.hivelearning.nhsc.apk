.class Lio/invertase/firebase/messaging/RNFirebaseMessaging$MessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RNFirebaseMessaging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/invertase/firebase/messaging/RNFirebaseMessaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/messaging/RNFirebaseMessaging;


# direct methods
.method private constructor <init>(Lio/invertase/firebase/messaging/RNFirebaseMessaging;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lio/invertase/firebase/messaging/RNFirebaseMessaging$MessageReceiver;->this$0:Lio/invertase/firebase/messaging/RNFirebaseMessaging;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/invertase/firebase/messaging/RNFirebaseMessaging;Lio/invertase/firebase/messaging/RNFirebaseMessaging$1;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lio/invertase/firebase/messaging/RNFirebaseMessaging$MessageReceiver;-><init>(Lio/invertase/firebase/messaging/RNFirebaseMessaging;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 175
    iget-object p1, p0, Lio/invertase/firebase/messaging/RNFirebaseMessaging$MessageReceiver;->this$0:Lio/invertase/firebase/messaging/RNFirebaseMessaging;

    invoke-static {p1}, Lio/invertase/firebase/messaging/RNFirebaseMessaging;->access$200(Lio/invertase/firebase/messaging/RNFirebaseMessaging;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveCatalystInstance()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "RNFirebaseMessaging"

    const-string v0, "Received new message"

    .line 176
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "message"

    .line 178
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/messaging/RemoteMessage;

    .line 179
    invoke-static {p1}, Lio/invertase/firebase/messaging/MessagingSerializer;->parseRemoteMessage(Lcom/google/firebase/messaging/RemoteMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 181
    iget-object p2, p0, Lio/invertase/firebase/messaging/RNFirebaseMessaging$MessageReceiver;->this$0:Lio/invertase/firebase/messaging/RNFirebaseMessaging;

    invoke-static {p2}, Lio/invertase/firebase/messaging/RNFirebaseMessaging;->access$300(Lio/invertase/firebase/messaging/RNFirebaseMessaging;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p2

    const-string v0, "messaging_message_received"

    invoke-static {p2, v0, p1}, Lio/invertase/firebase/Utils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
