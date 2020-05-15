.class public final enum Lcom/yqritc/scalablevideoview/PivotPoint;
.super Ljava/lang/Enum;
.source "PivotPoint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yqritc/scalablevideoview/PivotPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yqritc/scalablevideoview/PivotPoint;

.field public static final enum CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

.field public static final enum CENTER_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

.field public static final enum CENTER_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

.field public static final enum LEFT_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

.field public static final enum LEFT_CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

.field public static final enum LEFT_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

.field public static final enum RIGHT_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

.field public static final enum RIGHT_CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

.field public static final enum RIGHT_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 7
    new-instance v0, Lcom/yqritc/scalablevideoview/PivotPoint;

    const/4 v1, 0x0

    const-string v2, "LEFT_TOP"

    invoke-direct {v0, v2, v1}, Lcom/yqritc/scalablevideoview/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    .line 8
    new-instance v0, Lcom/yqritc/scalablevideoview/PivotPoint;

    const/4 v2, 0x1

    const-string v3, "LEFT_CENTER"

    invoke-direct {v0, v3, v2}, Lcom/yqritc/scalablevideoview/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

    .line 9
    new-instance v0, Lcom/yqritc/scalablevideoview/PivotPoint;

    const/4 v3, 0x2

    const-string v4, "LEFT_BOTTOM"

    invoke-direct {v0, v4, v3}, Lcom/yqritc/scalablevideoview/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

    .line 10
    new-instance v0, Lcom/yqritc/scalablevideoview/PivotPoint;

    const/4 v4, 0x3

    const-string v5, "CENTER_TOP"

    invoke-direct {v0, v5, v4}, Lcom/yqritc/scalablevideoview/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->CENTER_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    .line 11
    new-instance v0, Lcom/yqritc/scalablevideoview/PivotPoint;

    const/4 v5, 0x4

    const-string v6, "CENTER"

    invoke-direct {v0, v6, v5}, Lcom/yqritc/scalablevideoview/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

    .line 12
    new-instance v0, Lcom/yqritc/scalablevideoview/PivotPoint;

    const/4 v6, 0x5

    const-string v7, "CENTER_BOTTOM"

    invoke-direct {v0, v7, v6}, Lcom/yqritc/scalablevideoview/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->CENTER_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

    .line 13
    new-instance v0, Lcom/yqritc/scalablevideoview/PivotPoint;

    const/4 v7, 0x6

    const-string v8, "RIGHT_TOP"

    invoke-direct {v0, v8, v7}, Lcom/yqritc/scalablevideoview/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->RIGHT_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    .line 14
    new-instance v0, Lcom/yqritc/scalablevideoview/PivotPoint;

    const/4 v8, 0x7

    const-string v9, "RIGHT_CENTER"

    invoke-direct {v0, v9, v8}, Lcom/yqritc/scalablevideoview/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->RIGHT_CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

    .line 15
    new-instance v0, Lcom/yqritc/scalablevideoview/PivotPoint;

    const/16 v9, 0x8

    const-string v10, "RIGHT_BOTTOM"

    invoke-direct {v0, v10, v9}, Lcom/yqritc/scalablevideoview/PivotPoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->RIGHT_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/yqritc/scalablevideoview/PivotPoint;

    .line 6
    sget-object v11, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    aput-object v11, v10, v1

    sget-object v1, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

    aput-object v1, v10, v2

    sget-object v1, Lcom/yqritc/scalablevideoview/PivotPoint;->LEFT_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

    aput-object v1, v10, v3

    sget-object v1, Lcom/yqritc/scalablevideoview/PivotPoint;->CENTER_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    aput-object v1, v10, v4

    sget-object v1, Lcom/yqritc/scalablevideoview/PivotPoint;->CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

    aput-object v1, v10, v5

    sget-object v1, Lcom/yqritc/scalablevideoview/PivotPoint;->CENTER_BOTTOM:Lcom/yqritc/scalablevideoview/PivotPoint;

    aput-object v1, v10, v6

    sget-object v1, Lcom/yqritc/scalablevideoview/PivotPoint;->RIGHT_TOP:Lcom/yqritc/scalablevideoview/PivotPoint;

    aput-object v1, v10, v7

    sget-object v1, Lcom/yqritc/scalablevideoview/PivotPoint;->RIGHT_CENTER:Lcom/yqritc/scalablevideoview/PivotPoint;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/yqritc/scalablevideoview/PivotPoint;->$VALUES:[Lcom/yqritc/scalablevideoview/PivotPoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yqritc/scalablevideoview/PivotPoint;
    .locals 1

    .line 6
    const-class v0, Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yqritc/scalablevideoview/PivotPoint;

    return-object p0
.end method

.method public static values()[Lcom/yqritc/scalablevideoview/PivotPoint;
    .locals 1

    .line 6
    sget-object v0, Lcom/yqritc/scalablevideoview/PivotPoint;->$VALUES:[Lcom/yqritc/scalablevideoview/PivotPoint;

    invoke-virtual {v0}, [Lcom/yqritc/scalablevideoview/PivotPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yqritc/scalablevideoview/PivotPoint;

    return-object v0
.end method
