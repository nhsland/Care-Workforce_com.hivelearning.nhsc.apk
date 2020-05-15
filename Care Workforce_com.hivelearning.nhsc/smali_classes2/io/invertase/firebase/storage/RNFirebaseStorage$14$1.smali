.class Lio/invertase/firebase/storage/RNFirebaseStorage$14$1;
.super Ljava/lang/Object;
.source "RNFirebaseStorage.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/storage/RNFirebaseStorage$14;->onPaused(Lcom/google/firebase/storage/UploadTask$TaskSnapshot;)V
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
.field final synthetic this$1:Lio/invertase/firebase/storage/RNFirebaseStorage$14;


# direct methods
.method constructor <init>(Lio/invertase/firebase/storage/RNFirebaseStorage$14;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$14$1;->this$1:Lio/invertase/firebase/storage/RNFirebaseStorage$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/facebook/react/bridge/WritableMap;)V
    .locals 4

    .line 435
    iget-object v0, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$14$1;->this$1:Lio/invertase/firebase/storage/RNFirebaseStorage$14;

    iget-object v0, v0, Lio/invertase/firebase/storage/RNFirebaseStorage$14;->this$0:Lio/invertase/firebase/storage/RNFirebaseStorage;

    iget-object v1, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$14$1;->this$1:Lio/invertase/firebase/storage/RNFirebaseStorage$14;

    iget-object v1, v1, Lio/invertase/firebase/storage/RNFirebaseStorage$14;->val$appName:Ljava/lang/String;

    iget-object v2, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$14$1;->this$1:Lio/invertase/firebase/storage/RNFirebaseStorage$14;

    iget-object v2, v2, Lio/invertase/firebase/storage/RNFirebaseStorage$14;->val$path:Ljava/lang/String;

    const-string v3, "state_changed"

    invoke-static {v0, v1, v3, v2, p1}, Lio/invertase/firebase/storage/RNFirebaseStorage;->access$300(Lio/invertase/firebase/storage/RNFirebaseStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 432
    check-cast p1, Lcom/facebook/react/bridge/WritableMap;

    invoke-virtual {p0, p1}, Lio/invertase/firebase/storage/RNFirebaseStorage$14$1;->onSuccess(Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method
