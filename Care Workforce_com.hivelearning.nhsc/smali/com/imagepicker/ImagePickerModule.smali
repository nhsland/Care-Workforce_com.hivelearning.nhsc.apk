.class public Lcom/imagepicker/ImagePickerModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "ImagePickerModule.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "ImagePickerManager"
.end annotation


# static fields
.field public static final DEFAULT_EXPLAINING_PERMISSION_DIALIOG_THEME:I

.field public static final NAME:Ljava/lang/String; = "ImagePickerManager"

.field public static final REQUEST_LAUNCH_IMAGE_CAPTURE:I = 0x32c9

.field public static final REQUEST_LAUNCH_IMAGE_LIBRARY:I = 0x32ca

.field public static final REQUEST_LAUNCH_VIDEO_CAPTURE:I = 0x32cc

.field public static final REQUEST_LAUNCH_VIDEO_LIBRARY:I = 0x32cb

.field public static final REQUEST_PERMISSIONS_FOR_CAMERA:I = 0x36b1

.field public static final REQUEST_PERMISSIONS_FOR_LIBRARY:I = 0x36b2


# instance fields
.field protected callback:Lcom/facebook/react/bridge/Callback;

.field protected cameraCaptureURI:Landroid/net/Uri;

.field private final dialogThemeId:I

.field private imageConfig:Lcom/imagepicker/media/ImageConfig;

.field private listener:Lcom/facebook/react/modules/core/PermissionListener;

.field private noData:Ljava/lang/Boolean;

.field private options:Lcom/facebook/react/bridge/ReadableMap;

.field private permissionRequestCallback:Lcom/facebook/react/bridge/Callback;

.field private pickBoth:Ljava/lang/Boolean;

.field private pickVideo:Ljava/lang/Boolean;

.field private final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private responseHelper:Lcom/imagepicker/ResponseHelper;

.field private videoDurationLimit:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private videoQuality:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    sget v0, Lcom/imagepicker/R$style;->DefaultExplainingPermissionsTheme:I

    sput v0, Lcom/imagepicker/ImagePickerModule;->DEFAULT_EXPLAINING_PERMISSION_DIALIOG_THEME:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 136
    sget v0, Lcom/imagepicker/ImagePickerModule;->DEFAULT_EXPLAINING_PERMISSION_DIALIOG_THEME:I

    invoke-direct {p0, p1, v0}, Lcom/imagepicker/ImagePickerModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;I)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;I)V
    .locals 10

    .line 142
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v0, 0x0

    .line 83
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/imagepicker/ImagePickerModule;->noData:Ljava/lang/Boolean;

    .line 84
    iput-object v1, p0, Lcom/imagepicker/ImagePickerModule;->pickVideo:Ljava/lang/Boolean;

    .line 85
    iput-object v1, p0, Lcom/imagepicker/ImagePickerModule;->pickBoth:Ljava/lang/Boolean;

    .line 86
    new-instance v1, Lcom/imagepicker/media/ImageConfig;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/imagepicker/media/ImageConfig;-><init>(Ljava/io/File;Ljava/io/File;IIIIZ)V

    iput-object v1, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    const/4 v1, 0x1

    .line 88
    iput v1, p0, Lcom/imagepicker/ImagePickerModule;->videoQuality:I

    .line 91
    iput v0, p0, Lcom/imagepicker/ImagePickerModule;->videoDurationLimit:I

    .line 94
    new-instance v0, Lcom/imagepicker/ResponseHelper;

    invoke-direct {v0}, Lcom/imagepicker/ResponseHelper;-><init>()V

    iput-object v0, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    .line 95
    new-instance v0, Lcom/imagepicker/ImagePickerModule$1;

    invoke-direct {v0, p0}, Lcom/imagepicker/ImagePickerModule$1;-><init>(Lcom/imagepicker/ImagePickerModule;)V

    iput-object v0, p0, Lcom/imagepicker/ImagePickerModule;->listener:Lcom/facebook/react/modules/core/PermissionListener;

    .line 144
    iput p2, p0, Lcom/imagepicker/ImagePickerModule;->dialogThemeId:I

    .line 145
    iput-object p1, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 146
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/imagepicker/ImagePickerModule;)Lcom/facebook/react/bridge/ReadableMap;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/facebook/react/bridge/ReadableMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/imagepicker/ImagePickerModule;)Lcom/facebook/react/bridge/Callback;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/imagepicker/ImagePickerModule;->permissionRequestCallback:Lcom/facebook/react/bridge/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/imagepicker/ImagePickerModule;)Lcom/imagepicker/ResponseHelper;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    return-object p0
.end method

.method private createFileFromURI(Landroid/net/Uri;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 700
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "photo-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 701
    iget-object v1, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 702
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x1000

    :try_start_0
    new-array v2, v2, [B

    .line 707
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 708
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 710
    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 713
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 712
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 713
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 714
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private getBase64StringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 722
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 724
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    const/16 p1, 0x2000

    new-array p1, p1, [B

    .line 730
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 732
    :goto_1
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 733
    invoke-virtual {v1, p1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 736
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 738
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 v0, 0x2

    .line 739
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0, p1}, Lcom/imagepicker/utils/RealPathUtil;->getRealPathFromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isCameraAvailable()Z
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 681
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.any"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private parseOptions(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 5

    const/4 v0, 0x0

    .line 768
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/imagepicker/ImagePickerModule;->noData:Ljava/lang/Boolean;

    const-string v2, "noData"

    .line 769
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 770
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/imagepicker/ImagePickerModule;->noData:Ljava/lang/Boolean;

    .line 772
    :cond_0
    iget-object v2, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    invoke-virtual {v2, p1}, Lcom/imagepicker/media/ImageConfig;->updateFromOptions(Lcom/facebook/react/bridge/ReadableMap;)Lcom/imagepicker/media/ImageConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    .line 773
    iput-object v1, p0, Lcom/imagepicker/ImagePickerModule;->pickVideo:Ljava/lang/Boolean;

    .line 774
    iput-object v1, p0, Lcom/imagepicker/ImagePickerModule;->pickBoth:Ljava/lang/Boolean;

    const-string v1, "mediaType"

    .line 775
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mixed"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 776
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/imagepicker/ImagePickerModule;->pickBoth:Ljava/lang/Boolean;

    .line 778
    :cond_1
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 779
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/imagepicker/ImagePickerModule;->pickVideo:Ljava/lang/Boolean;

    .line 781
    :cond_2
    iput v3, p0, Lcom/imagepicker/ImagePickerModule;->videoQuality:I

    const-string v1, "videoQuality"

    .line 782
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "low"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 783
    iput v0, p0, Lcom/imagepicker/ImagePickerModule;->videoQuality:I

    .line 785
    :cond_3
    iput v0, p0, Lcom/imagepicker/ImagePickerModule;->videoDurationLimit:I

    const-string v0, "durationLimit"

    .line 786
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 787
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/imagepicker/ImagePickerModule;->videoDurationLimit:I

    :cond_4
    return-void
.end method

.method private passResult(I)Z
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/imagepicker/ImagePickerModule;->cameraCaptureURI:Landroid/net/Uri;

    const/16 v1, 0x32c9

    if-nez v0, :cond_0

    if-eq p1, v1, :cond_2

    :cond_0
    if-eq p1, v1, :cond_1

    const/16 v0, 0x32ca

    if-eq p1, v0, :cond_1

    const/16 v0, 0x32cb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x32cc

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private permissionsCheck(Landroid/app/Activity;Lcom/facebook/react/bridge/Callback;I)Z
    .locals 7

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 575
    invoke-static {p1, p2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "android.permission.CAMERA"

    .line 577
    invoke-static {p1, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x36b2

    const/16 v4, 0x36b1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p3, v4, :cond_2

    if-eq p3, v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    goto :goto_0

    :goto_1
    if-nez v0, :cond_b

    .line 592
    invoke-static {p1, p2}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 594
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 596
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/facebook/react/bridge/ReadableMap;

    new-instance p2, Lcom/imagepicker/ImagePickerModule$3;

    invoke-direct {p2, p0}, Lcom/imagepicker/ImagePickerModule$3;-><init>(Lcom/imagepicker/ImagePickerModule;)V

    .line 597
    invoke-static {p0, p1, p2}, Lcom/imagepicker/permissions/PermissionUtils;->explainingDialog(Lcom/imagepicker/ImagePickerModule;Lcom/facebook/react/bridge/ReadableMap;Lcom/imagepicker/permissions/PermissionUtils$OnExplainingPermissionCallback;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 632
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_4
    return v6

    :cond_5
    if-eq p3, v4, :cond_7

    if-eq p3, v3, :cond_6

    new-array p2, v6, [Ljava/lang/String;

    goto :goto_4

    :cond_6
    new-array v0, v5, [Ljava/lang/String;

    aput-object p2, v0, v6

    goto :goto_3

    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v6

    aput-object p2, v0, v5

    :goto_3
    move-object p2, v0

    .line 651
    :goto_4
    instance-of v0, p1, Lcom/facebook/react/ReactActivity;

    if-eqz v0, :cond_8

    .line 653
    check-cast p1, Lcom/facebook/react/ReactActivity;

    iget-object v0, p0, Lcom/imagepicker/ImagePickerModule;->listener:Lcom/facebook/react/modules/core/PermissionListener;

    invoke-virtual {p1, p2, p3, v0}, Lcom/facebook/react/ReactActivity;->requestPermissions([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V

    goto :goto_5

    .line 655
    :cond_8
    instance-of v0, p1, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    if-eqz v0, :cond_9

    .line 656
    check-cast p1, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    iget-object v0, p0, Lcom/imagepicker/ImagePickerModule;->listener:Lcom/facebook/react/modules/core/PermissionListener;

    invoke-interface {p1, p2, p3, v0}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->requestPermissions([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V

    goto :goto_5

    .line 658
    :cond_9
    instance-of v0, p1, Lcom/imagepicker/permissions/OnImagePickerPermissionsCallback;

    if-eqz v0, :cond_a

    .line 660
    move-object v0, p1

    check-cast v0, Lcom/imagepicker/permissions/OnImagePickerPermissionsCallback;

    iget-object v1, p0, Lcom/imagepicker/ImagePickerModule;->listener:Lcom/facebook/react/modules/core/PermissionListener;

    invoke-interface {v0, v1}, Lcom/imagepicker/permissions/OnImagePickerPermissionsCallback;->setPermissionListener(Lcom/facebook/react/modules/core/PermissionListener;)V

    .line 661
    invoke-static {p1, p2, p3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_5
    return v6

    .line 665
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " must implement "

    .line 666
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lcom/imagepicker/permissions/OnImagePickerPermissionsCallback;

    .line 667
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    .line 668
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    .line 669
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 671
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    return v5
.end method

.method private putExtraFileInfo(Ljava/lang/String;Lcom/imagepicker/ResponseHelper;)V
    .locals 4

    .line 747
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "fileSize"

    .line 748
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {p2, v1, v2, v3}, Lcom/imagepicker/ResponseHelper;->putDouble(Ljava/lang/String;D)V

    const-string v1, "fileName"

    .line 749
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/imagepicker/ResponseHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 752
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "type"

    if-eq p1, v1, :cond_0

    .line 754
    :try_start_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/imagepicker/ResponseHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x2e

    .line 756
    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 758
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 759
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/imagepicker/ResponseHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 763
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updatedResultResponse(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Lcom/imagepicker/ResponseHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    const-string v0, "path"

    invoke-virtual {p1, v0, p2}, Lcom/imagepicker/ResponseHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->noData:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 564
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    invoke-direct {p0, p2}, Lcom/imagepicker/ImagePickerModule;->getBase64StringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {p1, v1, v0}, Lcom/imagepicker/ResponseHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_0
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    invoke-direct {p0, p2, p1}, Lcom/imagepicker/ImagePickerModule;->putExtraFileInfo(Ljava/lang/String;Lcom/imagepicker/ResponseHelper;)V

    return-void
.end method


# virtual methods
.method public doOnCancel()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    if-eqz v0, :cond_0

    .line 217
    iget-object v1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    invoke-virtual {v1, v0}, Lcom/imagepicker/ResponseHelper;->invokeCancel(Lcom/facebook/react/bridge/Callback;)V

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 546
    invoke-virtual {p0}, Lcom/imagepicker/ImagePickerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 536
    invoke-virtual {p0}, Lcom/imagepicker/ImagePickerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    return-object v0
.end method

.method public getDialogThemeId()I
    .locals 1

    .line 541
    iget v0, p0, Lcom/imagepicker/ImagePickerModule;->dialogThemeId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ImagePickerManager"

    return-object v0
.end method

.method public invokeCustomButton(Ljava/lang/String;)V
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    iget-object v1, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    invoke-virtual {v0, v1, p1}, Lcom/imagepicker/ResponseHelper;->invokeCustomButton(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V

    return-void
.end method

.method public launchCamera()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/facebook/react/bridge/ReadableMap;

    iget-object v1, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    invoke-virtual {p0, v0, v1}, Lcom/imagepicker/ImagePickerModule;->launchCamera(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public launchCamera(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 231
    iput-object p2, p0, Lcom/imagepicker/ImagePickerModule;->permissionRequestCallback:Lcom/facebook/react/bridge/Callback;

    .line 233
    invoke-direct {p0}, Lcom/imagepicker/ImagePickerModule;->isCameraAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    const-string v0, "Camera not available"

    invoke-virtual {p1, p2, v0}, Lcom/imagepicker/ResponseHelper;->invokeError(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V

    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/imagepicker/ImagePickerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 242
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    const-string v0, "can\'t find current Activity"

    invoke-virtual {p1, p2, v0}, Lcom/imagepicker/ResponseHelper;->invokeError(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V

    return-void

    .line 246
    :cond_1
    iput-object p2, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    .line 247
    iput-object p1, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/facebook/react/bridge/ReadableMap;

    const/16 p1, 0x36b1

    .line 249
    invoke-direct {p0, v0, p2, p1}, Lcom/imagepicker/ImagePickerModule;->permissionsCheck(Landroid/app/Activity;Lcom/facebook/react/bridge/Callback;I)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 254
    :cond_2
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0, p1}, Lcom/imagepicker/ImagePickerModule;->parseOptions(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 259
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->pickVideo:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x32cc

    .line 262
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    iget v2, p0, Lcom/imagepicker/ImagePickerModule;->videoQuality:I

    const-string v3, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    iget v2, p0, Lcom/imagepicker/ImagePickerModule;->videoDurationLimit:I

    if-lez v2, :cond_5

    const-string v3, "android.intent.extra.durationLimit"

    .line 266
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const/16 p1, 0x32c9

    .line 272
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v3, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/facebook/react/bridge/ReadableMap;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/imagepicker/utils/MediaUtils;->createNewFile(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Z)Ljava/io/File;

    move-result-object v2

    .line 275
    iget-object v3, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    invoke-virtual {v3, v2}, Lcom/imagepicker/media/ImageConfig;->withOriginalFile(Ljava/io/File;)Lcom/imagepicker/media/ImageConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    .line 277
    iget-object v2, v2, Lcom/imagepicker/media/ImageConfig;->original:Ljava/io/File;

    const-string v3, "Couldn\'t get file path for photo"

    if-eqz v2, :cond_8

    .line 278
    iget-object v2, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v4, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    iget-object v4, v4, Lcom/imagepicker/media/ImageConfig;->original:Ljava/io/File;

    invoke-static {v2, v4}, Lcom/imagepicker/utils/RealPathUtil;->compatUriFromFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/imagepicker/ImagePickerModule;->cameraCaptureURI:Landroid/net/Uri;

    if-nez v2, :cond_4

    .line 285
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    invoke-virtual {p1, p2, v3}, Lcom/imagepicker/ResponseHelper;->invokeError(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v3, "output"

    .line 288
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 291
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    const-string v3, "Cannot launch camera"

    if-nez v2, :cond_6

    .line 293
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    invoke-virtual {p1, p2, v3}, Lcom/imagepicker/ResponseHelper;->invokeError(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V

    return-void

    .line 300
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-gt v2, v4, :cond_7

    .line 301
    iget-object v2, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v4, 0x10000

    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 302
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 303
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 304
    iget-object v5, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v6, p0, Lcom/imagepicker/ImagePickerModule;->cameraCaptureURI:Landroid/net/Uri;

    const/4 v7, 0x3

    invoke-virtual {v5, v4, v6, v7}, Lcom/facebook/react/bridge/ReactApplicationContext;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_1

    .line 310
    :cond_7
    :try_start_0
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 314
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 315
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    invoke-virtual {p1, p2, v3}, Lcom/imagepicker/ResponseHelper;->invokeError(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V

    :goto_2
    return-void

    .line 280
    :cond_8
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    invoke-virtual {p1, p2, v3}, Lcom/imagepicker/ResponseHelper;->invokeError(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V

    return-void
.end method

.method public launchImageLibrary()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/facebook/react/bridge/ReadableMap;

    iget-object v1, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    invoke-virtual {p0, v0, v1}, Lcom/imagepicker/ImagePickerModule;->launchImageLibrary(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public launchImageLibrary(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 7
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "chooseWhichLibraryTitle"

    .line 327
    iput-object p2, p0, Lcom/imagepicker/ImagePickerModule;->permissionRequestCallback:Lcom/facebook/react/bridge/Callback;

    .line 329
    invoke-virtual {p0}, Lcom/imagepicker/ImagePickerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 331
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    const-string v0, "can\'t find current Activity"

    invoke-virtual {p1, p2, v0}, Lcom/imagepicker/ResponseHelper;->invokeError(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V

    return-void

    .line 335
    :cond_0
    iput-object p2, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    .line 336
    iput-object p1, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/facebook/react/bridge/ReadableMap;

    const/16 v2, 0x36b2

    .line 338
    invoke-direct {p0, v1, p2, v2}, Lcom/imagepicker/ImagePickerModule;->permissionsCheck(Landroid/app/Activity;Lcom/facebook/react/bridge/Callback;I)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 343
    :cond_1
    iget-object v2, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0, v2}, Lcom/imagepicker/ImagePickerModule;->parseOptions(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 347
    iget-object v2, p0, Lcom/imagepicker/ImagePickerModule;->pickVideo:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "android.intent.action.PICK"

    if-eqz v2, :cond_2

    const/16 v2, 0x32cb

    .line 350
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "video/*"

    .line 351
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const/16 v2, 0x32ca

    .line 356
    new-instance v4, Landroid/content/Intent;

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v4, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 359
    iget-object v3, p0, Lcom/imagepicker/ImagePickerModule;->pickBoth:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "image/* video/*"

    .line 361
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    const-string v5, "Cannot launch photo library"

    if-nez v3, :cond_4

    .line 367
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    invoke-virtual {p1, p2, v5}, Lcom/imagepicker/ResponseHelper;->invokeError(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v3, 0x0

    .line 374
    :try_start_0
    invoke-static {p1, v0}, Lcom/imagepicker/utils/ReadableMapUtils;->hasAndNotEmptyString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 376
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 379
    :cond_5
    invoke-static {v4, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 383
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 384
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    invoke-virtual {p1, p2, v5}, Lcom/imagepicker/ResponseHelper;->invokeError(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 9

    .line 391
    invoke-direct {p0, p2}, Lcom/imagepicker/ImagePickerModule;->passResult(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 396
    :cond_0
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    invoke-virtual {p1}, Lcom/imagepicker/ResponseHelper;->cleanResponse()V

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-eq p3, p1, :cond_1

    .line 401
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    invoke-static {p2, p1}, Lcom/imagepicker/utils/MediaUtils;->removeUselessFiles(ILcom/imagepicker/media/ImageConfig;)V

    .line 402
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    iget-object p2, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    invoke-virtual {p1, p2}, Lcom/imagepicker/ResponseHelper;->invokeCancel(Lcom/facebook/react/bridge/Callback;)V

    .line 403
    iput-object v0, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    return-void

    :cond_1
    const/4 p1, 0x1

    const-string p3, "path"

    const-string v1, "error"

    const-string v2, "uri"

    packed-switch p2, :pswitch_data_0

    move-object p3, v0

    goto/16 :goto_1

    .line 448
    :pswitch_0
    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/imagepicker/ImagePickerModule;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 449
    iget-object p2, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, v2, p4}, Lcom/imagepicker/ResponseHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object p2, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    invoke-virtual {p2, p3, p1}, Lcom/imagepicker/ResponseHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object p2, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {p2, p1}, Lcom/imagepicker/utils/MediaUtils;->fileScan(Landroid/content/Context;Ljava/lang/String;)V

    .line 452
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    iget-object p2, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    invoke-virtual {p1, p2}, Lcom/imagepicker/ResponseHelper;->invokeResponse(Lcom/facebook/react/bridge/Callback;)V

    .line 453
    iput-object v0, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    return-void

    .line 441
    :pswitch_1
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/imagepicker/ResponseHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/imagepicker/ImagePickerModule;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/imagepicker/ResponseHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    iget-object p2, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    invoke-virtual {p1, p2}, Lcom/imagepicker/ResponseHelper;->invokeResponse(Lcom/facebook/react/bridge/Callback;)V

    .line 444
    iput-object v0, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    return-void

    .line 415
    :pswitch_2
    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    .line 416
    invoke-direct {p0, p3}, Lcom/imagepicker/ImagePickerModule;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p4

    .line 417
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    .line 418
    invoke-virtual {v3, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz p4, :cond_3

    if-eqz v3, :cond_4

    .line 423
    :cond_3
    :try_start_0
    invoke-direct {p0, p3}, Lcom/imagepicker/ImagePickerModule;->createFileFromURI(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p4

    .line 424
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 425
    invoke-static {p4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p4, v3

    .line 437
    :cond_4
    iget-object v2, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/imagepicker/media/ImageConfig;->withOriginalFile(Ljava/io/File;)Lcom/imagepicker/media/ImageConfig;

    move-result-object p4

    iput-object p4, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    goto :goto_1

    .line 430
    :catch_0
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    const-string p2, "Could not read photo"

    invoke-virtual {p1, v1, p2}, Lcom/imagepicker/ResponseHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/imagepicker/ResponseHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    iget-object p2, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    invoke-virtual {p1, p2}, Lcom/imagepicker/ResponseHelper;->invokeResponse(Lcom/facebook/react/bridge/Callback;)V

    .line 433
    iput-object v0, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    return-void

    .line 411
    :pswitch_3
    iget-object p3, p0, Lcom/imagepicker/ImagePickerModule;->cameraCaptureURI:Landroid/net/Uri;

    .line 457
    :goto_1
    iget-object p4, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    iget-object v2, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    invoke-static {p4, v2}, Lcom/imagepicker/utils/MediaUtils;->readExifInterface(Lcom/imagepicker/ResponseHelper;Lcom/imagepicker/media/ImageConfig;)Lcom/imagepicker/utils/MediaUtils$ReadExifResult;

    move-result-object p4

    .line 459
    iget-object v2, p4, Lcom/imagepicker/utils/MediaUtils$ReadExifResult;->error:Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    .line 461
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    invoke-static {p2, p1}, Lcom/imagepicker/utils/MediaUtils;->removeUselessFiles(ILcom/imagepicker/media/ImageConfig;)V

    .line 462
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    iget-object p2, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    iget-object p3, p4, Lcom/imagepicker/utils/MediaUtils$ReadExifResult;->error:Ljava/lang/Throwable;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/imagepicker/ResponseHelper;->invokeError(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V

    .line 463
    iput-object v0, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    return-void

    .line 467
    :cond_5
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 468
    iput-boolean p1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 469
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    iget-object p1, p1, Lcom/imagepicker/media/ImageConfig;->original:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 470
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 471
    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 472
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    iget-object p1, p1, Lcom/imagepicker/media/ImageConfig;->original:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/imagepicker/ImagePickerModule;->updatedResultResponse(Landroid/net/Uri;Ljava/lang/String;)V

    .line 475
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    iget p3, p4, Lcom/imagepicker/utils/MediaUtils$ReadExifResult;->currentRotation:I

    invoke-virtual {p1, v6, v7, p3}, Lcom/imagepicker/media/ImageConfig;->useOriginal(III)Z

    move-result p1

    const-string p3, "height"

    const-string p4, "width"

    if-eqz p1, :cond_6

    .line 477
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    invoke-virtual {p1, p4, v6}, Lcom/imagepicker/ResponseHelper;->putInt(Ljava/lang/String;I)V

    .line 478
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    invoke-virtual {p1, p3, v7}, Lcom/imagepicker/ResponseHelper;->putInt(Ljava/lang/String;I)V

    .line 479
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object p3, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    iget-object p3, p3, Lcom/imagepicker/media/ImageConfig;->original:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/imagepicker/utils/MediaUtils;->fileScan(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 483
    :cond_6
    iget-object v3, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object v4, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/facebook/react/bridge/ReadableMap;

    iget-object v5, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    move v8, p2

    invoke-static/range {v3 .. v8}, Lcom/imagepicker/utils/MediaUtils;->getResizedImage(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/imagepicker/media/ImageConfig;III)Lcom/imagepicker/media/ImageConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    .line 484
    iget-object p1, p1, Lcom/imagepicker/media/ImageConfig;->resized:Ljava/io/File;

    if-nez p1, :cond_7

    .line 486
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    invoke-static {p2, p1}, Lcom/imagepicker/utils/MediaUtils;->removeUselessFiles(ILcom/imagepicker/media/ImageConfig;)V

    .line 487
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    const-string p3, "Can\'t resize the image"

    invoke-virtual {p1, v1, p3}, Lcom/imagepicker/ResponseHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 491
    :cond_7
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    iget-object p1, p1, Lcom/imagepicker/media/ImageConfig;->resized:Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 492
    iget-object v3, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    iget-object v3, v3, Lcom/imagepicker/media/ImageConfig;->resized:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 493
    iget-object v3, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v3, p4, v4}, Lcom/imagepicker/ResponseHelper;->putInt(Ljava/lang/String;I)V

    .line 494
    iget-object p4, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p4, p3, v2}, Lcom/imagepicker/ResponseHelper;->putInt(Ljava/lang/String;I)V

    .line 496
    iget-object p3, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    iget-object p3, p3, Lcom/imagepicker/media/ImageConfig;->resized:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/imagepicker/ImagePickerModule;->updatedResultResponse(Landroid/net/Uri;Ljava/lang/String;)V

    .line 497
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    iget-object p3, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    iget-object p3, p3, Lcom/imagepicker/media/ImageConfig;->resized:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/imagepicker/utils/MediaUtils;->fileScan(Landroid/content/Context;Ljava/lang/String;)V

    .line 501
    :goto_2
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    iget-boolean p1, p1, Lcom/imagepicker/media/ImageConfig;->saveToCameraRoll:Z

    if-eqz p1, :cond_9

    const/16 p1, 0x32c9

    if-ne p2, p1, :cond_9

    .line 503
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    invoke-static {p1}, Lcom/imagepicker/utils/MediaUtils;->rolloutPhotoFromCamera(Lcom/imagepicker/media/ImageConfig;)Lcom/imagepicker/utils/MediaUtils$RolloutPhotoResult;

    move-result-object p1

    .line 505
    iget-object p3, p1, Lcom/imagepicker/utils/MediaUtils$RolloutPhotoResult;->error:Ljava/lang/Throwable;

    if-nez p3, :cond_8

    .line 507
    iget-object p1, p1, Lcom/imagepicker/utils/MediaUtils$RolloutPhotoResult;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    iput-object p1, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    .line 508
    invoke-virtual {p1}, Lcom/imagepicker/media/ImageConfig;->getActualFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 509
    iget-object p2, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    invoke-virtual {p2}, Lcom/imagepicker/media/ImageConfig;->getActualFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/imagepicker/ImagePickerModule;->updatedResultResponse(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_3

    .line 513
    :cond_8
    iget-object p3, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    invoke-static {p2, p3}, Lcom/imagepicker/utils/MediaUtils;->removeUselessFiles(ILcom/imagepicker/media/ImageConfig;)V

    .line 514
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error moving image to camera roll: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/imagepicker/utils/MediaUtils$RolloutPhotoResult;->error:Ljava/lang/Throwable;

    .line 515
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 516
    iget-object p2, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    invoke-virtual {p2, v1, p1}, Lcom/imagepicker/ResponseHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 521
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    iget-object p2, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    invoke-virtual {p1, p2}, Lcom/imagepicker/ResponseHelper;->invokeResponse(Lcom/facebook/react/bridge/Callback;)V

    .line 522
    iput-object v0, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    .line 523
    iput-object v0, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/facebook/react/bridge/ReadableMap;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x32c9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public showImagePicker(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 9
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/imagepicker/ImagePickerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 160
    iget-object p1, p0, Lcom/imagepicker/ImagePickerModule;->responseHelper:Lcom/imagepicker/ResponseHelper;

    const-string v0, "can\'t find current Activity"

    invoke-virtual {p1, p2, v0}, Lcom/imagepicker/ResponseHelper;->invokeError(Lcom/facebook/react/bridge/Callback;Ljava/lang/String;)V

    return-void

    .line 164
    :cond_0
    iput-object p2, p0, Lcom/imagepicker/ImagePickerModule;->callback:Lcom/facebook/react/bridge/Callback;

    .line 165
    iput-object p1, p0, Lcom/imagepicker/ImagePickerModule;->options:Lcom/facebook/react/bridge/ReadableMap;

    .line 166
    new-instance p2, Lcom/imagepicker/media/ImageConfig;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x64

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v8}, Lcom/imagepicker/media/ImageConfig;-><init>(Ljava/io/File;Ljava/io/File;IIIIZ)V

    iput-object p2, p0, Lcom/imagepicker/ImagePickerModule;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    .line 168
    new-instance p2, Lcom/imagepicker/ImagePickerModule$2;

    invoke-direct {p2, p0}, Lcom/imagepicker/ImagePickerModule$2;-><init>(Lcom/imagepicker/ImagePickerModule;)V

    invoke-static {p0, p1, p2}, Lcom/imagepicker/utils/UI;->chooseDialog(Lcom/imagepicker/ImagePickerModule;Lcom/facebook/react/bridge/ReadableMap;Lcom/imagepicker/utils/UI$OnAction;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 211
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
