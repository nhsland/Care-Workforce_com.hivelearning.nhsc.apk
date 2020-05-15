.class public Lcom/rnfingerprint/FingerprintHandler;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rnfingerprint/FingerprintHandler$Callback;
    }
.end annotation


# instance fields
.field private cancellationSignal:Landroid/os/CancellationSignal;

.field private final mCallback:Lcom/rnfingerprint/FingerprintHandler$Callback;

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private selfCancelled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/rnfingerprint/FingerprintHandler$Callback;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    .line 19
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/rnfingerprint/FingerprintHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 20
    iput-object p2, p0, Lcom/rnfingerprint/FingerprintHandler;->mCallback:Lcom/rnfingerprint/FingerprintHandler$Callback;

    return-void
.end method

.method private cancelAuthenticationSignal()V
    .locals 1

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/rnfingerprint/FingerprintHandler;->selfCancelled:Z

    .line 54
    iget-object v0, p0, Lcom/rnfingerprint/FingerprintHandler;->cancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/rnfingerprint/FingerprintHandler;->cancellationSignal:Landroid/os/CancellationSignal;

    :cond_0
    return-void
.end method


# virtual methods
.method public endAuth()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/rnfingerprint/FingerprintHandler;->cancelAuthenticationSignal()V

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/rnfingerprint/FingerprintHandler;->selfCancelled:Z

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/rnfingerprint/FingerprintHandler;->mCallback:Lcom/rnfingerprint/FingerprintHandler$Callback;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Lcom/rnfingerprint/FingerprintHandler$Callback;->onError(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/rnfingerprint/FingerprintHandler;->mCallback:Lcom/rnfingerprint/FingerprintHandler$Callback;

    const-string v1, "Not recognized. Try again."

    const/16 v2, 0x69

    invoke-interface {v0, v1, v2}, Lcom/rnfingerprint/FingerprintHandler$Callback;->onError(Ljava/lang/String;I)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/rnfingerprint/FingerprintHandler;->mCallback:Lcom/rnfingerprint/FingerprintHandler$Callback;

    invoke-interface {p1}, Lcom/rnfingerprint/FingerprintHandler$Callback;->onAuthenticated()V

    .line 49
    invoke-direct {p0}, Lcom/rnfingerprint/FingerprintHandler;->cancelAuthenticationSignal()V

    return-void
.end method

.method public startAuth(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V
    .locals 6

    .line 24
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v2, p0, Lcom/rnfingerprint/FingerprintHandler;->cancellationSignal:Landroid/os/CancellationSignal;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/rnfingerprint/FingerprintHandler;->selfCancelled:Z

    .line 26
    iget-object v0, p0, Lcom/rnfingerprint/FingerprintHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    return-void
.end method
