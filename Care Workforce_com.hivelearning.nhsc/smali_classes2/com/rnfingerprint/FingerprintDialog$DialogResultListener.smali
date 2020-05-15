.class public interface abstract Lcom/rnfingerprint/FingerprintDialog$DialogResultListener;
.super Ljava/lang/Object;
.source "FingerprintDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rnfingerprint/FingerprintDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DialogResultListener"
.end annotation


# virtual methods
.method public abstract onAuthenticated()V
.end method

.method public abstract onCancelled()V
.end method

.method public abstract onError(Ljava/lang/String;I)V
.end method
