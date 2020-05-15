.class public interface abstract Lcom/bugsnag/android/ErrorReportApiClient;
.super Ljava/lang/Object;
.source "ErrorReportApiClient.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract postReport(Ljava/lang/String;Lcom/bugsnag/android/Report;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bugsnag/android/Report;",
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
