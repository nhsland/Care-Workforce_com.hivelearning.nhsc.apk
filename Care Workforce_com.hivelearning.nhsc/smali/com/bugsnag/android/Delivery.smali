.class public interface abstract Lcom/bugsnag/android/Delivery;
.super Ljava/lang/Object;
.source "Delivery.java"


# virtual methods
.method public abstract deliver(Lcom/bugsnag/android/Report;Lcom/bugsnag/android/Configuration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bugsnag/android/DeliveryFailureException;
        }
    .end annotation
.end method

.method public abstract deliver(Lcom/bugsnag/android/SessionTrackingPayload;Lcom/bugsnag/android/Configuration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bugsnag/android/DeliveryFailureException;
        }
    .end annotation
.end method
