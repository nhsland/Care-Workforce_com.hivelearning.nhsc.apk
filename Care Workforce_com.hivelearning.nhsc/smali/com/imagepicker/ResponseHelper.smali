.class public Lcom/imagepicker/ResponseHelper;
.super Ljava/lang/Object;
.source "ResponseHelper.java"


# instance fields
.field private response:Lcom/facebook/react/bridge/WritableMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/imagepicker/ResponseHelper;->response:Lcom/facebook/react/bridge/WritableMap;

    return-void
.end method


# virtual methods
.method public cleanResponse()V
    .locals 1

    .line 19
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/imagepicker/ResponseHelper;->response:Lcom/facebook/react/bridge/WritableMap;

    return-void
.end method

.method public getResponse()Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/imagepicker/ResponseHelper;->response:Lcom/facebook/react/bridge/WritableMap;

    return-object v0
.end method

.method public invokeCancel(Lcom/facebook/react/bridge/Callback;)V
    .locals 3

    .line 61
    invoke-virtual {p0}, Lcom/imagepicker/ResponseHelper;->cleanResponse()V

    .line 62
    iget-object v0, p0, Lcom/imagepicker/ResponseHelper;->response:Lcom/facebook/react/bridge/WritableMap;

    const-string v1, "didCancel"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/imagepicker/ResponseHelper;->invokeResponse(Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public invokeCustomButton(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/imagepicker/ResponseHelper;->cleanResponse()V

    .line 55
    iget-object v0, p0, Lcom/imagepicker/ResponseHelper;->response:Lcom/facebook/react/bridge/WritableMap;

    const-string v1, "customButton"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/imagepicker/ResponseHelper;->invokeResponse(Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public invokeError(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/imagepicker/ResponseHelper;->cleanResponse()V

    .line 70
    iget-object v0, p0, Lcom/imagepicker/ResponseHelper;->response:Lcom/facebook/react/bridge/WritableMap;

    const-string v1, "error"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/imagepicker/ResponseHelper;->invokeResponse(Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public invokeResponse(Lcom/facebook/react/bridge/Callback;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 79
    iget-object v2, p0, Lcom/imagepicker/ResponseHelper;->response:Lcom/facebook/react/bridge/WritableMap;

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/imagepicker/ResponseHelper;->response:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/imagepicker/ResponseHelper;->response:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/imagepicker/ResponseHelper;->response:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/imagepicker/ResponseHelper;->response:Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
