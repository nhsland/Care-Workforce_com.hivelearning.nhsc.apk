.class Lio/invertase/firebase/storage/RNFirebaseStorage$16$3;
.super Ljava/lang/Object;
.source "RNFirebaseStorage.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/storage/RNFirebaseStorage$16;->onSuccess(Lcom/google/firebase/storage/UploadTask$TaskSnapshot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/facebook/react/bridge/WritableMap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/invertase/firebase/storage/RNFirebaseStorage$16;


# direct methods
.method constructor <init>(Lio/invertase/firebase/storage/RNFirebaseStorage$16;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$16$3;->this$1:Lio/invertase/firebase/storage/RNFirebaseStorage$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1

    .line 411
    iget-object v0, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$16$3;->this$1:Lio/invertase/firebase/storage/RNFirebaseStorage$16;

    iget-object v0, v0, Lio/invertase/firebase/storage/RNFirebaseStorage$16;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 408
    check-cast p1, Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {p0, p1}, Lio/invertase/firebase/storage/RNFirebaseStorage$16$3;->onSuccess(Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method
