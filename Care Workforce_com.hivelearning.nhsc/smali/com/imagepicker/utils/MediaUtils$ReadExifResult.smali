.class public Lcom/imagepicker/utils/MediaUtils$ReadExifResult;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imagepicker/utils/MediaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadExifResult"
.end annotation


# instance fields
.field public final currentRotation:I

.field public final error:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput p1, p0, Lcom/imagepicker/utils/MediaUtils$ReadExifResult;->currentRotation:I

    .line 409
    iput-object p2, p0, Lcom/imagepicker/utils/MediaUtils$ReadExifResult;->error:Ljava/lang/Throwable;

    return-void
.end method
