.class final enum Lcom/horcrux/svg/ElementType;
.super Ljava/lang/Enum;
.source "RNSVGMarkerPosition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/horcrux/svg/ElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/horcrux/svg/ElementType;

.field public static final enum kCGPathElementAddCurveToPoint:Lcom/horcrux/svg/ElementType;

.field public static final enum kCGPathElementAddLineToPoint:Lcom/horcrux/svg/ElementType;

.field public static final enum kCGPathElementAddQuadCurveToPoint:Lcom/horcrux/svg/ElementType;

.field public static final enum kCGPathElementCloseSubpath:Lcom/horcrux/svg/ElementType;

.field public static final enum kCGPathElementMoveToPoint:Lcom/horcrux/svg/ElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 12
    new-instance v0, Lcom/horcrux/svg/ElementType;

    const/4 v1, 0x0

    const-string v2, "kCGPathElementAddCurveToPoint"

    invoke-direct {v0, v2, v1}, Lcom/horcrux/svg/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/ElementType;->kCGPathElementAddCurveToPoint:Lcom/horcrux/svg/ElementType;

    .line 13
    new-instance v0, Lcom/horcrux/svg/ElementType;

    const/4 v2, 0x1

    const-string v3, "kCGPathElementAddQuadCurveToPoint"

    invoke-direct {v0, v3, v2}, Lcom/horcrux/svg/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/ElementType;->kCGPathElementAddQuadCurveToPoint:Lcom/horcrux/svg/ElementType;

    .line 14
    new-instance v0, Lcom/horcrux/svg/ElementType;

    const/4 v3, 0x2

    const-string v4, "kCGPathElementMoveToPoint"

    invoke-direct {v0, v4, v3}, Lcom/horcrux/svg/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/ElementType;->kCGPathElementMoveToPoint:Lcom/horcrux/svg/ElementType;

    .line 15
    new-instance v0, Lcom/horcrux/svg/ElementType;

    const/4 v4, 0x3

    const-string v5, "kCGPathElementAddLineToPoint"

    invoke-direct {v0, v5, v4}, Lcom/horcrux/svg/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/ElementType;->kCGPathElementAddLineToPoint:Lcom/horcrux/svg/ElementType;

    .line 16
    new-instance v0, Lcom/horcrux/svg/ElementType;

    const/4 v5, 0x4

    const-string v6, "kCGPathElementCloseSubpath"

    invoke-direct {v0, v6, v5}, Lcom/horcrux/svg/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/ElementType;->kCGPathElementCloseSubpath:Lcom/horcrux/svg/ElementType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/horcrux/svg/ElementType;

    .line 11
    sget-object v7, Lcom/horcrux/svg/ElementType;->kCGPathElementAddCurveToPoint:Lcom/horcrux/svg/ElementType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/horcrux/svg/ElementType;->kCGPathElementAddQuadCurveToPoint:Lcom/horcrux/svg/ElementType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/horcrux/svg/ElementType;->kCGPathElementMoveToPoint:Lcom/horcrux/svg/ElementType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/horcrux/svg/ElementType;->kCGPathElementAddLineToPoint:Lcom/horcrux/svg/ElementType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/horcrux/svg/ElementType;->$VALUES:[Lcom/horcrux/svg/ElementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/horcrux/svg/ElementType;
    .locals 1

    .line 11
    const-class v0, Lcom/horcrux/svg/ElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/horcrux/svg/ElementType;

    return-object p0
.end method

.method public static values()[Lcom/horcrux/svg/ElementType;
    .locals 1

    .line 11
    sget-object v0, Lcom/horcrux/svg/ElementType;->$VALUES:[Lcom/horcrux/svg/ElementType;

    invoke-virtual {v0}, [Lcom/horcrux/svg/ElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/horcrux/svg/ElementType;

    return-object v0
.end method
