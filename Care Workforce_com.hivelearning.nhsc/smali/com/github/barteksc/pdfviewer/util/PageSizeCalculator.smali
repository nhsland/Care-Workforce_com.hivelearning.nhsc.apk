.class public Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;
.super Ljava/lang/Object;
.source "PageSizeCalculator.java"


# instance fields
.field private fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

.field private heightRatio:F

.field private optimalMaxHeightPageSize:Lcom/shockwave/pdfium/util/SizeF;

.field private optimalMaxWidthPageSize:Lcom/shockwave/pdfium/util/SizeF;

.field private final originalMaxHeightPageSize:Lcom/shockwave/pdfium/util/Size;

.field private final originalMaxWidthPageSize:Lcom/shockwave/pdfium/util/Size;

.field private final viewSize:Lcom/shockwave/pdfium/util/Size;

.field private widthRatio:F


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/util/FitPolicy;Lcom/shockwave/pdfium/util/Size;Lcom/shockwave/pdfium/util/Size;Lcom/shockwave/pdfium/util/Size;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    .line 35
    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lcom/shockwave/pdfium/util/Size;

    .line 36
    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxHeightPageSize:Lcom/shockwave/pdfium/util/Size;

    .line 37
    iput-object p4, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lcom/shockwave/pdfium/util/Size;

    .line 38
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->calculateMaxPages()V

    return-void
.end method

.method private calculateMaxPages()V
    .locals 4

    .line 64
    sget-object v0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator$1;->$SwitchMap$com$github$barteksc$pdfviewer$util$FitPolicy:[I

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/util/FitPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lcom/shockwave/pdfium/util/Size;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v1}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitWidth(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxWidthPageSize:Lcom/shockwave/pdfium/util/SizeF;

    .line 81
    invoke-virtual {v0}, Lcom/shockwave/pdfium/util/SizeF;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v1}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->widthRatio:F

    .line 82
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxHeightPageSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v0}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->widthRatio:F

    mul-float v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitWidth(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxHeightPageSize:Lcom/shockwave/pdfium/util/SizeF;

    goto/16 :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lcom/shockwave/pdfium/util/Size;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v1}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v2}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitBoth(Lcom/shockwave/pdfium/util/Size;FF)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/shockwave/pdfium/util/SizeF;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v1}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 73
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxHeightPageSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v1}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lcom/shockwave/pdfium/util/Size;

    .line 74
    invoke-virtual {v0}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 73
    invoke-direct {p0, v1, v2, v0}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitBoth(Lcom/shockwave/pdfium/util/Size;FF)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxHeightPageSize:Lcom/shockwave/pdfium/util/SizeF;

    .line 75
    invoke-virtual {v0}, Lcom/shockwave/pdfium/util/SizeF;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxHeightPageSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v1}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->heightRatio:F

    .line 76
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lcom/shockwave/pdfium/util/Size;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v1}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v2}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->heightRatio:F

    mul-float v2, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitBoth(Lcom/shockwave/pdfium/util/Size;FF)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxWidthPageSize:Lcom/shockwave/pdfium/util/SizeF;

    .line 77
    invoke-virtual {v0}, Lcom/shockwave/pdfium/util/SizeF;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v1}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->widthRatio:F

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxHeightPageSize:Lcom/shockwave/pdfium/util/Size;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->viewSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v1}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitHeight(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxHeightPageSize:Lcom/shockwave/pdfium/util/SizeF;

    .line 67
    invoke-virtual {v0}, Lcom/shockwave/pdfium/util/SizeF;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxHeightPageSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v1}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->heightRatio:F

    .line 68
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->originalMaxWidthPageSize:Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {v0}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->heightRatio:F

    mul-float v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitHeight(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxWidthPageSize:Lcom/shockwave/pdfium/util/SizeF;

    :goto_0
    return-void
.end method

.method private fitBoth(Lcom/shockwave/pdfium/util/Size;FF)Lcom/shockwave/pdfium/util/SizeF;
    .locals 3

    .line 104
    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    div-float p1, p2, v0

    float-to-double v1, p1

    .line 107
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float p1, v1

    cmpl-float v1, p1, p3

    if-lez v1, :cond_0

    mul-float v0, v0, p3

    float-to-double p1, v0

    .line 110
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-float p2, p1

    goto :goto_0

    :cond_0
    move p3, p1

    .line 112
    :goto_0
    new-instance p1, Lcom/shockwave/pdfium/util/SizeF;

    invoke-direct {p1, p2, p3}, Lcom/shockwave/pdfium/util/SizeF;-><init>(FF)V

    return-object p1
.end method

.method private fitHeight(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;
    .locals 2

    .line 96
    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    div-float p1, p2, p1

    float-to-double v0, p1

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 100
    new-instance v0, Lcom/shockwave/pdfium/util/SizeF;

    invoke-direct {v0, p1, p2}, Lcom/shockwave/pdfium/util/SizeF;-><init>(FF)V

    return-object v0
.end method

.method private fitWidth(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;
    .locals 2

    .line 88
    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    div-float p1, p2, v0

    float-to-double v0, p1

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 92
    new-instance v0, Lcom/shockwave/pdfium/util/SizeF;

    invoke-direct {v0, p2, p1}, Lcom/shockwave/pdfium/util/SizeF;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public calculate(Lcom/shockwave/pdfium/util/Size;)Lcom/shockwave/pdfium/util/SizeF;
    .locals 3

    .line 42
    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    sget-object v0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator$1;->$SwitchMap$com$github$barteksc$pdfviewer$util$FitPolicy:[I

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitPolicy:Lcom/github/barteksc/pdfviewer/util/FitPolicy;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/util/FitPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 51
    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->widthRatio:F

    mul-float v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitWidth(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->widthRatio:F

    mul-float v0, v0, v1

    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->heightRatio:F

    mul-float v1, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitBoth(Lcom/shockwave/pdfium/util/Size;FF)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object p1

    return-object p1

    .line 47
    :cond_2
    invoke-virtual {p1}, Lcom/shockwave/pdfium/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->heightRatio:F

    mul-float v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->fitHeight(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object p1

    return-object p1

    .line 43
    :cond_3
    :goto_0
    new-instance p1, Lcom/shockwave/pdfium/util/SizeF;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lcom/shockwave/pdfium/util/SizeF;-><init>(FF)V

    return-object p1
.end method

.method public getOptimalMaxHeightPageSize()Lcom/shockwave/pdfium/util/SizeF;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxHeightPageSize:Lcom/shockwave/pdfium/util/SizeF;

    return-object v0
.end method

.method public getOptimalMaxWidthPageSize()Lcom/shockwave/pdfium/util/SizeF;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/util/PageSizeCalculator;->optimalMaxWidthPageSize:Lcom/shockwave/pdfium/util/SizeF;

    return-object v0
.end method
