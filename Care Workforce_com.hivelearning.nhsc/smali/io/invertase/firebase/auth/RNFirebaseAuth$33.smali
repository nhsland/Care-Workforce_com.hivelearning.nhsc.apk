.class Lio/invertase/firebase/auth/RNFirebaseAuth$33;
.super Ljava/lang/Object;
.source "RNFirebaseAuth.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/auth/RNFirebaseAuth;->getIdTokenResult(Ljava/lang/String;Ljava/lang/Boolean;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/auth/GetTokenResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lio/invertase/firebase/auth/RNFirebaseAuth;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 1526
    iput-object p1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$33;->this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

    iput-object p2, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$33;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/GetTokenResult;",
            ">;)V"
        }
    .end annotation

    .line 1529
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "RNFirebaseAuth"

    if-eqz v0, :cond_0

    const-string v0, "getIdTokenResult:onComplete:success"

    .line 1530
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/GetTokenResult;

    .line 1532
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 1536
    invoke-virtual {p1}, Lcom/google/firebase/auth/GetTokenResult;->getAuthTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/invertase/firebase/Utils;->timestampToUTC(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "authTime"

    .line 1534
    invoke-static {v2, v1, v0}, Lio/invertase/firebase/Utils;->mapPutValue(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/react/bridge/WritableMap;)V

    .line 1542
    invoke-virtual {p1}, Lcom/google/firebase/auth/GetTokenResult;->getExpirationTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/invertase/firebase/Utils;->timestampToUTC(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expirationTime"

    .line 1540
    invoke-static {v2, v1, v0}, Lio/invertase/firebase/Utils;->mapPutValue(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/react/bridge/WritableMap;)V

    .line 1548
    invoke-virtual {p1}, Lcom/google/firebase/auth/GetTokenResult;->getIssuedAtTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/invertase/firebase/Utils;->timestampToUTC(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "issuedAtTime"

    .line 1546
    invoke-static {v2, v1, v0}, Lio/invertase/firebase/Utils;->mapPutValue(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/react/bridge/WritableMap;)V

    .line 1554
    invoke-virtual {p1}, Lcom/google/firebase/auth/GetTokenResult;->getClaims()Ljava/util/Map;

    move-result-object v1

    const-string v2, "claims"

    .line 1552
    invoke-static {v2, v1, v0}, Lio/invertase/firebase/Utils;->mapPutValue(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/react/bridge/WritableMap;)V

    .line 1560
    invoke-virtual {p1}, Lcom/google/firebase/auth/GetTokenResult;->getSignInProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "signInProvider"

    .line 1558
    invoke-static {v2, v1, v0}, Lio/invertase/firebase/Utils;->mapPutValue(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/react/bridge/WritableMap;)V

    .line 1566
    invoke-virtual {p1}, Lcom/google/firebase/auth/GetTokenResult;->getToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, "token"

    .line 1564
    invoke-static {v1, p1, v0}, Lio/invertase/firebase/Utils;->mapPutValue(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/react/bridge/WritableMap;)V

    .line 1570
    iget-object p1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$33;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 1572
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    const-string v0, "getIdTokenResult:onComplete:failure"

    .line 1573
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1574
    iget-object v0, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$33;->this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

    iget-object v1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$33;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0, v1, p1}, Lio/invertase/firebase/auth/RNFirebaseAuth;->access$200(Lio/invertase/firebase/auth/RNFirebaseAuth;Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
