.class Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;
.super Ljava/lang/Object;
.source "TextLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/horcrux/svg/TextLayoutAlgorithm;->layoutText(Lcom/horcrux/svg/TextLayoutAlgorithm$LayoutInput;)[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CharacterPositioningResolver"
.end annotation


# instance fields
.field private global:I

.field private horizontal:Z

.field private in_text_path:Z

.field private resolve_dx:[Ljava/lang/String;

.field private resolve_dy:[Ljava/lang/String;

.field private resolve_x:[Ljava/lang/String;

.field private resolve_y:[Ljava/lang/String;

.field private result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

.field final synthetic this$0:Lcom/horcrux/svg/TextLayoutAlgorithm;


# direct methods
.method constructor <init>(Lcom/horcrux/svg/TextLayoutAlgorithm;[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 269
    iput-object p1, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->this$0:Lcom/horcrux/svg/TextLayoutAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 254
    iput p1, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->global:I

    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->horizontal:Z

    .line 256
    iput-boolean p1, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->in_text_path:Z

    .line 270
    iput-object p2, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    .line 271
    iput-object p3, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_x:[Ljava/lang/String;

    .line 272
    iput-object p4, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_y:[Ljava/lang/String;

    .line 273
    iput-object p5, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_dx:[Ljava/lang/String;

    .line 274
    iput-object p6, p0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_dy:[Ljava/lang/String;

    return-void
.end method

.method private resolveCharacterPositioning(Lcom/horcrux/svg/TextView;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 281
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/horcrux/svg/TextView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/horcrux/svg/TSpanView;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 468
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/horcrux/svg/TextPathView;

    if-ne v2, v3, :cond_d

    .line 469
    iget v2, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->global:I

    .line 476
    iget-object v3, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    aget-object v2, v3, v2

    iput-boolean v4, v2, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->anchoredChunk:Z

    .line 480
    iput-boolean v4, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->in_text_path:Z

    const/4 v2, 0x0

    .line 486
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/horcrux/svg/TextView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 487
    invoke-virtual {v1, v2}, Lcom/horcrux/svg/TextView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/horcrux/svg/TextView;

    invoke-direct {v0, v3}, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolveCharacterPositioning(Lcom/horcrux/svg/TextView;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 495
    :cond_1
    instance-of v1, v1, Lcom/horcrux/svg/TextPathView;

    if-eqz v1, :cond_d

    .line 496
    iput-boolean v5, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->in_text_path:Z

    goto/16 :goto_6

    .line 286
    :cond_2
    :goto_1
    iget v2, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->global:I

    new-array v3, v5, [Ljava/lang/String;

    new-array v6, v5, [Ljava/lang/String;

    new-array v7, v5, [Ljava/lang/String;

    new-array v8, v5, [Ljava/lang/String;

    new-array v9, v5, [D

    .line 321
    iget-boolean v10, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->in_text_path:Z

    if-nez v10, :cond_3

    .line 322
    invoke-static {v5, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_2

    .line 333
    :cond_3
    iget-boolean v10, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->horizontal:Z

    const/4 v10, 0x0

    .line 350
    :goto_2
    check-cast v1, Lcom/horcrux/svg/TSpanView;

    iget-object v1, v1, Lcom/horcrux/svg/TSpanView;->mContent:Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    .line 351
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_4
    if-ge v11, v1, :cond_d

    .line 371
    iget-object v13, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    add-int v14, v2, v11

    aget-object v13, v13, v14

    iget-boolean v13, v13, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->addressable:Z

    if-eqz v13, :cond_c

    .line 383
    iget-object v13, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    aget-object v13, v13, v14

    if-ge v12, v10, :cond_5

    const/4 v15, 0x1

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    :goto_5
    iput-boolean v15, v13, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->anchoredChunk:Z

    if-gez v12, :cond_6

    .line 391
    iget-object v13, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_x:[Ljava/lang/String;

    aget-object v15, v3, v12

    aput-object v15, v13, v14

    .line 402
    :cond_6
    iget-boolean v13, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->in_text_path:Z

    const-string v15, ""

    if-eqz v13, :cond_7

    iget-boolean v13, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->horizontal:Z

    if-nez v13, :cond_7

    .line 403
    iget-object v13, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_x:[Ljava/lang/String;

    aput-object v15, v13, v2

    :cond_7
    if-gez v12, :cond_8

    .line 412
    iget-object v13, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_y:[Ljava/lang/String;

    aget-object v16, v6, v12

    aput-object v16, v13, v14

    .line 422
    :cond_8
    iget-boolean v13, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->in_text_path:Z

    if-eqz v13, :cond_9

    iget-boolean v13, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->horizontal:Z

    if-eqz v13, :cond_9

    .line 423
    iget-object v13, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_y:[Ljava/lang/String;

    aput-object v15, v13, v2

    :cond_9
    if-gez v12, :cond_a

    .line 431
    iget-object v13, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_dx:[Ljava/lang/String;

    aget-object v15, v7, v12

    aput-object v15, v13, v14

    :cond_a
    if-gez v12, :cond_b

    .line 439
    iget-object v13, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->resolve_dy:[Ljava/lang/String;

    aget-object v15, v8, v12

    aput-object v15, v13, v14

    :cond_b
    if-gez v12, :cond_c

    .line 450
    iget-object v13, v0, Lcom/horcrux/svg/TextLayoutAlgorithm$1CharacterPositioningResolver;->result:[Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;

    aget-object v13, v13, v14

    aget-wide v14, v9, v12

    iput-wide v14, v13, Lcom/horcrux/svg/TextLayoutAlgorithm$CharacterInformation;->rotate:D

    :cond_c
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_d
    :goto_6
    return-void
.end method
