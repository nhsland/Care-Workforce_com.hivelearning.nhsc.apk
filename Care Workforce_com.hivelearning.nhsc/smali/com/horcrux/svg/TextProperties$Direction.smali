.class final enum Lcom/horcrux/svg/TextProperties$Direction;
.super Ljava/lang/Enum;
.source "TextProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/horcrux/svg/TextProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/horcrux/svg/TextProperties$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/horcrux/svg/TextProperties$Direction;

.field public static final enum ltr:Lcom/horcrux/svg/TextProperties$Direction;

.field public static final enum rtl:Lcom/horcrux/svg/TextProperties$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 82
    new-instance v0, Lcom/horcrux/svg/TextProperties$Direction;

    const/4 v1, 0x0

    const-string v2, "ltr"

    invoke-direct {v0, v2, v1}, Lcom/horcrux/svg/TextProperties$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$Direction;->ltr:Lcom/horcrux/svg/TextProperties$Direction;

    .line 83
    new-instance v0, Lcom/horcrux/svg/TextProperties$Direction;

    const/4 v2, 0x1

    const-string v3, "rtl"

    invoke-direct {v0, v3, v2}, Lcom/horcrux/svg/TextProperties$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$Direction;->rtl:Lcom/horcrux/svg/TextProperties$Direction;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/horcrux/svg/TextProperties$Direction;

    .line 80
    sget-object v4, Lcom/horcrux/svg/TextProperties$Direction;->ltr:Lcom/horcrux/svg/TextProperties$Direction;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/horcrux/svg/TextProperties$Direction;->$VALUES:[Lcom/horcrux/svg/TextProperties$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$Direction;
    .locals 1

    .line 80
    const-class v0, Lcom/horcrux/svg/TextProperties$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/horcrux/svg/TextProperties$Direction;

    return-object p0
.end method

.method public static values()[Lcom/horcrux/svg/TextProperties$Direction;
    .locals 1

    .line 80
    sget-object v0, Lcom/horcrux/svg/TextProperties$Direction;->$VALUES:[Lcom/horcrux/svg/TextProperties$Direction;

    invoke-virtual {v0}, [Lcom/horcrux/svg/TextProperties$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/horcrux/svg/TextProperties$Direction;

    return-object v0
.end method
