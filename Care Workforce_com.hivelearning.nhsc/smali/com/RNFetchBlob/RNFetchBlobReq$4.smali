.class synthetic Lcom/RNFetchBlob/RNFetchBlobReq$4;
.super Ljava/lang/Object;
.source "RNFetchBlobReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/RNFetchBlob/RNFetchBlobReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$RNFetchBlob$RNFetchBlobReq$RequestType:[I

.field static final synthetic $SwitchMap$com$RNFetchBlob$RNFetchBlobReq$ResponseType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 350
    invoke-static {}, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;->values()[Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/RNFetchBlob/RNFetchBlobReq$4;->$SwitchMap$com$RNFetchBlob$RNFetchBlobReq$ResponseType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;->KeepInMemory:Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;

    invoke-virtual {v2}, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/RNFetchBlob/RNFetchBlobReq$4;->$SwitchMap$com$RNFetchBlob$RNFetchBlobReq$ResponseType:[I

    sget-object v3, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;->FileStorage:Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;

    invoke-virtual {v3}, Lcom/RNFetchBlob/RNFetchBlobReq$ResponseType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    :catch_1
    invoke-static {}, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->values()[Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/RNFetchBlob/RNFetchBlobReq$4;->$SwitchMap$com$RNFetchBlob$RNFetchBlobReq$RequestType:[I

    :try_start_2
    sget-object v3, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->SingleFile:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    invoke-virtual {v3}, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/RNFetchBlob/RNFetchBlobReq$4;->$SwitchMap$com$RNFetchBlob$RNFetchBlobReq$RequestType:[I

    sget-object v2, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->AsIs:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    invoke-virtual {v2}, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/RNFetchBlob/RNFetchBlobReq$4;->$SwitchMap$com$RNFetchBlob$RNFetchBlobReq$RequestType:[I

    sget-object v1, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->Form:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    invoke-virtual {v1}, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/RNFetchBlob/RNFetchBlobReq$4;->$SwitchMap$com$RNFetchBlob$RNFetchBlobReq$RequestType:[I

    sget-object v1, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->WithoutBody:Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;

    invoke-virtual {v1}, Lcom/RNFetchBlob/RNFetchBlobReq$RequestType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
