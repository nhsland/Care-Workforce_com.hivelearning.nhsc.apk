.class Lio/invertase/firebase/storage/RNFirebaseStorage$16;
.super Ljava/lang/Object;
.source "RNFirebaseStorage.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/storage/RNFirebaseStorage;->putFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/storage/UploadTask$TaskSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/storage/RNFirebaseStorage;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$16;->this$0:Lio/invertase/firebase/storage/RNFirebaseStorage;

    iput-object p2, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$16;->val$appName:Ljava/lang/String;

    iput-object p3, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$16;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$16;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/storage/UploadTask$TaskSnapshot;)V
    .locals 2

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putFile success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RNFirebaseStorage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$16;->this$0:Lio/invertase/firebase/storage/RNFirebaseStorage;

    new-instance v1, Lio/invertase/firebase/storage/RNFirebaseStorage$16$1;

    invoke-direct {v1, p0}, Lio/invertase/firebase/storage/RNFirebaseStorage$16$1;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage$16;)V

    invoke-static {v0, p1, v1}, Lio/invertase/firebase/storage/RNFirebaseStorage;->access$400(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/google/firebase/storage/UploadTask$TaskSnapshot;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    .line 401
    iget-object v0, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$16;->this$0:Lio/invertase/firebase/storage/RNFirebaseStorage;

    new-instance v1, Lio/invertase/firebase/storage/RNFirebaseStorage$16$2;

    invoke-direct {v1, p0}, Lio/invertase/firebase/storage/RNFirebaseStorage$16$2;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage$16;)V

    invoke-static {v0, p1, v1}, Lio/invertase/firebase/storage/RNFirebaseStorage;->access$400(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/google/firebase/storage/UploadTask$TaskSnapshot;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    .line 408
    iget-object v0, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$16;->this$0:Lio/invertase/firebase/storage/RNFirebaseStorage;

    new-instance v1, Lio/invertase/firebase/storage/RNFirebaseStorage$16$3;

    invoke-direct {v1, p0}, Lio/invertase/firebase/storage/RNFirebaseStorage$16$3;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage$16;)V

    invoke-static {v0, p1, v1}, Lio/invertase/firebase/storage/RNFirebaseStorage;->access$400(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/google/firebase/storage/UploadTask$TaskSnapshot;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 389
    check-cast p1, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;

    invoke-virtual {p0, p1}, Lio/invertase/firebase/storage/RNFirebaseStorage$16;->onSuccess(Lcom/google/firebase/storage/UploadTask$TaskSnapshot;)V

    return-void
.end method
