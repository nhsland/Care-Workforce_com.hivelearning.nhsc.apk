.class final enum Lcom/horcrux/svg/TextProperties$FontStyle;
.super Ljava/lang/Enum;
.source "TextProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/horcrux/svg/TextProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FontStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/horcrux/svg/TextProperties$FontStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/horcrux/svg/TextProperties$FontStyle;

.field public static final enum italic:Lcom/horcrux/svg/TextProperties$FontStyle;

.field public static final enum normal:Lcom/horcrux/svg/TextProperties$FontStyle;

.field public static final enum oblique:Lcom/horcrux/svg/TextProperties$FontStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 92
    new-instance v0, Lcom/horcrux/svg/TextProperties$FontStyle;

    const/4 v1, 0x0

    const-string v2, "normal"

    invoke-direct {v0, v2, v1}, Lcom/horcrux/svg/TextProperties$FontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$FontStyle;->normal:Lcom/horcrux/svg/TextProperties$FontStyle;

    .line 93
    new-instance v0, Lcom/horcrux/svg/TextProperties$FontStyle;

    const/4 v2, 0x1

    const-string v3, "italic"

    invoke-direct {v0, v3, v2}, Lcom/horcrux/svg/TextProperties$FontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$FontStyle;->italic:Lcom/horcrux/svg/TextProperties$FontStyle;

    .line 94
    new-instance v0, Lcom/horcrux/svg/TextProperties$FontStyle;

    const/4 v3, 0x2

    const-string v4, "oblique"

    invoke-direct {v0, v4, v3}, Lcom/horcrux/svg/TextProperties$FontStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/horcrux/svg/TextProperties$FontStyle;->oblique:Lcom/horcrux/svg/TextProperties$FontStyle;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/horcrux/svg/TextProperties$FontStyle;

    .line 91
    sget-object v5, Lcom/horcrux/svg/TextProperties$FontStyle;->normal:Lcom/horcrux/svg/TextProperties$FontStyle;

    aput-object v5, v4, v1

    sget-object v1, Lcom/horcrux/svg/TextProperties$FontStyle;->italic:Lcom/horcrux/svg/TextProperties$FontStyle;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/horcrux/svg/TextProperties$FontStyle;->$VALUES:[Lcom/horcrux/svg/TextProperties$FontStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/horcrux/svg/TextProperties$FontStyle;
    .locals 1

    .line 91
    const-class v0, Lcom/horcrux/svg/TextProperties$FontStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/horcrux/svg/TextProperties$FontStyle;

    return-object p0
.end method

.method public static values()[Lcom/horcrux/svg/TextProperties$FontStyle;
    .locals 1

    .line 91
    sget-object v0, Lcom/horcrux/svg/TextProperties$FontStyle;->$VALUES:[Lcom/horcrux/svg/TextProperties$FontStyle;

    invoke-virtual {v0}, [Lcom/horcrux/svg/TextProperties$FontStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/horcrux/svg/TextProperties$FontStyle;

    return-object v0
.end method
