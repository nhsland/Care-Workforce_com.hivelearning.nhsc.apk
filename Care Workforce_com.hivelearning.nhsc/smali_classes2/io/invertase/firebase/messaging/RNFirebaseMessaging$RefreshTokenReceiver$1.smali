.class Lio/invertase/firebase/messaging/RNFirebaseMessaging$RefreshTokenReceiver$1;
.super Ljava/lang/Object;
.source "RNFirebaseMessaging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/messaging/RNFirebaseMessaging$RefreshTokenReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/invertase/firebase/messaging/RNFirebaseMessaging$RefreshTokenReceiver;


# direct methods
.method constructor <init>(Lio/invertase/firebase/messaging/RNFirebaseMessaging$RefreshTokenReceiver;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lio/invertase/firebase/messaging/RNFirebaseMessaging$RefreshTokenReceiver$1;->this$1:Lio/invertase/firebase/messaging/RNFirebaseMessaging$RefreshTokenReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "RNFirebaseMessaging"

    .line 195
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getGcmSenderId()Ljava/lang/String;

    move-result-object v1

    .line 199
    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v2

    const-string v3, "FCM"

    .line 200
    invoke-virtual {v2, v1, v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "onNewToken error"

    .line 202
    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "Sending new messaging token event."

    .line 206
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lio/invertase/firebase/messaging/RNFirebaseMessaging$RefreshTokenReceiver$1;->this$1:Lio/invertase/firebase/messaging/RNFirebaseMessaging$RefreshTokenReceiver;

    iget-object v0, v0, Lio/invertase/firebase/messaging/RNFirebaseMessaging$RefreshTokenReceiver;->this$0:Lio/invertase/firebase/messaging/RNFirebaseMessaging;

    invoke-static {v0}, Lio/invertase/firebase/messaging/RNFirebaseMessaging;->access$500(Lio/invertase/firebase/messaging/RNFirebaseMessaging;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v2, "messaging_token_refreshed"

    invoke-static {v0, v2, v1}, Lio/invertase/firebase/Utils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
