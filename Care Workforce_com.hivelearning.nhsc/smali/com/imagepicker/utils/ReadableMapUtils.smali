.class public Lcom/imagepicker/utils/ReadableMapUtils;
.super Ljava/lang/Object;
.source "ReadableMapUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasAndNotEmpty(Ljava/lang/Class;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Z
    .locals 2

    .line 18
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 23
    :cond_0
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 28
    :cond_1
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 30
    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_2
    return v0
.end method

.method public static hasAndNotEmptyString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Z
    .locals 1

    .line 49
    const-class v0, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/imagepicker/utils/ReadableMapUtils;->hasAndNotEmpty(Ljava/lang/Class;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasAndNotNullReadableMap(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Z
    .locals 1

    .line 41
    const-class v0, Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {v0, p0, p1}, Lcom/imagepicker/utils/ReadableMapUtils;->hasAndNotEmpty(Ljava/lang/Class;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
