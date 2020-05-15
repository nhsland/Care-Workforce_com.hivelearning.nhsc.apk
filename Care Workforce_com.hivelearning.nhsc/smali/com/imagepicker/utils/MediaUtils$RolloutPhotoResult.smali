.class public Lcom/imagepicker/utils/MediaUtils$RolloutPhotoResult;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imagepicker/utils/MediaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RolloutPhotoResult"
.end annotation


# instance fields
.field public final error:Ljava/lang/Throwable;

.field public final imageConfig:Lcom/imagepicker/media/ImageConfig;


# direct methods
.method public constructor <init>(Lcom/imagepicker/media/ImageConfig;Ljava/lang/Throwable;)V
    .locals 0

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p1, p0, Lcom/imagepicker/utils/MediaUtils$RolloutPhotoResult;->imageConfig:Lcom/imagepicker/media/ImageConfig;

    .line 395
    iput-object p2, p0, Lcom/imagepicker/utils/MediaUtils$RolloutPhotoResult;->error:Ljava/lang/Throwable;

    return-void
.end method
