.class public Lcom/rnfingerprint/DialogResultHandler;
.super Ljava/lang/Object;
.source "DialogResultHandler.java"

# interfaces
.implements Lcom/rnfingerprint/FingerprintDialog$DialogResultListener;


# instance fields
.field private errorCallback:Lcom/facebook/react/bridge/Callback;

.field private successCallback:Lcom/facebook/react/bridge/Callback;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/rnfingerprint/DialogResultHandler;->errorCallback:Lcom/facebook/react/bridge/Callback;

    .line 11
    iput-object p2, p0, Lcom/rnfingerprint/DialogResultHandler;->successCallback:Lcom/facebook/react/bridge/Callback;

    return-void
.end method


# virtual methods
.method public onAuthenticated()V
    .locals 4

    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lcom/rnfingerprint/FingerprintAuthModule;->inProgress:Z

    .line 17
    iget-object v1, p0, Lcom/rnfingerprint/DialogResultHandler;->successCallback:Lcom/facebook/react/bridge/Callback;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Successfully authenticated."

    aput-object v3, v2, v0

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public onCancelled()V
    .locals 4

    const/4 v0, 0x0

    .line 27
    sput-boolean v0, Lcom/rnfingerprint/FingerprintAuthModule;->inProgress:Z

    .line 28
    iget-object v1, p0, Lcom/rnfingerprint/DialogResultHandler;->errorCallback:Lcom/facebook/react/bridge/Callback;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "cancelled"

    aput-object v3, v2, v0

    const/16 v0, 0x6a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/rnfingerprint/FingerprintAuthModule;->inProgress:Z

    .line 23
    iget-object v1, p0, Lcom/rnfingerprint/DialogResultHandler;->errorCallback:Lcom/facebook/react/bridge/Callback;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method
