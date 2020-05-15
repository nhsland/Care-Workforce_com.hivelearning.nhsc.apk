.class public final enum Lcom/oblador/keychain/SecurityLevel;
.super Ljava/lang/Enum;
.source "SecurityLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oblador/keychain/SecurityLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oblador/keychain/SecurityLevel;

.field public static final enum ANY:Lcom/oblador/keychain/SecurityLevel;

.field public static final enum SECURE_HARDWARE:Lcom/oblador/keychain/SecurityLevel;

.field public static final enum SECURE_SOFTWARE:Lcom/oblador/keychain/SecurityLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/oblador/keychain/SecurityLevel;

    const/4 v1, 0x0

    const-string v2, "ANY"

    invoke-direct {v0, v2, v1}, Lcom/oblador/keychain/SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oblador/keychain/SecurityLevel;->ANY:Lcom/oblador/keychain/SecurityLevel;

    .line 5
    new-instance v0, Lcom/oblador/keychain/SecurityLevel;

    const/4 v2, 0x1

    const-string v3, "SECURE_SOFTWARE"

    invoke-direct {v0, v3, v2}, Lcom/oblador/keychain/SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oblador/keychain/SecurityLevel;->SECURE_SOFTWARE:Lcom/oblador/keychain/SecurityLevel;

    .line 6
    new-instance v0, Lcom/oblador/keychain/SecurityLevel;

    const/4 v3, 0x2

    const-string v4, "SECURE_HARDWARE"

    invoke-direct {v0, v4, v3}, Lcom/oblador/keychain/SecurityLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oblador/keychain/SecurityLevel;->SECURE_HARDWARE:Lcom/oblador/keychain/SecurityLevel;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/oblador/keychain/SecurityLevel;

    .line 3
    sget-object v5, Lcom/oblador/keychain/SecurityLevel;->ANY:Lcom/oblador/keychain/SecurityLevel;

    aput-object v5, v4, v1

    sget-object v1, Lcom/oblador/keychain/SecurityLevel;->SECURE_SOFTWARE:Lcom/oblador/keychain/SecurityLevel;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/oblador/keychain/SecurityLevel;->$VALUES:[Lcom/oblador/keychain/SecurityLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oblador/keychain/SecurityLevel;
    .locals 1

    .line 3
    const-class v0, Lcom/oblador/keychain/SecurityLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oblador/keychain/SecurityLevel;

    return-object p0
.end method

.method public static values()[Lcom/oblador/keychain/SecurityLevel;
    .locals 1

    .line 3
    sget-object v0, Lcom/oblador/keychain/SecurityLevel;->$VALUES:[Lcom/oblador/keychain/SecurityLevel;

    invoke-virtual {v0}, [Lcom/oblador/keychain/SecurityLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oblador/keychain/SecurityLevel;

    return-object v0
.end method


# virtual methods
.method public jsName()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/oblador/keychain/SecurityLevel;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SECURITY_LEVEL_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public satisfiesSafetyThreshold(Lcom/oblador/keychain/SecurityLevel;)Z
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/oblador/keychain/SecurityLevel;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
