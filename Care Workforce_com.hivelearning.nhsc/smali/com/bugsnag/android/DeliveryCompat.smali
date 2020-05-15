.class Lcom/bugsnag/android/DeliveryCompat;
.super Ljava/lang/Object;
.source "DeliveryCompat.java"

# interfaces
.implements Lcom/bugsnag/android/Delivery;


# instance fields
.field volatile errorReportApiClient:Lcom/bugsnag/android/ErrorReportApiClient;

.field volatile sessionTrackingApiClient:Lcom/bugsnag/android/SessionTrackingApiClient;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deliver(Lcom/bugsnag/android/Report;Lcom/bugsnag/android/Configuration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bugsnag/android/DeliveryFailureException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/bugsnag/android/DeliveryCompat;->errorReportApiClient:Lcom/bugsnag/android/ErrorReportApiClient;

    if-eqz v0, :cond_0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/bugsnag/android/DeliveryCompat;->errorReportApiClient:Lcom/bugsnag/android/ErrorReportApiClient;

    invoke-virtual {p2}, Lcom/bugsnag/android/Configuration;->getEndpoint()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {p2}, Lcom/bugsnag/android/Configuration;->getErrorApiHeaders()Ljava/util/Map;

    move-result-object p2

    .line 36
    invoke-interface {v0, v1, p1, p2}, Lcom/bugsnag/android/ErrorReportApiClient;->postReport(Ljava/lang/String;Lcom/bugsnag/android/Report;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/bugsnag/android/DeliveryCompat;->handleException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public deliver(Lcom/bugsnag/android/SessionTrackingPayload;Lcom/bugsnag/android/Configuration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bugsnag/android/DeliveryFailureException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/bugsnag/android/DeliveryCompat;->sessionTrackingApiClient:Lcom/bugsnag/android/SessionTrackingApiClient;

    if-eqz v0, :cond_0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/bugsnag/android/DeliveryCompat;->sessionTrackingApiClient:Lcom/bugsnag/android/SessionTrackingApiClient;

    invoke-virtual {p2}, Lcom/bugsnag/android/Configuration;->getSessionEndpoint()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {p2}, Lcom/bugsnag/android/Configuration;->getSessionApiHeaders()Ljava/util/Map;

    move-result-object p2

    .line 23
    invoke-interface {v0, v1, p1, p2}, Lcom/bugsnag/android/SessionTrackingApiClient;->postSessionTrackingPayload(Ljava/lang/String;Lcom/bugsnag/android/SessionTrackingPayload;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/bugsnag/android/DeliveryCompat;->handleException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method handleException(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bugsnag/android/DeliveryFailureException;
        }
    .end annotation

    .line 46
    instance-of v0, p1, Lcom/bugsnag/android/NetworkException;

    if-nez v0, :cond_0

    const-string v0, "Ignoring Exception, this API is deprecated"

    .line 49
    invoke-static {v0, p1}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 47
    :cond_0
    new-instance v0, Lcom/bugsnag/android/DeliveryFailureException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/DeliveryFailureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
