.class Lcom/horcrux/svg/ViewBox;
.super Ljava/lang/Object;
.source "ViewBox.java"


# static fields
.field private static final MOS_MEET:I = 0x0

.field private static final MOS_NONE:I = 0x2

.field private static final MOS_SLICE:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getTransform(Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;I)Landroid/graphics/Matrix;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 25
    iget v4, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v4

    .line 26
    iget v6, v0, Landroid/graphics/RectF;->top:F

    float-to-double v6, v6

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->width()F

    move-result v8

    float-to-double v8, v8

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-double v10, v0

    .line 31
    iget v0, v1, Landroid/graphics/RectF;->left:F

    float-to-double v12, v0

    .line 32
    iget v0, v1, Landroid/graphics/RectF;->top:F

    float-to-double v14, v0

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-double v0, v0

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-double v2, v2

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-wide/from16 v16, v14

    div-double v14, v0, v8

    .line 41
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-wide/from16 v18, v8

    div-double v8, v2, v10

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v12, v4

    .line 46
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v4, v16, v6

    const/4 v6, 0x2

    move-wide/from16 v16, v2

    move/from16 v2, p3

    if-ne v2, v6, :cond_1

    .line 52
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v2, v6

    if-lez v8, :cond_0

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v0, v0, v18

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v6

    sub-double/2addr v12, v0

    .line 59
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, v16, v2

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v10

    goto :goto_0

    :cond_0
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 61
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v18, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v8

    div-double/2addr v0, v6

    sub-double/2addr v12, v0

    .line 62
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v0, v16, v10

    :goto_0
    div-double/2addr v0, v6

    sub-double/2addr v4, v0

    move-wide v8, v2

    goto/16 :goto_3

    :cond_1
    const-string v3, "none"

    move-object/from16 v6, p2

    .line 68
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    if-nez v2, :cond_2

    .line 69
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    :goto_1
    move-wide v8, v14

    goto :goto_2

    .line 70
    :cond_2
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 71
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    goto :goto_1

    :cond_3
    :goto_2
    const-string v2, "xMid"

    .line 75
    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v18, v14

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v2, v0, v2

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v2, v2, v20

    add-double/2addr v12, v2

    :cond_4
    const-string v2, "xMax"

    .line 80
    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 81
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v18, v14

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    add-double/2addr v12, v0

    :cond_5
    const-string v0, "YMid"

    .line 85
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 86
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v10, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v2, v16, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v0

    add-double/2addr v4, v2

    :cond_6
    const-string v0, "YMax"

    .line 90
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 91
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v2, v16, v10

    add-double/2addr v4, v2

    :cond_7
    move-wide v2, v14

    .line 98
    :goto_3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    double-to-float v1, v12

    double-to-float v4, v4

    .line 99
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    double-to-float v1, v2

    double-to-float v2, v8

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    return-object v0
.end method
