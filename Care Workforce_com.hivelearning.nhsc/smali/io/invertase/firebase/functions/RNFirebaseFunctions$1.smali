.class Lio/invertase/firebase/functions/RNFirebaseFunctions$1;
.super Ljava/lang/Object;
.source "RNFirebaseFunctions.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/functions/RNFirebaseFunctions;->httpsCallable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/functions/RNFirebaseFunctions;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lio/invertase/firebase/functions/RNFirebaseFunctions;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lio/invertase/firebase/functions/RNFirebaseFunctions$1;->this$0:Lio/invertase/firebase/functions/RNFirebaseFunctions;

    iput-object p2, p0, Lio/invertase/firebase/functions/RNFirebaseFunctions$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lio/invertase/firebase/functions/RNFirebaseFunctions$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "function:call:onFailure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/invertase/firebase/functions/RNFirebaseFunctions$1;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RNFirebaseFunctions"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 133
    instance-of v1, p1, Lcom/google/firebase/functions/FirebaseFunctionsException;

    if-eqz v1, :cond_0

    .line 134
    check-cast p1, Lcom/google/firebase/functions/FirebaseFunctionsException;

    .line 135
    invoke-virtual {p1}, Lcom/google/firebase/functions/FirebaseFunctionsException;->getDetails()Ljava/lang/Object;

    move-result-object v1

    .line 137
    invoke-virtual {p1}, Lcom/google/firebase/functions/FirebaseFunctionsException;->getCode()Lcom/google/firebase/functions/FirebaseFunctionsException$Code;

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Lcom/google/firebase/functions/FirebaseFunctionsException$Code;->name()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-virtual {p1}, Lcom/google/firebase/functions/FirebaseFunctionsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    :goto_0
    const-string v3, "code"

    .line 144
    invoke-static {v3, v2, v0}, Lio/invertase/firebase/Utils;->mapPutValue(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/react/bridge/WritableMap;)V

    const-string v2, "message"

    .line 145
    invoke-static {v2, p1, v0}, Lio/invertase/firebase/Utils;->mapPutValue(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/react/bridge/WritableMap;)V

    const/4 p1, 0x1

    .line 146
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "__error"

    invoke-static {v2, p1, v0}, Lio/invertase/firebase/Utils;->mapPutValue(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/react/bridge/WritableMap;)V

    const-string p1, "details"

    .line 147
    invoke-static {p1, v1, v0}, Lio/invertase/firebase/Utils;->mapPutValue(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/react/bridge/WritableMap;)V

    .line 148
    iget-object p1, p0, Lio/invertase/firebase/functions/RNFirebaseFunctions$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method
