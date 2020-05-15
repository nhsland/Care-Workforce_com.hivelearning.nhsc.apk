.class Lio/invertase/firebase/auth/RNFirebaseAuth$23$1;
.super Ljava/lang/Object;
.source "RNFirebaseAuth.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/auth/RNFirebaseAuth$23;->onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/invertase/firebase/auth/RNFirebaseAuth$23;

.field final synthetic val$phoneAuthCredential:Lcom/google/firebase/auth/PhoneAuthCredential;


# direct methods
.method constructor <init>(Lio/invertase/firebase/auth/RNFirebaseAuth$23;Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 0

    .line 883
    iput-object p1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$23$1;->this$1:Lio/invertase/firebase/auth/RNFirebaseAuth$23;

    iput-object p2, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$23$1;->val$phoneAuthCredential:Lcom/google/firebase/auth/PhoneAuthCredential;

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
            "Lcom/google/firebase/auth/AuthResult;",
            ">;)V"
        }
    .end annotation

    .line 886
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, "RNFirebaseAuth"

    if-eqz v0, :cond_0

    const-string p1, "signInWithPhoneNumber:autoVerified:signInWithCredential:onComplete:success"

    .line 888
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object p1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$23$1;->this$1:Lio/invertase/firebase/auth/RNFirebaseAuth$23;

    invoke-static {p1}, Lio/invertase/firebase/auth/RNFirebaseAuth$23;->access$600(Lio/invertase/firebase/auth/RNFirebaseAuth$23;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 895
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 898
    iget-object v1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$23$1;->val$phoneAuthCredential:Lcom/google/firebase/auth/PhoneAuthCredential;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/auth/PhoneAuthCredential;->writeToParcel(Landroid/os/Parcel;I)V

    const/16 v1, 0x10

    .line 899
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 900
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 901
    iget-object v2, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$23$1;->this$1:Lio/invertase/firebase/auth/RNFirebaseAuth$23;

    iget-object v2, v2, Lio/invertase/firebase/auth/RNFirebaseAuth$23;->this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

    invoke-static {v2, v1}, Lio/invertase/firebase/auth/RNFirebaseAuth;->access$702(Lio/invertase/firebase/auth/RNFirebaseAuth;Ljava/lang/String;)Ljava/lang/String;

    .line 902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const-string v0, "verificationId"

    .line 904
    invoke-interface {p1, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$23$1;->this$1:Lio/invertase/firebase/auth/RNFirebaseAuth$23;

    iget-object v0, v0, Lio/invertase/firebase/auth/RNFirebaseAuth$23;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    goto :goto_0

    .line 910
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    const-string v0, "signInWithPhoneNumber:autoVerified:signInWithCredential:onComplete:failure"

    .line 911
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 918
    iget-object v0, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$23$1;->this$1:Lio/invertase/firebase/auth/RNFirebaseAuth$23;

    invoke-static {v0}, Lio/invertase/firebase/auth/RNFirebaseAuth$23;->access$600(Lio/invertase/firebase/auth/RNFirebaseAuth$23;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 919
    iget-object v0, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$23$1;->this$1:Lio/invertase/firebase/auth/RNFirebaseAuth$23;

    iget-object v0, v0, Lio/invertase/firebase/auth/RNFirebaseAuth$23;->this$0:Lio/invertase/firebase/auth/RNFirebaseAuth;

    iget-object v1, p0, Lio/invertase/firebase/auth/RNFirebaseAuth$23$1;->this$1:Lio/invertase/firebase/auth/RNFirebaseAuth$23;

    iget-object v1, v1, Lio/invertase/firebase/auth/RNFirebaseAuth$23;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0, v1, p1}, Lio/invertase/firebase/auth/RNFirebaseAuth;->access$200(Lio/invertase/firebase/auth/RNFirebaseAuth;Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method
