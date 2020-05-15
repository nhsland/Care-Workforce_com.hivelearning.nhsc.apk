.class Lio/invertase/firebase/storage/RNFirebaseStorage$3;
.super Ljava/lang/Object;
.source "RNFirebaseStorage.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/invertase/firebase/storage/RNFirebaseStorage;->getDownloadURL(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/invertase/firebase/storage/RNFirebaseStorage;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$3;->this$0:Lio/invertase/firebase/storage/RNFirebaseStorage;

    iput-object p2, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$3;->val$promise:Lcom/facebook/react/bridge/Promise;

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

    .line 150
    iget-object v0, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$3;->this$0:Lio/invertase/firebase/storage/RNFirebaseStorage;

    iget-object v1, p0, Lio/invertase/firebase/storage/RNFirebaseStorage$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {v0, v1, p1}, Lio/invertase/firebase/storage/RNFirebaseStorage;->access$000(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method
