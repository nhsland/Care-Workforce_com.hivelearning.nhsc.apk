.class public Lcom/RNFetchBlob/RNFetchBlobConst;
.super Ljava/lang/Object;
.source "RNFetchBlobConst.java"


# static fields
.field public static final CONTENT_PREFIX:Ljava/lang/String; = "RNFetchBlob-content://"

.field public static final DATA_ENCODE_URI:Ljava/lang/String; = "uri"

.field public static final EVENT_HTTP_STATE:Ljava/lang/String; = "RNFetchBlobState"

.field public static final EVENT_MESSAGE:Ljava/lang/String; = "RNFetchBlobMessage"

.field public static final EVENT_PROGRESS:Ljava/lang/String; = "RNFetchBlobProgress"

.field public static final EVENT_UPLOAD_PROGRESS:Ljava/lang/String; = "RNFetchBlobProgress-upload"

.field public static final FILE_PREFIX:Ljava/lang/String; = "RNFetchBlob-file://"

.field public static final FILE_PREFIX_BUNDLE_ASSET:Ljava/lang/String; = "bundle-assets://"

.field public static final FILE_PREFIX_CONTENT:Ljava/lang/String; = "content://"

.field public static final GET_CONTENT_INTENT:Ljava/lang/Integer;

.field public static final RNFB_RESPONSE_BASE64:Ljava/lang/String; = "base64"

.field public static final RNFB_RESPONSE_PATH:Ljava/lang/String; = "path"

.field public static final RNFB_RESPONSE_UTF8:Ljava/lang/String; = "utf8"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x1863c

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlobConst;->GET_CONTENT_INTENT:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
