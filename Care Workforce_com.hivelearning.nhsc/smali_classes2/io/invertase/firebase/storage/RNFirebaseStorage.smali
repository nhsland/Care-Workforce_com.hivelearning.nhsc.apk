.class public Lio/invertase/firebase/storage/RNFirebaseStorage;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNFirebaseStorage.java"


# static fields
.field private static final CachesDirectoryPath:Ljava/lang/String; = "CACHES_DIRECTORY_PATH"

.field private static final DocumentDirectoryPath:Ljava/lang/String; = "DOCUMENT_DIRECTORY_PATH"

.field private static final ExternalDirectoryPath:Ljava/lang/String; = "EXTERNAL_DIRECTORY_PATH"

.field private static final ExternalStorageDirectoryPath:Ljava/lang/String; = "EXTERNAL_STORAGE_DIRECTORY_PATH"

.field private static final FileTypeDirectory:Ljava/lang/String; = "FILETYPE_DIRECTORY"

.field private static final FileTypeRegular:Ljava/lang/String; = "FILETYPE_REGULAR"

.field private static final PicturesDirectoryPath:Ljava/lang/String; = "PICTURES_DIRECTORY_PATH"

.field private static final STORAGE_DOWNLOAD_FAILURE:Ljava/lang/String; = "download_failure"

.field private static final STORAGE_DOWNLOAD_SUCCESS:Ljava/lang/String; = "download_success"

.field private static final STORAGE_EVENT:Ljava/lang/String; = "storage_event"

.field private static final STORAGE_STATE_CHANGED:Ljava/lang/String; = "state_changed"

.field private static final STORAGE_UPLOAD_FAILURE:Ljava/lang/String; = "upload_failure"

.field private static final STORAGE_UPLOAD_SUCCESS:Ljava/lang/String; = "upload_success"

.field private static final TAG:Ljava/lang/String; = "RNFirebaseStorage"

.field private static final TemporaryDirectoryPath:Ljava/lang/String; = "TEMP_DIRECTORY_PATH"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const-string p1, "RNFirebaseStorage"

    const-string v0, "New instance"

    .line 66
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/storage/RNFirebaseStorage;->promiseRejectStorageException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$100(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/google/firebase/storage/StorageMetadata;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lio/invertase/firebase/storage/RNFirebaseStorage;->getMetadataAsMap(Lcom/google/firebase/storage/StorageMetadata;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lio/invertase/firebase/storage/RNFirebaseStorage;->getDownloadTaskAsMap(Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lio/invertase/firebase/storage/RNFirebaseStorage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lio/invertase/firebase/storage/RNFirebaseStorage;->sendJSEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method static synthetic access$400(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/google/firebase/storage/UploadTask$TaskSnapshot;Lcom/google/android/gms/tasks/OnSuccessListener;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/storage/RNFirebaseStorage;->getUploadTaskAsMap(Lcom/google/firebase/storage/UploadTask$TaskSnapshot;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    return-void
.end method

.method static synthetic access$500(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/google/firebase/storage/UploadTask$TaskSnapshot;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lio/invertase/firebase/storage/RNFirebaseStorage;->getRespAsMap(Lcom/google/firebase/storage/UploadTask$TaskSnapshot;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method private buildMetadataFromMap(Lcom/facebook/react/bridge/ReadableMap;Landroid/net/Uri;)Lcom/google/firebase/storage/StorageMetadata;
    .locals 6
    .param p2    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "contentType"

    .line 487
    new-instance v1, Lcom/google/firebase/storage/StorageMetadata$Builder;

    invoke-direct {v1}, Lcom/google/firebase/storage/StorageMetadata$Builder;-><init>()V

    .line 490
    :try_start_0
    invoke-static {p1}, Lio/invertase/firebase/Utils;->recursivelyDeconstructReadableMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "customMetadata"

    .line 491
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 493
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 494
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setCustomMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    goto :goto_0

    :cond_0
    const-string v3, "cacheControl"

    .line 498
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setCacheControl(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    const-string v3, "contentDisposition"

    .line 499
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setContentDisposition(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    const-string v3, "contentEncoding"

    .line 500
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setContentEncoding(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    const-string v3, "contentLanguage"

    .line 501
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setContentLanguage(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    .line 503
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 504
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setContentType(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_3

    .line 509
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content"

    .line 510
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 511
    invoke-virtual {p0}, Lio/invertase/firebase/storage/RNFirebaseStorage;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 512
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 515
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 514
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 517
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p2

    .line 519
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 518
    invoke-virtual {p2, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_3

    .line 522
    invoke-virtual {v1, p1}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setContentType(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 525
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error while building meta data "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RNFirebaseStorage"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageMetadata$Builder;->build()Lcom/google/firebase/storage/StorageMetadata;

    move-result-object p1

    return-object p1
.end method

.method private getDownloadTaskAsMap(Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 538
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 539
    invoke-virtual {p1}, Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;->getBytesTransferred()J

    move-result-wide v1

    long-to-double v1, v1

    const-string v3, "bytesTransferred"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 543
    invoke-virtual {p1}, Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;->getStorage()Lcom/google/firebase/storage/StorageReference;

    move-result-object v1

    .line 544
    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ref"

    .line 540
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-virtual {p1}, Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;->getTask()Lcom/google/firebase/storage/StorageTask;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/invertase/firebase/storage/RNFirebaseStorage;->getTaskStatus(Lcom/google/firebase/storage/StorageTask;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "state"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p1}, Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;->getTotalByteCount()J

    move-result-wide v1

    long-to-double v1, v1

    const-string p1, "totalBytes"

    invoke-interface {v0, p1, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method private getMetadataAsMap(Lcom/google/firebase/storage/StorageMetadata;)Lcom/facebook/react/bridge/WritableMap;
    .locals 5

    .line 619
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 620
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageMetadata;->getBucket()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bucket"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageMetadata;->getGeneration()Ljava/lang/String;

    move-result-object v1

    const-string v2, "generation"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageMetadata;->getMetadataGeneration()Ljava/lang/String;

    move-result-object v1

    const-string v2, "metageneration"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageMetadata;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fullPath"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageMetadata;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageMetadata;->getSizeBytes()J

    move-result-wide v1

    long-to-double v1, v1

    const-string v3, "size"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 626
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageMetadata;->getCreationTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    const-string v3, "timeCreated"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 627
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageMetadata;->getUpdatedTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    const-string v3, "updated"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 628
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageMetadata;->getMd5Hash()Ljava/lang/String;

    move-result-object v1

    const-string v2, "md5hash"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageMetadata;->getCacheControl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cacheControl"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageMetadata;->getContentDisposition()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentDisposition"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageMetadata;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentEncoding"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageMetadata;->getContentLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentLanguage"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageMetadata;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentType"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 636
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageMetadata;->getCustomMetadataKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 637
    invoke-virtual {p1, v3}, Lcom/google/firebase/storage/StorageMetadata;->getCustomMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "customMetadata"

    .line 639
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-object v0
.end method

.method private getReference(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;
    .locals 1

    .line 452
    invoke-static {p2}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object p2

    .line 453
    invoke-static {p2}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p2

    const-string v0, "url::"

    .line 455
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 456
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 457
    invoke-virtual {p2, p1}, Lcom/google/firebase/storage/FirebaseStorage;->getReferenceFromUrl(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    return-object p1

    .line 459
    :cond_0
    invoke-virtual {p2, p1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    return-object p1
.end method

.method private getRespAsMap(Lcom/google/firebase/storage/UploadTask$TaskSnapshot;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 591
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 593
    invoke-virtual {p1}, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;->getBytesTransferred()J

    move-result-wide v1

    long-to-double v1, v1

    const-string v3, "bytesTransferred"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string v1, "downloadURL"

    .line 594
    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-virtual {p1}, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;->getMetadata()Lcom/google/firebase/storage/StorageMetadata;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 598
    invoke-direct {p0, p2}, Lio/invertase/firebase/storage/RNFirebaseStorage;->getMetadataAsMap(Lcom/google/firebase/storage/StorageMetadata;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    const-string v1, "metadata"

    .line 599
    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 605
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;->getStorage()Lcom/google/firebase/storage/StorageReference;

    move-result-object p2

    .line 606
    invoke-virtual {p2}, Lcom/google/firebase/storage/StorageReference;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ref"

    .line 602
    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {p1}, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;->getTask()Lcom/google/firebase/storage/StorageTask;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/invertase/firebase/storage/RNFirebaseStorage;->getTaskStatus(Lcom/google/firebase/storage/StorageTask;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "state"

    invoke-interface {v0, v1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-virtual {p1}, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;->getTotalByteCount()J

    move-result-wide p1

    long-to-double p1, p1

    const-string v1, "totalBytes"

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method private getTaskStatus(Lcom/google/firebase/storage/StorageTask;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageTask<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 651
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageTask;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "running"

    return-object p1

    .line 653
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageTask;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "paused"

    return-object p1

    .line 655
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageTask;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageTask;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 657
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageTask;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "cancelled"

    return-object p1

    .line 659
    :cond_3
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageTask;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p1, "error"

    return-object p1

    :cond_4
    const-string p1, "unknown"

    return-object p1

    :cond_5
    :goto_0
    const-string p1, "success"

    return-object p1
.end method

.method private getURI(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 470
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 473
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 475
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private getUploadTaskAsMap(Lcom/google/firebase/storage/UploadTask$TaskSnapshot;Lcom/google/android/gms/tasks/OnSuccessListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/UploadTask$TaskSnapshot;",
            "Lcom/google/android/gms/tasks/OnSuccessListener<",
            "Lcom/facebook/react/bridge/WritableMap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 565
    invoke-virtual {p1}, Lcom/google/firebase/storage/UploadTask$TaskSnapshot;->getStorage()Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    .line 566
    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->getDownloadUrl()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lio/invertase/firebase/storage/RNFirebaseStorage$19;

    invoke-direct {v1, p0, p1, p2}, Lio/invertase/firebase/storage/RNFirebaseStorage$19;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/google/firebase/storage/UploadTask$TaskSnapshot;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    .line 567
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lio/invertase/firebase/storage/RNFirebaseStorage$18;

    invoke-direct {v1, p0, p1, p2}, Lio/invertase/firebase/storage/RNFirebaseStorage$18;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/google/firebase/storage/UploadTask$TaskSnapshot;Lcom/google/android/gms/tasks/OnSuccessListener;)V

    .line 577
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    .line 585
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private promiseRejectStorageException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V
    .locals 5

    const-string v0, "storage/unknown"

    .line 688
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 691
    :try_start_0
    instance-of v2, p2, Lcom/google/firebase/storage/StorageException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "An unknown error has occurred."

    if-eqz v2, :cond_6

    .line 692
    :try_start_1
    move-object v2, p2

    check-cast v2, Lcom/google/firebase/storage/StorageException;

    .line 694
    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageException;->getErrorCode()I

    move-result v2

    const/16 v4, -0x32f0

    if-eq v2, v4, :cond_5

    const/16 v4, -0x32c8

    if-eq v2, v4, :cond_4

    const/16 v3, -0x32e7

    if-eq v2, v3, :cond_3

    const/16 v3, -0x32e6

    if-eq v2, v3, :cond_2

    const/16 v3, -0x32dd

    if-eq v2, v3, :cond_1

    const/16 v3, -0x32dc

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "storage/object-not-found"

    const-string v1, "No object exists at the desired reference."

    goto :goto_0

    :pswitch_1
    const-string v0, "storage/bucket-not-found"

    const-string v1, "No bucket is configured for Firebase Storage."

    goto :goto_0

    :pswitch_2
    const-string v0, "storage/project-not-found"

    const-string v1, "No project is configured for Firebase Storage."

    goto :goto_0

    :pswitch_3
    const-string v0, "storage/quota-exceeded"

    const-string v1, "Quota on your Firebase Storage bucket has been exceeded."

    goto :goto_0

    :cond_0
    const-string v0, "storage/unauthenticated"

    const-string v1, "User is unauthenticated. Authenticate and try again."

    goto :goto_0

    :cond_1
    const-string v0, "storage/unauthorized"

    const-string v1, "User is not authorized to perform the desired action."

    goto :goto_0

    :cond_2
    const-string v0, "storage/retry-limit-exceeded"

    const-string v1, "The maximum time limit on an operation (upload, download, delete, etc.) has been exceeded."

    goto :goto_0

    :cond_3
    const-string v0, "storage/non-matching-checksum"

    const-string v1, "File on the client does not match the checksum of the file received by the server."

    goto :goto_0

    :cond_4
    move-object v1, v3

    goto :goto_0

    :cond_5
    const-string v0, "storage/cancelled"

    const-string v1, "User cancelled the operation."
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object v3, v1

    .line 741
    :cond_6
    invoke-interface {p1, v0, v3, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v2

    invoke-interface {p1, v0, v1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 742
    throw v2

    nop

    :pswitch_data_0
    .packed-switch -0x32d5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendJSEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2

    .line 672
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "body"

    .line 673
    invoke-interface {v0, v1, p4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    const-string p4, "path"

    .line 674
    invoke-interface {v0, p4, p3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "eventName"

    .line 675
    invoke-interface {v0, p3, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "appName"

    .line 676
    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lio/invertase/firebase/storage/RNFirebaseStorage;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p1

    const-string p2, "storage_event"

    invoke-static {p1, p2, v0}, Lio/invertase/firebase/Utils;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 110
    invoke-direct {p0, p2, p1}, Lio/invertase/firebase/storage/RNFirebaseStorage;->getReference(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->delete()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/storage/RNFirebaseStorage$2;

    invoke-direct {p2, p0, p3}, Lio/invertase/firebase/storage/RNFirebaseStorage$2;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/facebook/react/bridge/Promise;)V

    .line 113
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/storage/RNFirebaseStorage$1;

    invoke-direct {p2, p0, p3}, Lio/invertase/firebase/storage/RNFirebaseStorage$1;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/facebook/react/bridge/Promise;)V

    .line 119
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 232
    invoke-virtual {p0}, Lio/invertase/firebase/storage/RNFirebaseStorage;->isExternalStorageWritable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "storage/invalid-device-file-path"

    const-string p2, "The specified device file path is invalid or is restricted."

    .line 233
    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadFile path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RNFirebaseStorage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-direct {p0, p2, p1}, Lio/invertase/firebase/storage/RNFirebaseStorage;->getReference(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    .line 244
    new-instance v1, Lio/invertase/firebase/storage/RNFirebaseStorage$13;

    invoke-direct {v1, p0, p3}, Lio/invertase/firebase/storage/RNFirebaseStorage$13;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageReference;->getStream(Lcom/google/firebase/storage/StreamDownloadTask$StreamProcessor;)Lcom/google/firebase/storage/StreamDownloadTask;

    move-result-object p3

    new-instance v0, Lio/invertase/firebase/storage/RNFirebaseStorage$12;

    invoke-direct {v0, p0, p1, p2}, Lio/invertase/firebase/storage/RNFirebaseStorage$12;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p3, v0}, Lcom/google/firebase/storage/StreamDownloadTask;->addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p3

    new-instance v0, Lio/invertase/firebase/storage/RNFirebaseStorage$11;

    invoke-direct {v0, p0, p1, p2}, Lio/invertase/firebase/storage/RNFirebaseStorage$11;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p3, v0}, Lcom/google/firebase/storage/StorageTask;->addOnPausedListener(Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p3

    new-instance v0, Lio/invertase/firebase/storage/RNFirebaseStorage$10;

    invoke-direct {v0, p0, p1, p2, p4}, Lio/invertase/firebase/storage/RNFirebaseStorage$10;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    .line 290
    invoke-virtual {p3, v0}, Lcom/google/firebase/storage/StorageTask;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/storage/RNFirebaseStorage$9;

    invoke-direct {p2, p0, p4}, Lio/invertase/firebase/storage/RNFirebaseStorage$9;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/facebook/react/bridge/Promise;)V

    .line 300
    invoke-virtual {p1, p2}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 753
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 758
    invoke-virtual {p0}, Lio/invertase/firebase/storage/RNFirebaseStorage;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    .line 759
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 760
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DOCUMENT_DIRECTORY_PATH"

    .line 755
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    invoke-virtual {p0}, Lio/invertase/firebase/storage/RNFirebaseStorage;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    .line 766
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 767
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TEMP_DIRECTORY_PATH"

    .line 762
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 772
    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 773
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PICTURES_DIRECTORY_PATH"

    .line 769
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    invoke-virtual {p0}, Lio/invertase/firebase/storage/RNFirebaseStorage;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    .line 779
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 780
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CACHES_DIRECTORY_PATH"

    .line 775
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 782
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FILETYPE_REGULAR"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 783
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FILETYPE_DIRECTORY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "EXTERNAL_STORAGE_DIRECTORY_PATH"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 787
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 789
    :cond_0
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    :goto_0
    invoke-virtual {p0}, Lio/invertase/firebase/storage/RNFirebaseStorage;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    .line 794
    invoke-virtual {v1, v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "EXTERNAL_DIRECTORY_PATH"

    if-eqz v1, :cond_1

    .line 796
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 798
    :cond_1
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-object v0
.end method

.method public getDownloadURL(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDownloadURL path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RNFirebaseStorage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0, p2, p1}, Lio/invertase/firebase/storage/RNFirebaseStorage;->getReference(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getDownloadUrl()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 140
    new-instance p2, Lio/invertase/firebase/storage/RNFirebaseStorage$4;

    invoke-direct {p2, p0, p3}, Lio/invertase/firebase/storage/RNFirebaseStorage$4;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/facebook/react/bridge/Promise;)V

    .line 141
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/storage/RNFirebaseStorage$3;

    invoke-direct {p2, p0, p3}, Lio/invertase/firebase/storage/RNFirebaseStorage$3;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/facebook/react/bridge/Promise;)V

    .line 147
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public getMetadata(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 164
    invoke-direct {p0, p2, p1}, Lio/invertase/firebase/storage/RNFirebaseStorage;->getReference(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getMetadata()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/storage/RNFirebaseStorage$6;

    invoke-direct {p2, p0, p3}, Lio/invertase/firebase/storage/RNFirebaseStorage$6;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/facebook/react/bridge/Promise;)V

    .line 167
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/storage/RNFirebaseStorage$5;

    invoke-direct {p2, p0, p3}, Lio/invertase/firebase/storage/RNFirebaseStorage$5;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/facebook/react/bridge/Promise;)V

    .line 173
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNFirebaseStorage"

    return-object v0
.end method

.method public isExternalStorageWritable()Z
    .locals 4

    .line 83
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const-string v1, "mounted_ro"

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public putFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 369
    invoke-direct {p0, p2, p1}, Lio/invertase/firebase/storage/RNFirebaseStorage;->getReference(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RNFirebaseStorage"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :try_start_0
    invoke-direct {p0, p3}, Lio/invertase/firebase/storage/RNFirebaseStorage;->getURI(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 375
    invoke-direct {p0, p4, p3}, Lio/invertase/firebase/storage/RNFirebaseStorage;->buildMetadataFromMap(Lcom/facebook/react/bridge/ReadableMap;Landroid/net/Uri;)Lcom/google/firebase/storage/StorageMetadata;

    move-result-object p4

    .line 376
    invoke-virtual {v0, p3, p4}, Lcom/google/firebase/storage/StorageReference;->putFile(Landroid/net/Uri;Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/UploadTask;

    move-result-object p3

    .line 379
    new-instance p4, Lio/invertase/firebase/storage/RNFirebaseStorage$17;

    invoke-direct {p4, p0, p5}, Lio/invertase/firebase/storage/RNFirebaseStorage$17;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/facebook/react/bridge/Promise;)V

    .line 380
    invoke-virtual {p3, p4}, Lcom/google/firebase/storage/UploadTask;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p3

    new-instance p4, Lio/invertase/firebase/storage/RNFirebaseStorage$16;

    invoke-direct {p4, p0, p1, p2, p5}, Lio/invertase/firebase/storage/RNFirebaseStorage$16;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    .line 389
    invoke-virtual {p3, p4}, Lcom/google/firebase/storage/StorageTask;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p3

    new-instance p4, Lio/invertase/firebase/storage/RNFirebaseStorage$15;

    invoke-direct {p4, p0, p1, p2}, Lio/invertase/firebase/storage/RNFirebaseStorage$15;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-virtual {p3, p4}, Lcom/google/firebase/storage/StorageTask;->addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p3

    new-instance p4, Lio/invertase/firebase/storage/RNFirebaseStorage$14;

    invoke-direct {p4, p0, p1, p2}, Lio/invertase/firebase/storage/RNFirebaseStorage$14;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p3, p4}, Lcom/google/firebase/storage/StorageTask;->addOnPausedListener(Lcom/google/firebase/storage/OnPausedListener;)Lcom/google/firebase/storage/StorageTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 441
    invoke-direct {p0, p5, p1}, Lio/invertase/firebase/storage/RNFirebaseStorage;->promiseRejectStorageException(Lcom/facebook/react/bridge/Promise;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setMaxDownloadRetryTime(Ljava/lang/String;D)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 318
    invoke-static {p1}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    .line 319
    invoke-static {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    double-to-long p2, p2

    .line 321
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/storage/FirebaseStorage;->setMaxDownloadRetryTimeMillis(J)V

    return-void
.end method

.method public setMaxOperationRetryTime(Ljava/lang/String;D)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 332
    invoke-static {p1}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    .line 333
    invoke-static {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    double-to-long p2, p2

    .line 335
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/storage/FirebaseStorage;->setMaxOperationRetryTimeMillis(J)V

    return-void
.end method

.method public setMaxUploadRetryTime(Ljava/lang/String;D)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 346
    invoke-static {p1}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    .line 347
    invoke-static {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    double-to-long p2, p2

    .line 349
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/storage/FirebaseStorage;->setMaxUploadRetryTimeMillis(J)V

    return-void
.end method

.method public updateMetadata(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 196
    invoke-direct {p0, p2, p1}, Lio/invertase/firebase/storage/RNFirebaseStorage;->getReference(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    const/4 p2, 0x0

    .line 197
    invoke-direct {p0, p3, p2}, Lio/invertase/firebase/storage/RNFirebaseStorage;->buildMetadataFromMap(Lcom/facebook/react/bridge/ReadableMap;Landroid/net/Uri;)Lcom/google/firebase/storage/StorageMetadata;

    move-result-object p2

    .line 200
    invoke-virtual {p1, p2}, Lcom/google/firebase/storage/StorageReference;->updateMetadata(Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/storage/RNFirebaseStorage$8;

    invoke-direct {p2, p0, p4}, Lio/invertase/firebase/storage/RNFirebaseStorage$8;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/facebook/react/bridge/Promise;)V

    .line 201
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lio/invertase/firebase/storage/RNFirebaseStorage$7;

    invoke-direct {p2, p0, p4}, Lio/invertase/firebase/storage/RNFirebaseStorage$7;-><init>(Lio/invertase/firebase/storage/RNFirebaseStorage;Lcom/facebook/react/bridge/Promise;)V

    .line 208
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
