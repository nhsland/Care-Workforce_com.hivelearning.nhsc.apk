.class Lio/invertase/firebase/auth/RNFirebaseAuth$10;
.super Ljava/lang/Object;
.source "RNFirebaseAuth.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/auth/RNFirebaseAuth;->signInWithEmailLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lio/invertase/firebase/auth/RNFirebaseAuth;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$10;->this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

    iput-object p2, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$10;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/auth/AuthResult;)V
    .locals 2

    const-string v0, "RNFirebaseAuth"

    const-string v1, "signInWithEmailLink:onComplete:success"

    .line 386
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$10;->this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

    iget-object v1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$10;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0, p1, v1}, Lio/invertase/firebase/auth/RNFirebaseAuth;->access$300(Lio/invertase/firebase/auth/RNFirebaseAuth;Lcom/google/firebase/auth/AuthResult;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 383
    check-cast p1, Lcom/google/firebase/auth/AuthResult;

    invoke-virtual {p0, p1}, Lio/invertase/firebase/auth/RNFirebaseAuth$10;->onSuccess(Lcom/google/firebase/auth/AuthResult;)V

    return-void
.end method
