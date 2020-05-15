.class public interface abstract Lcom/rnfingerprint/FingerprintHandler$Callback;
.super Ljava/lang/Object;
.source "FingerprintHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rnfingerprint/FingerprintHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAuthenticated()V
.end method

.method public abstract onCancelled()V
.end method

.method public abstract onError(Ljava/lang/String;I)V
.end method
