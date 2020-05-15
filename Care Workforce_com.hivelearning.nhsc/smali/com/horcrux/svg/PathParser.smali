.class Lcom/horcrux/svg/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# static fields
.field static elements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/PathElement;",
            ">;"
        }
    .end annotation
.end field

.field private static i:I

.field private static l:I

.field private static mPath:Landroid/graphics/Path;

.field private static mPenDown:Z

.field private static mPenDownX:F

.field private static mPenDownY:F

.field private static mPenX:F

.field private static mPenY:F

.field private static mPivotX:F

.field private static mPivotY:F

.field static mScale:F

.field private static s:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arc(FFFZZFF)V
    .locals 8

    .line 286
    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    add-float v6, p5, v0

    sget p5, Lcom/horcrux/svg/PathParser;->mPenY:F

    add-float v7, p6, p5

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v7}, Lcom/horcrux/svg/PathParser;->arcTo(FFFZZFF)V

    return-void
.end method

.method private static arcTo(FFFZZFF)V
    .locals 22

    move/from16 v0, p3

    move/from16 v6, p4

    .line 291
    sget v1, Lcom/horcrux/svg/PathParser;->mPenX:F

    .line 292
    sget v2, Lcom/horcrux/svg/PathParser;->mPenY:F

    const/4 v3, 0x0

    cmpl-float v4, p1, v3

    if-nez v4, :cond_1

    cmpl-float v4, p0, v3

    if-nez v4, :cond_0

    sub-float v4, p6, v2

    goto :goto_0

    :cond_0
    move/from16 v4, p0

    goto :goto_0

    :cond_1
    move/from16 v4, p1

    .line 294
    :goto_0
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v5, p0, v3

    if-nez v5, :cond_2

    sub-float v5, p5, v1

    goto :goto_1

    :cond_2
    move/from16 v5, p0

    .line 295
    :goto_1
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v7, v5, v3

    if-eqz v7, :cond_b

    cmpl-float v7, v4, v3

    if-eqz v7, :cond_b

    cmpl-float v7, p5, v1

    if-nez v7, :cond_3

    cmpl-float v7, p6, v2

    if-nez v7, :cond_3

    goto/16 :goto_6

    :cond_3
    move/from16 v7, p2

    float-to-double v7, v7

    .line 302
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    double-to-float v7, v7

    float-to-double v8, v7

    .line 303
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 304
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    sub-float v9, p5, v1

    sub-float v11, p6, v2

    mul-float v12, v10, v9

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    mul-float v14, v8, v11

    div-float/2addr v14, v13

    add-float/2addr v12, v14

    neg-float v14, v8

    mul-float v15, v14, v9

    div-float/2addr v15, v13

    mul-float v16, v10, v11

    div-float v16, v16, v13

    add-float v15, v15, v16

    mul-float v16, v5, v5

    mul-float v17, v16, v4

    mul-float v17, v17, v4

    mul-float v18, v4, v4

    mul-float v18, v18, v12

    mul-float v18, v18, v12

    mul-float v16, v16, v15

    mul-float v16, v16, v15

    sub-float v19, v17, v16

    sub-float v19, v19, v18

    cmpg-float v20, v19, v3

    if-gez v20, :cond_4

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v19, v19, v17

    sub-float v12, v12, v19

    move/from16 v17, v14

    float-to-double v13, v12

    .line 317
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float v5, v5, v12

    mul-float v4, v4, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float v13, v9, v12

    div-float v12, v11, v12

    goto :goto_2

    :cond_4
    move/from16 v17, v14

    add-float v16, v16, v18

    div-float v13, v19, v16

    float-to-double v13, v13

    .line 323
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    if-ne v0, v6, :cond_5

    neg-float v13, v13

    :cond_5
    neg-float v14, v13

    mul-float v14, v14, v15

    mul-float v14, v14, v5

    div-float/2addr v14, v4

    mul-float v13, v13, v12

    mul-float v13, v13, v4

    div-float/2addr v13, v5

    mul-float v12, v10, v14

    mul-float v15, v8, v13

    sub-float/2addr v12, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float v16, v9, v15

    add-float v12, v12, v16

    mul-float v14, v14, v8

    mul-float v13, v13, v10

    add-float/2addr v14, v13

    div-float v13, v11, v15

    add-float/2addr v13, v14

    move/from16 v21, v13

    move v13, v12

    move/from16 v12, v21

    :goto_2
    div-float v14, v10, v5

    div-float/2addr v8, v5

    div-float v15, v17, v4

    div-float/2addr v10, v4

    neg-float v3, v13

    mul-float v17, v15, v3

    neg-float v6, v12

    mul-float v18, v10, v6

    add-float v0, v17, v18

    move/from16 p1, v4

    move/from16 p0, v5

    float-to-double v4, v0

    mul-float v3, v3, v14

    mul-float v6, v6, v8

    add-float/2addr v3, v6

    move/from16 v17, v7

    float-to-double v6, v3

    .line 341
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v4, v3

    sub-float v0, v9, v13

    mul-float v15, v15, v0

    sub-float v3, v11, v12

    mul-float v10, v10, v3

    add-float/2addr v15, v10

    float-to-double v5, v15

    mul-float v14, v14, v0

    mul-float v8, v8, v3

    add-float/2addr v14, v8

    float-to-double v7, v14

    .line 342
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float v5, v5

    add-float v0, v13, v1

    add-float v3, v12, v2

    add-float/2addr v9, v1

    add-float/2addr v11, v2

    .line 349
    invoke-static {}, Lcom/horcrux/svg/PathParser;->setPenDown()V

    .line 351
    sput v9, Lcom/horcrux/svg/PathParser;->mPivotX:F

    sput v9, Lcom/horcrux/svg/PathParser;->mPenX:F

    .line 352
    sput v11, Lcom/horcrux/svg/PathParser;->mPivotY:F

    sput v11, Lcom/horcrux/svg/PathParser;->mPenY:F

    cmpl-float v1, p0, p1

    if-nez v1, :cond_a

    const/4 v1, 0x0

    cmpl-float v1, v17, v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    float-to-double v1, v4

    .line 358
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v4, v5

    .line 359
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v2, v4

    sub-float v2, v1, v2

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float/2addr v2, v4

    .line 360
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v5, 0x43340000    # 180.0f

    if-eqz p3, :cond_7

    cmpg-float v5, v2, v5

    if-gez v5, :cond_8

    goto :goto_3

    :cond_7
    cmpl-float v5, v2, v5

    if-lez v5, :cond_8

    :goto_3
    sub-float v2, v4, v2

    :cond_8
    if-nez p4, :cond_9

    neg-float v2, v2

    .line 376
    :cond_9
    new-instance v4, Landroid/graphics/RectF;

    sub-float v5, v0, p0

    sget v6, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float v5, v5, v6

    sub-float v7, v3, p0

    mul-float v7, v7, v6

    add-float v0, v0, p0

    mul-float v0, v0, v6

    add-float v3, v3, p0

    mul-float v3, v3, v6

    invoke-direct {v4, v5, v7, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 382
    sget-object v0, Lcom/horcrux/svg/PathParser;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 383
    sget-object v0, Lcom/horcrux/svg/PathParser;->elements:Ljava/util/ArrayList;

    new-instance v1, Lcom/horcrux/svg/PathElement;

    sget-object v2, Lcom/horcrux/svg/ElementType;->kCGPathElementAddCurveToPoint:Lcom/horcrux/svg/ElementType;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/horcrux/svg/Point;

    const/4 v4, 0x0

    new-instance v5, Lcom/horcrux/svg/Point;

    float-to-double v6, v9

    float-to-double v8, v11

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/horcrux/svg/Point;-><init>(DD)V

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    :goto_4
    move v1, v3

    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v6, p4

    move/from16 v7, v17

    .line 355
    invoke-static/range {v0 .. v7}, Lcom/horcrux/svg/PathParser;->arcToBezier(FFFFFFZF)V

    :goto_5
    return-void

    .line 298
    :cond_b
    :goto_6
    invoke-static/range {p5 .. p6}, Lcom/horcrux/svg/PathParser;->lineTo(FF)V

    return-void
.end method

.method private static arcToBezier(FFFFFFZF)V
    .locals 24

    move/from16 v0, p4

    move/from16 v1, p7

    float-to-double v1, v1

    .line 399
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 400
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v2, v3, p2

    neg-float v4, v1

    mul-float v4, v4, p3

    mul-float v1, v1, p2

    mul-float v3, v3, p3

    sub-float v5, p5, v0

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    const/4 v8, 0x0

    cmpg-float v9, v5, v8

    if-gez v9, :cond_0

    if-eqz p6, :cond_0

    float-to-double v8, v5

    .line 409
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v6

    :goto_0
    double-to-float v5, v8

    goto :goto_1

    :cond_0
    cmpl-float v8, v5, v8

    if-lez v8, :cond_1

    if-nez p6, :cond_1

    float-to-double v8, v5

    .line 411
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, v6

    goto :goto_0

    :cond_1
    :goto_1
    float-to-double v6, v5

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 414
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/horcrux/svg/PathParser;->round(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-float v7, v6

    div-float/2addr v5, v7

    const-wide v7, 0x3ff5555555555555L    # 1.3333333333333333

    const/high16 v9, 0x40800000    # 4.0f

    div-float v9, v5, v9

    float-to-double v9, v9

    .line 417
    invoke-static {v9, v10}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    mul-double v9, v9, v7

    double-to-float v7, v9

    float-to-double v8, v0

    .line 419
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 420
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v6, :cond_2

    mul-float v12, v7, v8

    sub-float v12, v10, v12

    mul-float v10, v10, v7

    add-float/2addr v8, v10

    add-float/2addr v0, v5

    float-to-double v13, v0

    .line 427
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v10, v9

    .line 428
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v9, v13

    mul-float v13, v7, v9

    add-float/2addr v13, v10

    mul-float v14, v7, v10

    sub-float v14, v9, v14

    mul-float v15, v2, v12

    add-float v15, p0, v15

    mul-float v16, v4, v8

    add-float v15, v15, v16

    mul-float v12, v12, v1

    add-float v12, p1, v12

    mul-float v8, v8, v3

    add-float/2addr v12, v8

    mul-float v8, v2, v13

    add-float v8, p0, v8

    mul-float v16, v4, v14

    add-float v8, v8, v16

    mul-float v13, v13, v1

    add-float v13, p1, v13

    mul-float v14, v14, v3

    add-float/2addr v13, v14

    mul-float v14, v2, v10

    add-float v14, p0, v14

    mul-float v16, v4, v9

    add-float v14, v14, v16

    mul-float v16, v1, v10

    add-float v16, p1, v16

    mul-float v17, v3, v9

    move/from16 p3, v0

    add-float v0, v16, v17

    .line 440
    sget-object v16, Lcom/horcrux/svg/PathParser;->mPath:Landroid/graphics/Path;

    sget v17, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float v18, v15, v17

    mul-float v19, v12, v17

    mul-float v20, v8, v17

    mul-float v21, v13, v17

    mul-float v22, v14, v17

    mul-float v23, v0, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move/from16 p7, v1

    .line 441
    sget-object v1, Lcom/horcrux/svg/PathParser;->elements:Ljava/util/ArrayList;

    move/from16 v16, v2

    new-instance v2, Lcom/horcrux/svg/PathElement;

    move/from16 v17, v3

    sget-object v3, Lcom/horcrux/svg/ElementType;->kCGPathElementAddCurveToPoint:Lcom/horcrux/svg/ElementType;

    move/from16 v18, v4

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/horcrux/svg/Point;

    move/from16 p5, v5

    new-instance v5, Lcom/horcrux/svg/Point;

    move/from16 v19, v6

    move/from16 v20, v7

    float-to-double v6, v15

    move/from16 v21, v9

    move v15, v10

    float-to-double v9, v12

    invoke-direct {v5, v6, v7, v9, v10}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lcom/horcrux/svg/Point;

    float-to-double v7, v8

    float-to-double v9, v13

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v5, 0x2

    new-instance v7, Lcom/horcrux/svg/Point;

    float-to-double v8, v14

    float-to-double v12, v0

    invoke-direct {v7, v8, v9, v12, v13}, Lcom/horcrux/svg/Point;-><init>(DD)V

    aput-object v7, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p3

    move/from16 v5, p5

    move/from16 v1, p7

    move v10, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    goto/16 :goto_2

    :cond_2
    return-void
.end method

.method private static close()V
    .locals 10

    .line 388
    sget-boolean v0, Lcom/horcrux/svg/PathParser;->mPenDown:Z

    if-eqz v0, :cond_0

    .line 389
    sget v0, Lcom/horcrux/svg/PathParser;->mPenDownX:F

    sput v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    .line 390
    sget v0, Lcom/horcrux/svg/PathParser;->mPenDownY:F

    sput v0, Lcom/horcrux/svg/PathParser;->mPenY:F

    const/4 v0, 0x0

    .line 391
    sput-boolean v0, Lcom/horcrux/svg/PathParser;->mPenDown:Z

    .line 392
    sget-object v1, Lcom/horcrux/svg/PathParser;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 393
    sget-object v1, Lcom/horcrux/svg/PathParser;->elements:Ljava/util/ArrayList;

    new-instance v2, Lcom/horcrux/svg/PathElement;

    sget-object v3, Lcom/horcrux/svg/ElementType;->kCGPathElementCloseSubpath:Lcom/horcrux/svg/ElementType;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/horcrux/svg/Point;

    new-instance v5, Lcom/horcrux/svg/Point;

    sget v6, Lcom/horcrux/svg/PathParser;->mPenX:F

    float-to-double v6, v6

    sget v8, Lcom/horcrux/svg/PathParser;->mPenY:F

    float-to-double v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/horcrux/svg/Point;-><init>(DD)V

    aput-object v5, v4, v0

    invoke-direct {v2, v3, v4}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static cubicTo(FFFFFF)V
    .locals 8

    .line 233
    invoke-static {}, Lcom/horcrux/svg/PathParser;->setPenDown()V

    .line 234
    sput p4, Lcom/horcrux/svg/PathParser;->mPenX:F

    .line 235
    sput p5, Lcom/horcrux/svg/PathParser;->mPenY:F

    .line 236
    sget-object v0, Lcom/horcrux/svg/PathParser;->mPath:Landroid/graphics/Path;

    sget v1, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float v2, p0, v1

    mul-float v3, p1, v1

    mul-float v4, p2, v1

    mul-float v5, p3, v1

    mul-float v6, p4, v1

    mul-float v7, p5, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 237
    sget-object v0, Lcom/horcrux/svg/PathParser;->elements:Ljava/util/ArrayList;

    new-instance v1, Lcom/horcrux/svg/PathElement;

    sget-object v2, Lcom/horcrux/svg/ElementType;->kCGPathElementAddCurveToPoint:Lcom/horcrux/svg/ElementType;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/horcrux/svg/Point;

    new-instance v4, Lcom/horcrux/svg/Point;

    float-to-double v5, p0

    float-to-double p0, p1

    invoke-direct {v4, v5, v6, p0, p1}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 p0, 0x0

    aput-object v4, v3, p0

    new-instance p0, Lcom/horcrux/svg/Point;

    float-to-double p1, p2

    float-to-double v4, p3

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 p1, 0x1

    aput-object p0, v3, p1

    new-instance p0, Lcom/horcrux/svg/Point;

    float-to-double p1, p4

    float-to-double p3, p5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 p1, 0x2

    aput-object p0, v3, p1

    invoke-direct {v1, v2, v3}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static curve(FFFFFF)V
    .locals 2

    .line 222
    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    add-float/2addr p0, v0

    sget v1, Lcom/horcrux/svg/PathParser;->mPenY:F

    add-float/2addr p1, v1

    add-float/2addr p2, v0

    add-float/2addr p3, v1

    add-float/2addr p4, v0

    add-float/2addr p5, v1

    invoke-static/range {p0 .. p5}, Lcom/horcrux/svg/PathParser;->curveTo(FFFFFF)V

    return-void
.end method

.method private static curveTo(FFFFFF)V
    .locals 0

    .line 227
    sput p2, Lcom/horcrux/svg/PathParser;->mPivotX:F

    .line 228
    sput p3, Lcom/horcrux/svg/PathParser;->mPivotY:F

    .line 229
    invoke-static/range {p0 .. p5}, Lcom/horcrux/svg/PathParser;->cubicTo(FFFFFF)V

    return-void
.end method

.method private static is_absolute(C)Z
    .locals 0

    .line 494
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    return p0
.end method

.method private static is_cmd(C)Z
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_0
        0x43 -> :sswitch_0
        0x48 -> :sswitch_0
        0x4c -> :sswitch_0
        0x4d -> :sswitch_0
        0x51 -> :sswitch_0
        0x53 -> :sswitch_0
        0x54 -> :sswitch_0
        0x56 -> :sswitch_0
        0x5a -> :sswitch_0
        0x61 -> :sswitch_0
        0x63 -> :sswitch_0
        0x68 -> :sswitch_0
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x71 -> :sswitch_0
        0x73 -> :sswitch_0
        0x74 -> :sswitch_0
        0x76 -> :sswitch_0
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method private static is_number_start(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static line(FF)V
    .locals 1

    .line 209
    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    add-float/2addr p0, v0

    sget v0, Lcom/horcrux/svg/PathParser;->mPenY:F

    add-float/2addr p1, v0

    invoke-static {p0, p1}, Lcom/horcrux/svg/PathParser;->lineTo(FF)V

    return-void
.end method

.method private static lineTo(FF)V
    .locals 7

    .line 214
    invoke-static {}, Lcom/horcrux/svg/PathParser;->setPenDown()V

    .line 215
    sput p0, Lcom/horcrux/svg/PathParser;->mPenX:F

    sput p0, Lcom/horcrux/svg/PathParser;->mPivotX:F

    .line 216
    sput p1, Lcom/horcrux/svg/PathParser;->mPenY:F

    sput p1, Lcom/horcrux/svg/PathParser;->mPivotY:F

    .line 217
    sget-object v0, Lcom/horcrux/svg/PathParser;->mPath:Landroid/graphics/Path;

    sget v1, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float v2, p0, v1

    mul-float v1, v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 218
    sget-object v0, Lcom/horcrux/svg/PathParser;->elements:Ljava/util/ArrayList;

    new-instance v1, Lcom/horcrux/svg/PathElement;

    sget-object v2, Lcom/horcrux/svg/ElementType;->kCGPathElementAddLineToPoint:Lcom/horcrux/svg/ElementType;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/horcrux/svg/Point;

    new-instance v4, Lcom/horcrux/svg/Point;

    float-to-double v5, p0

    float-to-double p0, p1

    invoke-direct {v4, v5, v6, p0, p1}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 p0, 0x0

    aput-object v4, v3, p0

    invoke-direct {v1, v2, v3}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static move(FF)V
    .locals 1

    .line 197
    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    add-float/2addr p0, v0

    sget v0, Lcom/horcrux/svg/PathParser;->mPenY:F

    add-float/2addr p1, v0

    invoke-static {p0, p1}, Lcom/horcrux/svg/PathParser;->moveTo(FF)V

    return-void
.end method

.method private static moveTo(FF)V
    .locals 7

    .line 202
    sput p0, Lcom/horcrux/svg/PathParser;->mPenX:F

    sput p0, Lcom/horcrux/svg/PathParser;->mPivotX:F

    sput p0, Lcom/horcrux/svg/PathParser;->mPenDownX:F

    .line 203
    sput p1, Lcom/horcrux/svg/PathParser;->mPenY:F

    sput p1, Lcom/horcrux/svg/PathParser;->mPivotY:F

    sput p1, Lcom/horcrux/svg/PathParser;->mPenDownY:F

    .line 204
    sget-object v0, Lcom/horcrux/svg/PathParser;->mPath:Landroid/graphics/Path;

    sget v1, Lcom/horcrux/svg/PathParser;->mScale:F

    mul-float v2, p0, v1

    mul-float v1, v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 205
    sget-object v0, Lcom/horcrux/svg/PathParser;->elements:Ljava/util/ArrayList;

    new-instance v1, Lcom/horcrux/svg/PathElement;

    sget-object v2, Lcom/horcrux/svg/ElementType;->kCGPathElementMoveToPoint:Lcom/horcrux/svg/ElementType;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/horcrux/svg/Point;

    new-instance v4, Lcom/horcrux/svg/Point;

    float-to-double v5, p0

    float-to-double p0, p1

    invoke-direct {v4, v5, v6, p0, p1}, Lcom/horcrux/svg/Point;-><init>(DD)V

    const/4 p0, 0x0

    aput-object v4, v3, p0

    invoke-direct {v1, v2, v3}, Lcom/horcrux/svg/PathElement;-><init>(Lcom/horcrux/svg/ElementType;[Lcom/horcrux/svg/Point;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static parse(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 23

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/horcrux/svg/PathParser;->elements:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/horcrux/svg/PathParser;->mPath:Landroid/graphics/Path;

    .line 38
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/horcrux/svg/PathParser;->l:I

    .line 39
    sput-object p0, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    sput v0, Lcom/horcrux/svg/PathParser;->i:I

    const/4 v1, 0x0

    .line 42
    sput v1, Lcom/horcrux/svg/PathParser;->mPenX:F

    .line 43
    sput v1, Lcom/horcrux/svg/PathParser;->mPenY:F

    .line 44
    sput v1, Lcom/horcrux/svg/PathParser;->mPivotX:F

    .line 45
    sput v1, Lcom/horcrux/svg/PathParser;->mPivotY:F

    .line 46
    sput v1, Lcom/horcrux/svg/PathParser;->mPenDownX:F

    .line 47
    sput v1, Lcom/horcrux/svg/PathParser;->mPenDownY:F

    .line 48
    sput-boolean v0, Lcom/horcrux/svg/PathParser;->mPenDown:Z

    const/16 v2, 0x20

    const/16 v3, 0x20

    .line 50
    :cond_0
    :goto_0
    sget v4, Lcom/horcrux/svg/PathParser;->i:I

    sget v5, Lcom/horcrux/svg/PathParser;->l:I

    if-ge v4, v5, :cond_c

    .line 51
    invoke-static {}, Lcom/horcrux/svg/PathParser;->skip_spaces()V

    .line 53
    sget v4, Lcom/horcrux/svg/PathParser;->i:I

    sget v5, Lcom/horcrux/svg/PathParser;->l:I

    if-lt v4, v5, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 v4, 0x1

    if-eq v3, v2, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 58
    :goto_1
    sget-object v6, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    sget v7, Lcom/horcrux/svg/PathParser;->i:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x6d

    const/16 v8, 0x4d

    const-string v9, "UnexpectedData"

    if-nez v5, :cond_4

    if-eq v6, v8, :cond_4

    if-ne v6, v7, :cond_3

    goto :goto_2

    .line 62
    :cond_3
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_4
    :goto_2
    invoke-static {v6}, Lcom/horcrux/svg/PathParser;->is_cmd(C)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 71
    sget v3, Lcom/horcrux/svg/PathParser;->i:I

    add-int/2addr v3, v4

    sput v3, Lcom/horcrux/svg/PathParser;->i:I

    move v3, v6

    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 72
    :cond_6
    invoke-static {v6}, Lcom/horcrux/svg/PathParser;->is_number_start(C)Z

    move-result v6

    if-eqz v6, :cond_b

    if-eqz v5, :cond_b

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_a

    const/16 v5, 0x7a

    if-eq v3, v5, :cond_a

    if-eq v3, v8, :cond_7

    if-ne v3, v7, :cond_5

    .line 83
    :cond_7
    invoke-static {v3}, Lcom/horcrux/svg/PathParser;->is_absolute(C)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x4c

    goto :goto_3

    :cond_8
    const/16 v3, 0x6c

    .line 96
    :goto_3
    invoke-static {v3}, Lcom/horcrux/svg/PathParser;->is_absolute(C)Z

    move-result v5

    sparse-switch v3, :sswitch_data_0

    .line 176
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :sswitch_0
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v6

    invoke-static {v1, v6}, Lcom/horcrux/svg/PathParser;->line(FF)V

    goto/16 :goto_4

    .line 155
    :sswitch_1
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v6

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {v6, v9}, Lcom/horcrux/svg/PathParser;->smoothQuadraticBezierCurve(FF)V

    goto/16 :goto_4

    .line 139
    :sswitch_2
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v6

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v10

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v11

    invoke-static {v6, v9, v10, v11}, Lcom/horcrux/svg/PathParser;->smoothCurve(FFFF)V

    goto/16 :goto_4

    .line 147
    :sswitch_3
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v6

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v10

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v11

    invoke-static {v6, v9, v10, v11}, Lcom/horcrux/svg/PathParser;->quadraticBezierCurve(FFFF)V

    goto/16 :goto_4

    .line 99
    :sswitch_4
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v6

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {v6, v9}, Lcom/horcrux/svg/PathParser;->move(FF)V

    goto/16 :goto_4

    .line 107
    :sswitch_5
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v6

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {v6, v9}, Lcom/horcrux/svg/PathParser;->line(FF)V

    goto/16 :goto_4

    .line 115
    :sswitch_6
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v6

    invoke-static {v6, v1}, Lcom/horcrux/svg/PathParser;->line(FF)V

    goto/16 :goto_4

    .line 131
    :sswitch_7
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v10

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v11

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v12

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v13

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v14

    invoke-static/range {v9 .. v14}, Lcom/horcrux/svg/PathParser;->curve(FFFFFF)V

    goto/16 :goto_4

    .line 163
    :sswitch_8
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v15

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v16

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v17

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_flag()Z

    move-result v18

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_flag()Z

    move-result v19

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v20

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v21

    invoke-static/range {v15 .. v21}, Lcom/horcrux/svg/PathParser;->arc(FFFZZFF)V

    goto/16 :goto_4

    .line 172
    :sswitch_9
    invoke-static {}, Lcom/horcrux/svg/PathParser;->close()V

    goto/16 :goto_4

    .line 127
    :sswitch_a
    sget v6, Lcom/horcrux/svg/PathParser;->mPenX:F

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {v6, v9}, Lcom/horcrux/svg/PathParser;->lineTo(FF)V

    goto/16 :goto_4

    .line 159
    :sswitch_b
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v6

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {v6, v9}, Lcom/horcrux/svg/PathParser;->smoothQuadraticBezierCurveTo(FF)V

    goto/16 :goto_4

    .line 143
    :sswitch_c
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v6

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v10

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v11

    invoke-static {v6, v9, v10, v11}, Lcom/horcrux/svg/PathParser;->smoothCurveTo(FFFF)V

    goto :goto_4

    .line 151
    :sswitch_d
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v6

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v10

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v11

    invoke-static {v6, v9, v10, v11}, Lcom/horcrux/svg/PathParser;->quadraticBezierCurveTo(FFFF)V

    goto :goto_4

    .line 103
    :sswitch_e
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v6

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {v6, v9}, Lcom/horcrux/svg/PathParser;->moveTo(FF)V

    goto :goto_4

    .line 111
    :sswitch_f
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v6

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v9

    invoke-static {v6, v9}, Lcom/horcrux/svg/PathParser;->lineTo(FF)V

    goto :goto_4

    .line 119
    :sswitch_10
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v6

    sget v9, Lcom/horcrux/svg/PathParser;->mPenY:F

    invoke-static {v6, v9}, Lcom/horcrux/svg/PathParser;->lineTo(FF)V

    goto :goto_4

    .line 135
    :sswitch_11
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v10

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v11

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v12

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v13

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v14

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v15

    invoke-static/range {v10 .. v15}, Lcom/horcrux/svg/PathParser;->curveTo(FFFFFF)V

    goto :goto_4

    .line 167
    :sswitch_12
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v16

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v17

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v18

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_flag()Z

    move-result v19

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_flag()Z

    move-result v20

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v21

    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_number()F

    move-result v22

    invoke-static/range {v16 .. v22}, Lcom/horcrux/svg/PathParser;->arcTo(FFFZZFF)V

    :goto_4
    if-eqz v4, :cond_0

    if-eqz v5, :cond_9

    const/16 v3, 0x4d

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x6d

    goto/16 :goto_0

    .line 75
    :cond_a
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_b
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_c
    :goto_5
    sget-object v0, Lcom/horcrux/svg/PathParser;->mPath:Landroid/graphics/Path;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_12
        0x43 -> :sswitch_11
        0x48 -> :sswitch_10
        0x4c -> :sswitch_f
        0x4d -> :sswitch_e
        0x51 -> :sswitch_d
        0x53 -> :sswitch_c
        0x54 -> :sswitch_b
        0x56 -> :sswitch_a
        0x5a -> :sswitch_9
        0x61 -> :sswitch_8
        0x63 -> :sswitch_7
        0x68 -> :sswitch_6
        0x6c -> :sswitch_5
        0x6d -> :sswitch_4
        0x71 -> :sswitch_3
        0x73 -> :sswitch_2
        0x74 -> :sswitch_1
        0x76 -> :sswitch_0
        0x7a -> :sswitch_9
    .end sparse-switch
.end method

.method private static parse_flag()Z
    .locals 5

    .line 500
    invoke-static {}, Lcom/horcrux/svg/PathParser;->skip_spaces()V

    .line 502
    sget-object v0, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    sget v1, Lcom/horcrux/svg/PathParser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    const/16 v2, 0x31

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "UnexpectedData"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_1
    :goto_0
    sget v1, Lcom/horcrux/svg/PathParser;->i:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    sput v1, Lcom/horcrux/svg/PathParser;->i:I

    .line 507
    sget v4, Lcom/horcrux/svg/PathParser;->l:I

    if-ge v1, v4, :cond_2

    sget-object v4, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2c

    if-ne v1, v4, :cond_2

    .line 508
    sget v1, Lcom/horcrux/svg/PathParser;->i:I

    add-int/2addr v1, v3

    sput v1, Lcom/horcrux/svg/PathParser;->i:I

    .line 510
    :cond_2
    invoke-static {}, Lcom/horcrux/svg/PathParser;->skip_spaces()V

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method private static parse_list_number()F
    .locals 2

    .line 521
    sget v0, Lcom/horcrux/svg/PathParser;->i:I

    sget v1, Lcom/horcrux/svg/PathParser;->l:I

    if-eq v0, v1, :cond_0

    .line 525
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_number()F

    move-result v0

    .line 526
    invoke-static {}, Lcom/horcrux/svg/PathParser;->skip_spaces()V

    .line 527
    invoke-static {}, Lcom/horcrux/svg/PathParser;->parse_list_separator()V

    return v0

    .line 522
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "UnexpectedEnd"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parse_list_separator()V
    .locals 2

    .line 599
    sget v0, Lcom/horcrux/svg/PathParser;->i:I

    sget v1, Lcom/horcrux/svg/PathParser;->l:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    .line 600
    sget v0, Lcom/horcrux/svg/PathParser;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/horcrux/svg/PathParser;->i:I

    :cond_0
    return-void
.end method

.method private static parse_number()F
    .locals 10

    .line 534
    invoke-static {}, Lcom/horcrux/svg/PathParser;->skip_spaces()V

    .line 536
    sget v0, Lcom/horcrux/svg/PathParser;->i:I

    sget v1, Lcom/horcrux/svg/PathParser;->l:I

    const-string v2, "InvalidNumber"

    if-eq v0, v1, :cond_c

    .line 542
    sget-object v1, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2b

    const/16 v4, 0x2d

    if-eq v1, v4, :cond_0

    if-ne v1, v3, :cond_1

    .line 546
    :cond_0
    sget v1, Lcom/horcrux/svg/PathParser;->i:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/horcrux/svg/PathParser;->i:I

    .line 547
    sget-object v5, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :cond_1
    const/16 v5, 0x39

    const/16 v6, 0x2e

    const/16 v7, 0x30

    if-lt v1, v7, :cond_2

    if-gt v1, v5, :cond_2

    .line 552
    invoke-static {}, Lcom/horcrux/svg/PathParser;->skip_digits()V

    .line 553
    sget v8, Lcom/horcrux/svg/PathParser;->i:I

    sget v9, Lcom/horcrux/svg/PathParser;->l:I

    if-ge v8, v9, :cond_3

    .line 554
    sget-object v1, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_2
    if-ne v1, v6, :cond_b

    :cond_3
    :goto_0
    if-ne v1, v6, :cond_4

    .line 562
    sget v6, Lcom/horcrux/svg/PathParser;->i:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/horcrux/svg/PathParser;->i:I

    .line 563
    invoke-static {}, Lcom/horcrux/svg/PathParser;->skip_digits()V

    .line 564
    sget v6, Lcom/horcrux/svg/PathParser;->i:I

    sget v8, Lcom/horcrux/svg/PathParser;->l:I

    if-ge v6, v8, :cond_4

    .line 565
    sget-object v1, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :cond_4
    const/16 v6, 0x65

    if-eq v1, v6, :cond_5

    const/16 v6, 0x45

    if-ne v1, v6, :cond_9

    .line 569
    :cond_5
    sget v1, Lcom/horcrux/svg/PathParser;->i:I

    add-int/lit8 v6, v1, 0x1

    sget v8, Lcom/horcrux/svg/PathParser;->l:I

    if-ge v6, v8, :cond_9

    .line 570
    sget-object v6, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x6d

    if-eq v1, v6, :cond_9

    const/16 v6, 0x78

    if-eq v1, v6, :cond_9

    .line 573
    sget v1, Lcom/horcrux/svg/PathParser;->i:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/horcrux/svg/PathParser;->i:I

    .line 574
    sget-object v6, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_8

    if-ne v1, v4, :cond_6

    goto :goto_1

    :cond_6
    if-lt v1, v7, :cond_7

    if-gt v1, v5, :cond_7

    .line 580
    invoke-static {}, Lcom/horcrux/svg/PathParser;->skip_digits()V

    goto :goto_2

    .line 582
    :cond_7
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_8
    :goto_1
    sget v1, Lcom/horcrux/svg/PathParser;->i:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/horcrux/svg/PathParser;->i:I

    .line 578
    invoke-static {}, Lcom/horcrux/svg/PathParser;->skip_digits()V

    .line 587
    :cond_9
    :goto_2
    sget-object v1, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    sget v3, Lcom/horcrux/svg/PathParser;->i:I

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 591
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_a

    return v0

    .line 592
    :cond_a
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_b
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_c
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static quadraticBezierCurve(FFFF)V
    .locals 2

    .line 256
    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    add-float/2addr p0, v0

    sget v1, Lcom/horcrux/svg/PathParser;->mPenY:F

    add-float/2addr p1, v1

    add-float/2addr p2, v0

    add-float/2addr p3, v1

    invoke-static {p0, p1, p2, p3}, Lcom/horcrux/svg/PathParser;->quadraticBezierCurveTo(FFFF)V

    return-void
.end method

.method private static quadraticBezierCurveTo(FFFF)V
    .locals 9

    .line 261
    sput p0, Lcom/horcrux/svg/PathParser;->mPivotX:F

    .line 262
    sput p1, Lcom/horcrux/svg/PathParser;->mPivotY:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p0, p0, v0

    add-float v1, p2, p0

    const/high16 v2, 0x40400000    # 3.0f

    div-float v5, v1, v2

    mul-float p1, p1, v0

    add-float v0, p3, p1

    div-float v6, v0, v2

    .line 267
    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    add-float/2addr v0, p0

    div-float v3, v0, v2

    .line 268
    sget p0, Lcom/horcrux/svg/PathParser;->mPenY:F

    add-float/2addr p0, p1

    div-float v4, p0, v2

    move v7, p2

    move v8, p3

    .line 269
    invoke-static/range {v3 .. v8}, Lcom/horcrux/svg/PathParser;->cubicTo(FFFFFF)V

    return-void
.end method

.method private static round(D)D
    .locals 4

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    .line 454
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double p0, p0, v0

    .line 455
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static setPenDown()V
    .locals 1

    .line 446
    sget-boolean v0, Lcom/horcrux/svg/PathParser;->mPenDown:Z

    if-nez v0, :cond_0

    .line 447
    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    sput v0, Lcom/horcrux/svg/PathParser;->mPenDownX:F

    .line 448
    sget v0, Lcom/horcrux/svg/PathParser;->mPenY:F

    sput v0, Lcom/horcrux/svg/PathParser;->mPenDownY:F

    const/4 v0, 0x1

    .line 449
    sput-boolean v0, Lcom/horcrux/svg/PathParser;->mPenDown:Z

    :cond_0
    return-void
.end method

.method private static skip_digits()V
    .locals 2

    .line 605
    :goto_0
    sget v0, Lcom/horcrux/svg/PathParser;->i:I

    sget v1, Lcom/horcrux/svg/PathParser;->l:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/horcrux/svg/PathParser;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/horcrux/svg/PathParser;->i:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static skip_spaces()V
    .locals 2

    .line 459
    :goto_0
    sget v0, Lcom/horcrux/svg/PathParser;->i:I

    sget v1, Lcom/horcrux/svg/PathParser;->l:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/horcrux/svg/PathParser;->s:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/horcrux/svg/PathParser;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/horcrux/svg/PathParser;->i:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static smoothCurve(FFFF)V
    .locals 2

    .line 241
    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    add-float/2addr p0, v0

    sget v1, Lcom/horcrux/svg/PathParser;->mPenY:F

    add-float/2addr p1, v1

    add-float/2addr p2, v0

    add-float/2addr p3, v1

    invoke-static {p0, p1, p2, p3}, Lcom/horcrux/svg/PathParser;->smoothCurveTo(FFFF)V

    return-void
.end method

.method private static smoothCurveTo(FFFF)V
    .locals 9

    .line 248
    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    sget v2, Lcom/horcrux/svg/PathParser;->mPivotX:F

    sub-float v3, v0, v2

    .line 249
    sget v0, Lcom/horcrux/svg/PathParser;->mPenY:F

    mul-float v0, v0, v1

    sget v1, Lcom/horcrux/svg/PathParser;->mPivotY:F

    sub-float v4, v0, v1

    .line 250
    sput p0, Lcom/horcrux/svg/PathParser;->mPivotX:F

    .line 251
    sput p1, Lcom/horcrux/svg/PathParser;->mPivotY:F

    move v5, p0

    move v6, p1

    move v7, p2

    move v8, p3

    .line 252
    invoke-static/range {v3 .. v8}, Lcom/horcrux/svg/PathParser;->cubicTo(FFFFFF)V

    return-void
.end method

.method private static smoothQuadraticBezierCurve(FF)V
    .locals 1

    .line 273
    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    add-float/2addr p0, v0

    sget v0, Lcom/horcrux/svg/PathParser;->mPenY:F

    add-float/2addr p1, v0

    invoke-static {p0, p1}, Lcom/horcrux/svg/PathParser;->smoothQuadraticBezierCurveTo(FF)V

    return-void
.end method

.method private static smoothQuadraticBezierCurveTo(FF)V
    .locals 3

    .line 280
    sget v0, Lcom/horcrux/svg/PathParser;->mPenX:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    sget v2, Lcom/horcrux/svg/PathParser;->mPivotX:F

    sub-float/2addr v0, v2

    .line 281
    sget v2, Lcom/horcrux/svg/PathParser;->mPenY:F

    mul-float v2, v2, v1

    sget v1, Lcom/horcrux/svg/PathParser;->mPivotY:F

    sub-float/2addr v2, v1

    .line 282
    invoke-static {v0, v2, p0, p1}, Lcom/horcrux/svg/PathParser;->quadraticBezierCurveTo(FFFF)V

    return-void
.end method
