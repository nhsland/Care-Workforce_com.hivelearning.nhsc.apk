.class public interface abstract Lcom/bugsnag/android/SessionTrackingApiClient;
.super Ljava/lang/Object;
.source "SessionTrackingApiClient.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract postSessionTrackingPayload(Ljava/lang/String;Lcom/bugsnag/android/SessionTrackingPayload;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bugsnag/android/SessionTrackingPayload;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bugsnag/android/NetworkException;,
            Lcom/bugsnag/android/BadResponseException;
        }
    .end annotation
.end method
