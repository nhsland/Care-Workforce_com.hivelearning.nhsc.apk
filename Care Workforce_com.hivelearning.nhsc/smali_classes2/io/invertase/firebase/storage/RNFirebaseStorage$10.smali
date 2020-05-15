.class Lio/invertase/firebase/storage/RNFirebaseStorage$10;
.super Ljava/lang/Object;
.source "RNFirebaseStorage.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/storage/RNFirebaseStorage;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;",
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

    .line 290
    iput-object p1, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$10;->this$0:Lio/invertase/firebase/storage/RNFirebaseStorage;

    iput-object p2, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$10;->val$appName:Ljava/lang/String;

    iput-object p3, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$10;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$10;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;)V
    .locals 5

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadFile success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RNFirebaseStorage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$10;->this$0:Lio/invertase/firebase/storage/RNFirebaseStorage;

    invoke-static {v0, p1}, Lio/invertase/firebase/storage/RNFirebaseStorage;->access$200(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$10;->this$0:Lio/invertase/firebase/storage/RNFirebaseStorage;

    iget-object v2, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$10;->val$appName:Ljava/lang/String;

    iget-object v3, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$10;->val$path:Ljava/lang/String;

    const-string v4, "download_success"

    invoke-static {v1, v2, v4, v3, v0}, Lio/invertase/firebase/storage/RNFirebaseStorage;->access$300(Lio/invertase/firebase/storage/RNFirebaseStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 296
    iget-object v0, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$10;->this$0:Lio/invertase/firebase/storage/RNFirebaseStorage;

    invoke-static {v0, p1}, Lio/invertase/firebase/storage/RNFirebaseStorage;->access$200(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 297
    iget-object v0, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$10;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 290
    check-cast p1, Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;

    invoke-virtual {p0, p1}, Lio/invertase/firebase/storage/RNFirebaseStorage$10;->onSuccess(Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;)V

    return-void
.end method
