.class final Lnet/openid/appauth/JsonUtil$StringListField;
.super Lnet/openid/appauth/JsonUtil$ListField;
.source "JsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/openid/appauth/JsonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringListField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/openid/appauth/JsonUtil$ListField<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 492
    invoke-direct {p0, p1, v0}, Lnet/openid/appauth/JsonUtil$ListField;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 496
    invoke-direct {p0, p1, p2}, Lnet/openid/appauth/JsonUtil$ListField;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method bridge synthetic convert(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 489
    invoke-virtual {p0, p1}, Lnet/openid/appauth/JsonUtil$StringListField;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
