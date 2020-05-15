.class Lcom/bugsnag/android/SessionTracker$1;
.super Ljava/lang/Object;
.source "SessionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsnag/android/SessionTracker;->trackSessionIfNeeded(Lcom/bugsnag/android/Session;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bugsnag/android/SessionTracker;

.field final synthetic val$session:Lcom/bugsnag/android/Session;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/SessionTracker;Lcom/bugsnag/android/Session;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/bugsnag/android/SessionTracker$1;->this$0:Lcom/bugsnag/android/SessionTracker;

    iput-object p2, p0, Lcom/bugsnag/android/SessionTracker$1;->val$session:Lcom/bugsnag/android/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 175
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker$1;->this$0:Lcom/bugsnag/android/SessionTracker;

    invoke-virtual {v0}, Lcom/bugsnag/android/SessionTracker;->flushStoredSessions()V

    .line 177
    new-instance v0, Lcom/bugsnag/android/SessionTrackingPayload;

    iget-object v1, p0, Lcom/bugsnag/android/SessionTracker$1;->val$session:Lcom/bugsnag/android/Session;

    iget-object v2, p0, Lcom/bugsnag/android/SessionTracker$1;->this$0:Lcom/bugsnag/android/SessionTracker;

    iget-object v2, v2, Lcom/bugsnag/android/SessionTracker;->client:Lcom/bugsnag/android/Client;

    iget-object v2, v2, Lcom/bugsnag/android/Client;->appData:Lcom/bugsnag/android/AppData;

    iget-object v3, p0, Lcom/bugsnag/android/SessionTracker$1;->this$0:Lcom/bugsnag/android/SessionTracker;

    iget-object v3, v3, Lcom/bugsnag/android/SessionTracker;->client:Lcom/bugsnag/android/Client;

    iget-object v3, v3, Lcom/bugsnag/android/Client;->deviceData:Lcom/bugsnag/android/DeviceData;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/bugsnag/android/SessionTrackingPayload;-><init>(Lcom/bugsnag/android/Session;Ljava/util/List;Lcom/bugsnag/android/AppData;Lcom/bugsnag/android/DeviceData;)V

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/bugsnag/android/SessionTracker$1;->this$0:Lcom/bugsnag/android/SessionTracker;

    iget-object v1, v1, Lcom/bugsnag/android/SessionTracker;->configuration:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v1}, Lcom/bugsnag/android/Configuration;->getSessionCallbacks()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bugsnag/android/BeforeSendSession;

    .line 183
    invoke-interface {v2, v0}, Lcom/bugsnag/android/BeforeSendSession;->beforeSendSession(Lcom/bugsnag/android/SessionTrackingPayload;)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/bugsnag/android/SessionTracker$1;->this$0:Lcom/bugsnag/android/SessionTracker;

    iget-object v1, v1, Lcom/bugsnag/android/SessionTracker;->configuration:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v1}, Lcom/bugsnag/android/Configuration;->getDelivery()Lcom/bugsnag/android/Delivery;

    move-result-object v1

    iget-object v2, p0, Lcom/bugsnag/android/SessionTracker$1;->this$0:Lcom/bugsnag/android/SessionTracker;

    iget-object v2, v2, Lcom/bugsnag/android/SessionTracker;->configuration:Lcom/bugsnag/android/Configuration;

    invoke-interface {v1, v0, v2}, Lcom/bugsnag/android/Delivery;->deliver(Lcom/bugsnag/android/SessionTrackingPayload;Lcom/bugsnag/android/Configuration;)V
    :try_end_0
    .catch Lcom/bugsnag/android/DeliveryFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Dropping invalid session tracking payload"

    .line 191
    invoke-static {v1, v0}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Storing session payload for future delivery"

    .line 188
    invoke-static {v1, v0}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    iget-object v0, p0, Lcom/bugsnag/android/SessionTracker$1;->this$0:Lcom/bugsnag/android/SessionTracker;

    iget-object v0, v0, Lcom/bugsnag/android/SessionTracker;->sessionStore:Lcom/bugsnag/android/SessionStore;

    iget-object v1, p0, Lcom/bugsnag/android/SessionTracker$1;->val$session:Lcom/bugsnag/android/Session;

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/SessionStore;->write(Lcom/bugsnag/android/JsonStream$Streamable;)Ljava/lang/String;

    :goto_1
    return-void
.end method
