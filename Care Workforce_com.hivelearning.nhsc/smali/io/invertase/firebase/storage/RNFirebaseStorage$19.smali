.class Lio/invertase/firebase/storage/RNFirebaseStorage$19;
.super Ljava/lang/Object;
.source "RNFirebaseStorage.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/storage/RNFirebaseStorage;->getUploadTaskAsMap(Lcom/google/firebase/storage/UploadTask$TaskSnapshot;Lcom/google/android/gms/tasks/OnSuccessListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/storage/RNFirebaseStorage;

.field final synthetic val$listener:Lcom/google/android/gms/tasks/OnSuccessListener;

.field final synthetic val$taskSnapshot:Lcom/google/firebase/storage/UploadTask$TaskSnapshot;


# direct methods
.method constructor <init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/google/firebase/storage/UploadTask$TaskSnapshot;Lcom/google/android/gms/tasks/OnSuccessListener;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$19;->this$0:Lio/invertase/firebase/storage/RNFirebaseStorage;

    iput-object p2, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$19;->val$taskSnapshot:Lcom/google/firebase/storage/UploadTask$TaskSnapshot;

    iput-object p3, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$19;->val$listener:Lcom/google/android/gms/tasks/OnSuccessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 570
    check-cast p1, Lcom/google/firebase/storage/StorageException;

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageException;->getErrorCode()I

    move-result p1

    const/16 v0, -0x32dd

    if-eq p1, v0, :cond_0

    const/16 v0, -0x32d2

    if-ne p1, v0, :cond_1

    .line 572
    :cond_0
    iget-object p1, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$19;->this$0:Lio/invertase/firebase/storage/RNFirebaseStorage;

    iget-object v0, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$19;->val$taskSnapshot:Lcom/google/firebase/storage/UploadTask$TaskSnapshot;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lio/invertase/firebase/storage/RNFirebaseStorage;->access$500(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/google/firebase/storage/UploadTask$TaskSnapshot;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 573
    iget-object v0, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$19;->val$listener:Lcom/google/android/gms/tasks/OnSuccessListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
