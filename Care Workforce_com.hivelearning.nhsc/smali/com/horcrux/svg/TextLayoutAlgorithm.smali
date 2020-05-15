.class Lcom/horcrux/svg/TextLayoutAlgorithm;
.super Ljava/lang/Object;
.source "TextLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/horcrux/svg/TextLayoutAlgorithm$LayoutInput;,
        Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSubTreeTypographicCharacterPositions(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Landroid/view/View;Lcom/horcrux/svg/TextPathView;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/TextPathView;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/TextView;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Landroid/view/View;",
            "Lcom/horcrux/svg/TextPathView;",
            ")V"
        }
    .end annotation

    .line 54
    instance-of v0, p4, Lcom/horcrux/svg/TSpanView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 55
    check-cast p4, Lcom/horcrux/svg/TSpanView;

    .line 56
    iget-object v0, p4, Lcom/horcrux/svg/TSpanView;->mContent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 58
    :goto_0
    invoke-virtual {p4}, Lcom/horcrux/svg/TSpanView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 59
    invoke-virtual {p4, v1}, Lcom/horcrux/svg/TSpanView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/horcrux/svg/TextLayoutAlgorithm;->getSubTreeTypographicCharacterPositions(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Landroid/view/View;Lcom/horcrux/svg/TextPathView;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 63
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 69
    :cond_2
    instance-of v0, p4, Lcom/horcrux/svg/TextPathView;

    if-eqz v0, :cond_3

    move-object p5, p4

    check-cast p5, Lcom/horcrux/svg/TextPathView;

    .line 70
    :cond_3
    :goto_2
    invoke-virtual {p5}, Lcom/horcrux/svg/TextPathView;->getChildCount()I

    move-result p4

    if-ge v1, p4, :cond_4

    .line 71
    invoke-virtual {p5, v1}, Lcom/horcrux/svg/TextPathView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/horcrux/svg/TextLayoutAlgorithm;->getSubTreeTypographicCharacterPositions(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Landroid/view/View;Lcom/horcrux/svg/TextPathView;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method layoutText(Lcom/horcrux/svg/TextLayoutAlgorithm$LayoutInput;)[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;
    .locals 26

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 88
    iget-object v8, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$LayoutInput;->text:Lcom/horcrux/svg/TextView;

    .line 89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v3, v6

    move-object v4, v8

    .line 92
    invoke-direct/range {v0 .. v5}, Lcom/horcrux/svg/TextLayoutAlgorithm;->getSubTreeTypographicCharacterPositions(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Landroid/view/View;Lcom/horcrux/svg/TextPathView;)V

    .line 93
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 98
    array-length v10, v0

    .line 114
    new-array v11, v10, [Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    const/4 v12, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v10, :cond_0

    .line 116
    new-instance v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    aget-char v3, v0, v1

    invoke-direct {v2, v7, v1, v3}, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;-><init>(Lcom/horcrux/svg/TextLayoutAlgorithm;IC)V

    aput-object v2, v11, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v10, :cond_1

    return-object v11

    .line 132
    :cond_1
    new-array v13, v10, [Landroid/graphics/PointF;

    const/4 v0, 0x0

    :goto_1
    const/4 v14, 0x0

    if-ge v0, v10, :cond_2

    .line 134
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v14, v14}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const/4 v15, 0x1

    if-ge v0, v10, :cond_6

    .line 180
    aget-object v1, v11, v0

    iput-boolean v15, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->addressable:Z

    .line 186
    aget-object v1, v11, v0

    iput-boolean v12, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->middle:Z

    .line 195
    aget-object v1, v11, v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    iput-boolean v15, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->anchoredChunk:Z

    .line 206
    aget-object v1, v11, v0

    iget-boolean v1, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->addressable:Z

    if-eqz v1, :cond_4

    aget-object v1, v11, v0

    iget-boolean v1, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->middle:Z

    if-nez v1, :cond_4

    .line 207
    aget-object v1, v13, v0

    invoke-virtual {v1, v14, v14}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_4

    :cond_4
    if-lez v0, :cond_5

    .line 209
    aget-object v1, v13, v0

    add-int/lit8 v2, v0, -0x1

    aget-object v2, v13, v2

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 231
    :cond_6
    new-array v6, v10, [Ljava/lang/String;

    .line 232
    new-array v5, v10, [Ljava/lang/String;

    .line 233
    new-array v4, v10, [Ljava/lang/String;

    .line 234
    new-array v3, v10, [Ljava/lang/String;

    .line 502
    new-instance v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v16, v3

    move-object v3, v6

    move-object/from16 v17, v4

    move-object v4, v5

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;-><init>(Lcom/horcrux/svg/TextLayoutAlgorithm;[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 521
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v14, v14}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v10, :cond_9

    .line 530
    aget-object v2, v17, v1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "0"

    if-eqz v2, :cond_7

    .line 531
    aput-object v4, v17, v1

    .line 533
    :cond_7
    aget-object v2, v18, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 534
    aput-object v4, v18, v1

    .line 540
    :cond_8
    iget v2, v0, Landroid/graphics/PointF;->x:F

    aget-object v3, v17, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 541
    iget v2, v0, Landroid/graphics/PointF;->y:F

    aget-object v3, v18, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 546
    aget-object v2, v11, v1

    aget-object v3, v13, v1

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    float-to-double v3, v3

    iput-wide v3, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    .line 547
    aget-object v2, v11, v1

    aget-object v3, v13, v1

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    float-to-double v3, v3

    iput-wide v3, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->y:D

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 749
    :cond_9
    new-instance v1, Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;

    invoke-direct {v1, v7, v11}, Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;-><init>(Lcom/horcrux/svg/TextLayoutAlgorithm;[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;)V

    .line 750
    invoke-static {v1, v8}, Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;->access$000(Lcom/horcrux/svg/TextLayoutAlgorithm$1TextLengthResolver;Lcom/horcrux/svg/TextView;)V

    .line 765
    invoke-virtual {v0, v14, v14}, Landroid/graphics/PointF;->set(FF)V

    const/4 v1, 0x1

    :cond_a
    :goto_6
    if-ge v1, v10, :cond_e

    .line 777
    aget-object v2, v17, v1

    if-eqz v2, :cond_b

    .line 778
    aget-object v2, v17, v1

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    aget-object v4, v11, v1

    iget-wide v4, v4, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 786
    :cond_b
    aget-object v2, v18, v1

    if-eqz v2, :cond_c

    .line 787
    aget-object v2, v18, v1

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    aget-object v4, v11, v1

    iget-wide v4, v4, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->y:D

    sub-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 795
    :cond_c
    aget-object v2, v11, v1

    iget-wide v3, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    iget v5, v0, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    iput-wide v3, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    .line 796
    aget-object v2, v11, v1

    iget-wide v3, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->y:D

    iget v5, v0, Landroid/graphics/PointF;->y:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    iput-wide v3, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->y:D

    .line 801
    aget-object v2, v11, v1

    iget-boolean v2, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->middle:Z

    if-eqz v2, :cond_d

    aget-object v2, v11, v1

    iget-boolean v2, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->anchoredChunk:Z

    if-eqz v2, :cond_d

    .line 806
    aget-object v2, v11, v1

    iput-boolean v12, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->anchoredChunk:Z

    :cond_d
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v10, :cond_a

    .line 815
    aget-object v2, v11, v1

    iput-boolean v15, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->anchoredChunk:Z

    goto :goto_6

    :cond_e
    const/4 v4, 0x0

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v8, 0x0

    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v18, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v20, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_7
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    if-ge v4, v10, :cond_1c

    .line 858
    aget-object v1, v11, v4

    iget-boolean v1, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->addressable:Z

    if-nez v1, :cond_f

    goto/16 :goto_d

    .line 861
    :cond_f
    aget-object v1, v11, v4

    iget-boolean v1, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->anchoredChunk:Z

    if-eqz v1, :cond_10

    move-wide/from16 v18, v5

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v12, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_8

    :cond_10
    move-wide/from16 v12, v16

    move-wide/from16 v16, v20

    .line 885
    :goto_8
    aget-object v1, v11, v4

    iget-wide v0, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    .line 886
    aget-object v14, v11, v4

    iget-wide v2, v14, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->advance:D

    add-double/2addr v2, v0

    .line 887
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 888
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    if-lez v4, :cond_11

    .line 909
    aget-object v2, v11, v4

    iget-boolean v2, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->anchoredChunk:Z

    if-eqz v2, :cond_11

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v12, v18, v2

    if-nez v12, :cond_12

    goto :goto_9

    :cond_11
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_9
    add-int/lit8 v12, v10, -0x1

    if-ne v4, v12, :cond_1b

    .line 910
    :cond_12
    sget-object v12, Lcom/horcrux/svg/TextProperties$TextAnchor;->start:Lcom/horcrux/svg/TextProperties$TextAnchor;

    .line 911
    sget-object v13, Lcom/horcrux/svg/TextProperties$Direction;->ltr:Lcom/horcrux/svg/TextProperties$Direction;

    add-int/lit8 v14, v10, -0x1

    if-ne v4, v14, :cond_13

    move-wide/from16 v16, v0

    move-wide/from16 v18, v5

    .line 918
    :cond_13
    aget-object v15, v11, v8

    iget-wide v2, v15, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    .line 919
    sget-object v15, Lcom/horcrux/svg/TextLayoutAlgorithm$1;->$SwitchMap$com$horcrux$svg$TextProperties$TextAnchor:[I

    invoke-virtual {v12}, Lcom/horcrux/svg/TextProperties$TextAnchor;->ordinal()I

    move-result v12

    aget v12, v15, v12

    const/4 v15, 0x1

    if-eq v12, v15, :cond_16

    const/4 v15, 0x2

    if-eq v12, v15, :cond_15

    const/4 v15, 0x3

    if-eq v12, v15, :cond_14

    goto :goto_b

    .line 937
    :cond_14
    sget-object v12, Lcom/horcrux/svg/TextProperties$Direction;->ltr:Lcom/horcrux/svg/TextProperties$Direction;

    if-ne v13, v12, :cond_17

    goto :goto_a

    .line 929
    :cond_15
    sget-object v12, Lcom/horcrux/svg/TextProperties$Direction;->ltr:Lcom/horcrux/svg/TextProperties$Direction;

    add-double v12, v18, v16

    div-double v12, v12, v22

    sub-double/2addr v2, v12

    goto :goto_b

    .line 921
    :cond_16
    sget-object v12, Lcom/horcrux/svg/TextProperties$Direction;->ltr:Lcom/horcrux/svg/TextProperties$Direction;

    if-ne v13, v12, :cond_18

    :cond_17
    sub-double v2, v2, v18

    goto :goto_b

    :cond_18
    :goto_a
    sub-double v2, v2, v16

    :goto_b
    if-ne v4, v14, :cond_19

    move v12, v4

    goto :goto_c

    :cond_19
    add-int/lit8 v12, v4, -0x1

    :goto_c
    if-gt v8, v12, :cond_1a

    .line 954
    aget-object v13, v11, v8

    iget-wide v14, v13, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    add-double/2addr v14, v2

    iput-wide v14, v13, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_1a
    move v8, v4

    :cond_1b
    move-wide/from16 v20, v16

    move-wide/from16 v16, v0

    :goto_d
    add-int/lit8 v4, v4, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_7

    .line 981
    :cond_1c
    new-instance v0, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 983
    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2}, Landroid/graphics/PathMeasure;-><init>()V

    const/4 v3, 0x0

    move-object v6, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_e
    if-ge v5, v10, :cond_31

    .line 991
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/horcrux/svg/TextPathView;

    if-eqz v12, :cond_2c

    .line 992
    aget-object v13, v11, v5

    iget-boolean v13, v13, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->addressable:Z

    if-eqz v13, :cond_2c

    .line 993
    invoke-virtual {v12, v3, v3}, Lcom/horcrux/svg/TextPathView;->getTextPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v6

    .line 1000
    aget-object v13, v11, v5

    iget-boolean v13, v13, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->middle:Z

    if-nez v13, :cond_2b

    .line 1015
    invoke-virtual {v12}, Lcom/horcrux/svg/TextPathView;->getSide()Lcom/horcrux/svg/TextProperties$TextPathSide;

    sget-object v13, Lcom/horcrux/svg/TextProperties$TextPathSide;->right:Lcom/horcrux/svg/TextProperties$TextPathSide;

    const/4 v13, 0x0

    .line 1022
    invoke-virtual {v2, v6, v13}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 1023
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v13

    float-to-double v13, v13

    .line 1032
    invoke-virtual {v12}, Lcom/horcrux/svg/TextPathView;->getStartOffset()Lcom/horcrux/svg/SVGLength;

    move-result-object v15

    move/from16 v17, v4

    iget-wide v3, v15, Lcom/horcrux/svg/SVGLength;->value:D

    .line 1039
    aget-object v15, v11, v5

    move-object/from16 v18, v2

    iget-wide v1, v15, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->advance:D

    .line 1045
    aget-object v15, v11, v5

    move-object/from16 v19, v6

    iget-wide v6, v15, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    .line 1046
    aget-object v15, v11, v5

    move-object/from16 v24, v9

    move/from16 v25, v10

    iget-wide v9, v15, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->y:D

    .line 1047
    aget-object v9, v11, v5

    iget-wide v9, v9, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->rotate:D

    div-double v1, v1, v22

    add-double/2addr v6, v1

    add-double/2addr v6, v3

    .line 1074
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/PathMeasure;->isClosed()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1e

    cmpg-double v1, v6, v2

    if-ltz v1, :cond_1d

    cmpl-double v1, v6, v13

    if-lez v1, :cond_1e

    .line 1075
    :cond_1d
    aget-object v1, v11, v5

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->hidden:Z

    .line 1082
    :cond_1e
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/PathMeasure;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1106
    sget-object v1, Lcom/horcrux/svg/TextProperties$TextAnchor;->start:Lcom/horcrux/svg/TextProperties$TextAnchor;

    .line 1107
    sget-object v4, Lcom/horcrux/svg/TextProperties$Direction;->ltr:Lcom/horcrux/svg/TextProperties$Direction;

    .line 1109
    aget-object v9, v11, v8

    iget-wide v9, v9, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    .line 1110
    sget-object v9, Lcom/horcrux/svg/TextLayoutAlgorithm$1;->$SwitchMap$com$horcrux$svg$TextProperties$TextAnchor:[I

    invoke-virtual {v1}, Lcom/horcrux/svg/TextProperties$TextAnchor;->ordinal()I

    move-result v1

    aget v1, v9, v1

    const/4 v9, 0x1

    if-eq v1, v9, :cond_25

    const/4 v9, 0x2

    if-eq v1, v9, :cond_23

    const/4 v9, 0x3

    if-eq v1, v9, :cond_1f

    goto :goto_f

    .line 1130
    :cond_1f
    sget-object v1, Lcom/horcrux/svg/TextProperties$Direction;->ltr:Lcom/horcrux/svg/TextProperties$Direction;

    if-ne v4, v1, :cond_21

    .line 1131
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    neg-double v9, v13

    cmpg-double v1, v6, v9

    if-ltz v1, :cond_20

    cmpl-double v1, v6, v2

    if-lez v1, :cond_29

    .line 1132
    :cond_20
    aget-object v1, v11, v5

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->hidden:Z

    goto :goto_f

    :cond_21
    const/4 v4, 0x1

    cmpg-double v1, v6, v2

    if-ltz v1, :cond_22

    cmpl-double v1, v6, v13

    if-lez v1, :cond_29

    .line 1136
    :cond_22
    aget-object v1, v11, v5

    iput-boolean v4, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->hidden:Z

    goto :goto_f

    .line 1124
    :cond_23
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    neg-double v1, v13

    div-double v1, v1, v22

    cmpg-double v3, v6, v1

    if-ltz v3, :cond_24

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double v1, v13, v22

    cmpl-double v3, v6, v1

    if-lez v3, :cond_29

    .line 1125
    :cond_24
    aget-object v1, v11, v5

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->hidden:Z

    goto :goto_f

    .line 1112
    :cond_25
    sget-object v1, Lcom/horcrux/svg/TextProperties$Direction;->ltr:Lcom/horcrux/svg/TextProperties$Direction;

    if-ne v4, v1, :cond_27

    cmpg-double v1, v6, v2

    if-ltz v1, :cond_26

    cmpl-double v1, v6, v13

    if-lez v1, :cond_29

    .line 1114
    :cond_26
    aget-object v1, v11, v5

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->hidden:Z

    goto :goto_f

    .line 1117
    :cond_27
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    neg-double v9, v13

    cmpg-double v1, v6, v9

    if-ltz v1, :cond_28

    cmpl-double v1, v6, v2

    if-lez v1, :cond_29

    .line 1118
    :cond_28
    aget-object v1, v11, v5

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->hidden:Z

    .line 1145
    :cond_29
    :goto_f
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    rem-double/2addr v6, v13

    .line 1149
    aget-object v1, v11, v5

    iget-boolean v1, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->hidden:Z

    if-nez v1, :cond_2a

    const/4 v1, 0x2

    new-array v2, v1, [F

    new-array v3, v1, [F

    double-to-float v1, v6

    move-object/from16 v4, v18

    .line 1158
    invoke-virtual {v4, v1, v2, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    const/4 v1, 0x1

    .line 1161
    aget v2, v3, v1

    float-to-double v1, v2

    const/4 v6, 0x0

    aget v3, v3, v6

    float-to-double v6, v3

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v6, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v1, v1, v6

    const-wide v6, 0x4056800000000000L    # 90.0

    add-double/2addr v6, v1

    .line 1173
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 1193
    aget-object v3, v11, v5

    iget-wide v6, v3, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->rotate:D

    add-double/2addr v6, v1

    iput-wide v6, v3, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->rotate:D

    goto :goto_10

    :cond_2a
    move-object/from16 v4, v18

    goto :goto_10

    :cond_2b
    move/from16 v17, v4

    move-object/from16 v19, v6

    move-object/from16 v24, v9

    move/from16 v25, v10

    move-object v4, v2

    .line 1236
    aget-object v1, v11, v5

    add-int/lit8 v2, v5, -0x1

    aget-object v3, v11, v2

    iget-wide v6, v3, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    iput-wide v6, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    .line 1237
    aget-object v1, v11, v5

    aget-object v3, v11, v2

    iget-wide v6, v3, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->y:D

    iput-wide v6, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->y:D

    .line 1238
    aget-object v1, v11, v5

    aget-object v2, v11, v2

    iget-wide v2, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->rotate:D

    iput-wide v2, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->rotate:D

    :goto_10
    move-object/from16 v6, v19

    const/4 v15, 0x1

    goto :goto_11

    :cond_2c
    move/from16 v17, v4

    move-object/from16 v24, v9

    move/from16 v25, v10

    move-object v4, v2

    :goto_11
    if-nez v12, :cond_30

    .line 1249
    aget-object v1, v11, v5

    iget-boolean v1, v1, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->addressable:Z

    if-eqz v1, :cond_30

    if-eqz v15, :cond_2d

    const/4 v13, 0x0

    .line 1264
    invoke-virtual {v4, v6, v13}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 1266
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v2, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 1267
    aget v3, v2, v13

    const/4 v9, 0x1

    aget v2, v2, v9

    invoke-virtual {v0, v3, v2}, Landroid/graphics/PointF;->set(FF)V

    const/4 v15, 0x0

    const/16 v17, 0x1

    goto :goto_12

    :cond_2d
    const/4 v1, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v13, 0x0

    :goto_12
    if-eqz v17, :cond_2f

    .line 1284
    aget-object v2, v11, v5

    iget-boolean v2, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->anchoredChunk:Z

    if-eqz v2, :cond_2e

    move/from16 p1, v8

    const/16 v17, 0x0

    goto :goto_13

    .line 1287
    :cond_2e
    aget-object v2, v11, v5

    move/from16 p1, v8

    iget-wide v7, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v9

    iput-wide v7, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->x:D

    .line 1288
    aget-object v2, v11, v5

    iget-wide v7, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->y:D

    iget v3, v0, Landroid/graphics/PointF;->y:F

    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v9

    iput-wide v7, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->y:D

    goto :goto_13

    :cond_2f
    move/from16 p1, v8

    goto :goto_13

    :cond_30
    move/from16 p1, v8

    const/4 v1, 0x2

    const/4 v13, 0x0

    :goto_13
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object v2, v4

    move/from16 v4, v17

    move-object/from16 v9, v24

    move/from16 v10, v25

    const/4 v3, 0x0

    goto/16 :goto_e

    :cond_31
    return-object v11
.end method
