.class Lio/invertase/firebase/auth/RNFirebaseAuth$35;
.super Ljava/lang/Object;
.source "RNFirebaseAuth.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/auth/RNFirebaseAuth;->verifyPasswordResetCode(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lio/invertase/firebase/auth/RNFirebaseAuth;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 1659
    iput-object p1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$35;->this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

    iput-object p2, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$35;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/tasks/Task;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1662
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "RNFirebaseAuth"

    if-eqz v0, :cond_0

    const-string v0, "verifyPasswordResetCode:onComplete:success"

    .line 1663
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    iget-object v0, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$35;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 1666
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    const-string v0, "verifyPasswordResetCode:onComplete:failure"

    .line 1667
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1668
    iget-object v0, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$35;->this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

    iget-object v1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$35;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0, v1, p1}, Lio/invertase/firebase/auth/RNFirebaseAuth;->access$200(Lio/invertase/firebase/auth/RNFirebaseAuth;Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
