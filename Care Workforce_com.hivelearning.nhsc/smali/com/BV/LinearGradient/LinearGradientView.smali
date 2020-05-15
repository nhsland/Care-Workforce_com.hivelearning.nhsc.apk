.class public Lcom/BV/LinearGradient/LinearGradientView;
.super Landroid/view/View;
.source "LinearGradientView.java"


# instance fields
.field private mAngle:F

.field private mAngleCenter:[F

.field private mBorderRadii:[F

.field private mColors:[I

.field private mEndPos:[F

.field private mLocations:[F

.field private final mPaint:Landroid/graphics/Paint;

.field private mPathForBorderRadius:Landroid/graphics/Path;

.field private mShader:Landroid/graphics/LinearGradient;

.field private mSize:[I

.field private mStartPos:[F

.field private mTempRectForBorderRadius:Landroid/graphics/RectF;

.field private mUseAngle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/BV/LinearGradient/LinearGradientView;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x2

    new-array v0, p1, [F

    .line 23
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mStartPos:[F

    new-array v0, p1, [F

    .line 24
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mEndPos:[F

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mUseAngle:Z

    new-array v0, p1, [F

    .line 27
    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mAngleCenter:[F

    const/high16 v0, 0x42340000    # 45.0f

    .line 28
    iput v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mAngle:F

    new-array p1, p1, [I

    .line 29
    fill-array-data p1, :array_3

    iput-object p1, p0, Lcom/BV/LinearGradient/LinearGradientView;->mSize:[I

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 30
    fill-array-data p1, :array_4

    iput-object p1, p0, Lcom/BV/LinearGradient/LinearGradientView;->mBorderRadii:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private calculateGradientLocationWithAngle(F)[F
    .locals 6

    const/high16 v0, 0x42b40000    # 90.0f

    sub-float/2addr p1, v0

    const v0, 0x3c8efa35

    mul-float p1, p1, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 102
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    float-to-double v2, p1

    .line 105
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float p1, v4

    mul-float p1, p1, v0

    const/4 v4, 0x0

    aput p1, v1, v4

    .line 106
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    mul-float p1, p1, v0

    const/4 v0, 0x1

    aput p1, v1, v0

    return-object v1
.end method

.method private drawGradient()V
    .locals 13

    .line 112
    iget-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mColors:[I

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/BV/LinearGradient/LinearGradientView;->mLocations:[F

    if-eqz v1, :cond_0

    array-length v0, v0

    array-length v1, v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mStartPos:[F

    .line 116
    iget-object v1, p0, Lcom/BV/LinearGradient/LinearGradientView;->mEndPos:[F

    .line 118
    iget-boolean v2, p0, Lcom/BV/LinearGradient/LinearGradientView;->mUseAngle:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/BV/LinearGradient/LinearGradientView;->mAngleCenter:[F

    if-eqz v2, :cond_1

    .line 119
    iget v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mAngle:F

    invoke-direct {p0, v0}, Lcom/BV/LinearGradient/LinearGradientView;->calculateGradientLocationWithAngle(F)[F

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 120
    iget-object v5, p0, Lcom/BV/LinearGradient/LinearGradientView;->mAngleCenter:[F

    aget v6, v5, v4

    aget v7, v0, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    aput v6, v2, v4

    aget v6, v5, v3

    aget v7, v0, v3

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    aput v6, v2, v3

    new-array v1, v1, [F

    .line 124
    aget v6, v5, v4

    aget v7, v0, v4

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v1, v4

    aget v5, v5, v3

    aget v0, v0, v3

    div-float/2addr v0, v8

    add-float/2addr v5, v0

    aput v5, v1, v3

    move-object v0, v2

    .line 130
    :cond_1
    new-instance v2, Landroid/graphics/LinearGradient;

    aget v5, v0, v4

    iget-object v6, p0, Lcom/BV/LinearGradient/LinearGradientView;->mSize:[I

    aget v7, v6, v4

    int-to-float v7, v7

    mul-float v7, v7, v5

    aget v0, v0, v3

    aget v5, v6, v3

    int-to-float v5, v5

    mul-float v0, v0, v5

    aget v5, v1, v4

    aget v4, v6, v4

    int-to-float v4, v4

    mul-float v8, v5, v4

    aget v1, v1, v3

    aget v3, v6, v3

    int-to-float v3, v3

    mul-float v9, v1, v3

    iget-object v10, p0, Lcom/BV/LinearGradient/LinearGradientView;->mColors:[I

    iget-object v11, p0, Lcom/BV/LinearGradient/LinearGradientView;->mLocations:[F

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v2

    move v6, v7

    move v7, v0

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/BV/LinearGradient/LinearGradientView;->mShader:Landroid/graphics/LinearGradient;

    .line 138
    iget-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 139
    invoke-virtual {p0}, Lcom/BV/LinearGradient/LinearGradientView;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updatePath()V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mPathForBorderRadius:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mPathForBorderRadius:Landroid/graphics/Path;

    .line 145
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mTempRectForBorderRadius:Landroid/graphics/RectF;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mPathForBorderRadius:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 148
    iget-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mTempRectForBorderRadius:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/BV/LinearGradient/LinearGradientView;->mSize:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 149
    iget-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mPathForBorderRadius:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/BV/LinearGradient/LinearGradientView;->mTempRectForBorderRadius:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/BV/LinearGradient/LinearGradientView;->mBorderRadii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 157
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 158
    iget-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mPathForBorderRadius:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/BV/LinearGradient/LinearGradientView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    const/4 p3, 0x2

    new-array p3, p3, [I

    const/4 p4, 0x0

    aput p1, p3, p4

    const/4 p1, 0x1

    aput p2, p3, p1

    .line 95
    iput-object p3, p0, Lcom/BV/LinearGradient/LinearGradientView;->mSize:[I

    .line 96
    invoke-direct {p0}, Lcom/BV/LinearGradient/LinearGradientView;->updatePath()V

    .line 97
    invoke-direct {p0}, Lcom/BV/LinearGradient/LinearGradientView;->drawGradient()V

    return-void
.end method

.method public setAngle(F)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/BV/LinearGradient/LinearGradientView;->mAngle:F

    .line 79
    invoke-direct {p0}, Lcom/BV/LinearGradient/LinearGradientView;->drawGradient()V

    return-void
.end method

.method public setAngleCenter(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 73
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    double-to-float p1, v2

    aput p1, v0, v1

    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mAngleCenter:[F

    .line 74
    invoke-direct {p0}, Lcom/BV/LinearGradient/LinearGradientView;->drawGradient()V

    return-void
.end method

.method public setBorderRadii(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 5

    .line 83
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 86
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v3}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_0
    iput-object v1, p0, Lcom/BV/LinearGradient/LinearGradientView;->mBorderRadii:[F

    .line 89
    invoke-direct {p0}, Lcom/BV/LinearGradient/LinearGradientView;->updatePath()V

    .line 90
    invoke-direct {p0}, Lcom/BV/LinearGradient/LinearGradientView;->drawGradient()V

    return-void
.end method

.method public setColors(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 4

    .line 48
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 51
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_0
    iput-object v1, p0, Lcom/BV/LinearGradient/LinearGradientView;->mColors:[I

    .line 54
    invoke-direct {p0}, Lcom/BV/LinearGradient/LinearGradientView;->drawGradient()V

    return-void
.end method

.method public setEndPosition(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 43
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    double-to-float p1, v2

    aput p1, v0, v1

    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mEndPos:[F

    .line 44
    invoke-direct {p0}, Lcom/BV/LinearGradient/LinearGradientView;->drawGradient()V

    return-void
.end method

.method public setLocations(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 5

    .line 58
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 61
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_0
    iput-object v1, p0, Lcom/BV/LinearGradient/LinearGradientView;->mLocations:[F

    .line 64
    invoke-direct {p0}, Lcom/BV/LinearGradient/LinearGradientView;->drawGradient()V

    return-void
.end method

.method public setStartPosition(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 38
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v2

    double-to-float p1, v2

    aput p1, v0, v1

    iput-object v0, p0, Lcom/BV/LinearGradient/LinearGradientView;->mStartPos:[F

    .line 39
    invoke-direct {p0}, Lcom/BV/LinearGradient/LinearGradientView;->drawGradient()V

    return-void
.end method

.method public setUseAngle(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/BV/LinearGradient/LinearGradientView;->mUseAngle:Z

    .line 69
    invoke-direct {p0}, Lcom/BV/LinearGradient/LinearGradientView;->drawGradient()V

    return-void
.end method
