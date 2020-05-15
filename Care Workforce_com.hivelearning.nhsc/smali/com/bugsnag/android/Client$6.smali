.class Lcom/bugsnag/android/Client$6;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsnag/android/Client;->reportInternalBugsnagError(Lcom/bugsnag/android/Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bugsnag/android/Client;

.field final synthetic val$report:Lcom/bugsnag/android/Report;


# direct methods
.method constructor <init>(Lcom/bugsnag/android/Client;Lcom/bugsnag/android/Report;)V
    .locals 0

    .line 1073
    iput-object p1, p0, Lcom/bugsnag/android/Client$6;->this$0:Lcom/bugsnag/android/Client;

    iput-object p2, p0, Lcom/bugsnag/android/Client$6;->val$report:Lcom/bugsnag/android/Report;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1077
    :try_start_0
    iget-object v0, p0, Lcom/bugsnag/android/Client$6;->this$0:Lcom/bugsnag/android/Client;

    iget-object v0, v0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0}, Lcom/bugsnag/android/Configuration;->getDelivery()Lcom/bugsnag/android/Delivery;

    move-result-object v0

    .line 1080
    instance-of v1, v0, Lcom/bugsnag/android/DefaultDelivery;

    if-eqz v1, :cond_0

    .line 1081
    iget-object v1, p0, Lcom/bugsnag/android/Client$6;->this$0:Lcom/bugsnag/android/Client;

    iget-object v1, v1, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v1}, Lcom/bugsnag/android/Configuration;->getErrorApiHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v2, "Bugsnag-Internal-Error"

    const-string v3, "true"

    .line 1082
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Bugsnag-Api-Key"

    .line 1083
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    check-cast v0, Lcom/bugsnag/android/DefaultDelivery;

    .line 1085
    iget-object v2, p0, Lcom/bugsnag/android/Client$6;->this$0:Lcom/bugsnag/android/Client;

    iget-object v2, v2, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v2}, Lcom/bugsnag/android/Configuration;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bugsnag/android/Client$6;->val$report:Lcom/bugsnag/android/Report;

    invoke-virtual {v0, v2, v3, v1}, Lcom/bugsnag/android/DefaultDelivery;->deliver(Ljava/lang/String;Lcom/bugsnag/android/JsonStream$Streamable;Ljava/util/Map;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to report internal error to Bugsnag"

    .line 1089
    invoke-static {v1, v0}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
