.class public Lio/invertase/firebase/database/RNFirebaseDatabaseUtils;
.super Ljava/lang/Object;
.source "RNFirebaseDatabaseUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RNFirebaseDatabaseUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildArray(Lcom/google/firebase/database/DataSnapshot;)Lcom/facebook/react/bridge/WritableArray;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Any:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/database/DataSnapshot;",
            ")",
            "Lcom/facebook/react/bridge/WritableArray;"
        }
    .end annotation

    .line 193
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Lcom/google/firebase/database/DataSnapshot;->getChildren()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/DataSnapshot;

    .line 195
    invoke-virtual {v3}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v1

    if-lez v8, :cond_1

    :goto_1
    cmp-long v8, v1, v4

    if-gez v8, :cond_0

    .line 198
    invoke-interface {v0}, Lcom/facebook/react/bridge/WritableArray;->pushNull()V

    add-long/2addr v1, v6

    goto :goto_1

    :cond_0
    move-wide v1, v4

    .line 202
    :cond_1
    invoke-static {v3}, Lio/invertase/firebase/database/RNFirebaseDatabaseUtils;->castValue(Lcom/google/firebase/database/DataSnapshot;)Ljava/lang/Object;

    move-result-object v3

    .line 204
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 205
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    .line 203
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v8, "java.lang.String"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_1
    const-string v8, "java.lang.Double"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x2

    goto :goto_2

    :sswitch_2
    const-string v8, "java.lang.Long"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_3
    const-string v8, "java.lang.Boolean"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_4
    const-string v8, "com.facebook.react.bridge.WritableNativeArray"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x5

    goto :goto_2

    :sswitch_5
    const-string v8, "com.facebook.react.bridge.WritableNativeMap"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x4

    :cond_2
    :goto_2
    if-eqz v5, :cond_8

    if-eq v5, v13, :cond_7

    if-eq v5, v12, :cond_6

    if-eq v5, v11, :cond_5

    if-eq v5, v10, :cond_4

    if-eq v5, v9, :cond_3

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 230
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RNFirebaseDatabaseUtils"

    .line 226
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 223
    :cond_3
    check-cast v3, Lcom/facebook/react/bridge/WritableArray;

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushArray(Lcom/facebook/react/bridge/WritableArray;)V

    goto :goto_3

    .line 220
    :cond_4
    check-cast v3, Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_3

    .line 217
    :cond_5
    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_3

    .line 214
    :cond_6
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    goto :goto_3

    .line 210
    :cond_7
    check-cast v3, Ljava/lang/Long;

    .line 211
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-interface {v0, v3, v4}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    goto :goto_3

    .line 207
    :cond_8
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushBoolean(Z)V

    :goto_3
    add-long/2addr v1, v6

    goto/16 :goto_0

    :cond_9
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x62d662f6 -> :sswitch_5
        -0x76ac979 -> :sswitch_4
        0x148d6054 -> :sswitch_3
        0x17c521d0 -> :sswitch_2
        0x2d605225 -> :sswitch_1
        0x473e3665 -> :sswitch_0
    .end sparse-switch
.end method

.method private static buildArray(Lcom/google/firebase/database/MutableData;)Lcom/facebook/react/bridge/WritableArray;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Any:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/database/MutableData;",
            ")",
            "Lcom/facebook/react/bridge/WritableArray;"
        }
    .end annotation

    .line 246
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 247
    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->getChildren()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/MutableData;

    .line 248
    invoke-virtual {v3}, Lcom/google/firebase/database/MutableData;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v1

    if-lez v8, :cond_1

    :goto_1
    cmp-long v8, v1, v4

    if-gez v8, :cond_0

    .line 251
    invoke-interface {v0}, Lcom/facebook/react/bridge/WritableArray;->pushNull()V

    add-long/2addr v1, v6

    goto :goto_1

    :cond_0
    move-wide v1, v4

    .line 255
    :cond_1
    invoke-static {v3}, Lio/invertase/firebase/database/RNFirebaseDatabaseUtils;->castValue(Lcom/google/firebase/database/MutableData;)Ljava/lang/Object;

    move-result-object v3

    .line 257
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 258
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    .line 256
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v8, "java.lang.String"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_1
    const-string v8, "java.lang.Double"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x2

    goto :goto_2

    :sswitch_2
    const-string v8, "java.lang.Long"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_3
    const-string v8, "java.lang.Boolean"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_4
    const-string v8, "com.facebook.react.bridge.WritableNativeArray"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x5

    goto :goto_2

    :sswitch_5
    const-string v8, "com.facebook.react.bridge.WritableNativeMap"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x4

    :cond_2
    :goto_2
    if-eqz v5, :cond_8

    if-eq v5, v13, :cond_7

    if-eq v5, v12, :cond_6

    if-eq v5, v11, :cond_5

    if-eq v5, v10, :cond_4

    if-eq v5, v9, :cond_3

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 283
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RNFirebaseDatabaseUtils"

    .line 279
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 276
    :cond_3
    check-cast v3, Lcom/facebook/react/bridge/WritableArray;

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushArray(Lcom/facebook/react/bridge/WritableArray;)V

    goto :goto_3

    .line 273
    :cond_4
    check-cast v3, Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_3

    .line 270
    :cond_5
    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_3

    .line 267
    :cond_6
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {v0, v3, v4}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    goto :goto_3

    .line 263
    :cond_7
    check-cast v3, Ljava/lang/Long;

    .line 264
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-interface {v0, v3, v4}, Lcom/facebook/react/bridge/WritableArray;->pushDouble(D)V

    goto :goto_3

    .line 260
    :cond_8
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/WritableArray;->pushBoolean(Z)V

    :goto_3
    add-long/2addr v1, v6

    goto/16 :goto_0

    :cond_9
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x62d662f6 -> :sswitch_5
        -0x76ac979 -> :sswitch_4
        0x148d6054 -> :sswitch_3
        0x17c521d0 -> :sswitch_2
        0x2d605225 -> :sswitch_1
        0x473e3665 -> :sswitch_0
    .end sparse-switch
.end method

.method private static buildMap(Lcom/google/firebase/database/DataSnapshot;)Lcom/facebook/react/bridge/WritableMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Any:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/database/DataSnapshot;",
            ")",
            "Lcom/facebook/react/bridge/WritableMap;"
        }
    .end annotation

    .line 298
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Lcom/google/firebase/database/DataSnapshot;->getChildren()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/DataSnapshot;

    .line 300
    invoke-static {v1}, Lio/invertase/firebase/database/RNFirebaseDatabaseUtils;->castValue(Lcom/google/firebase/database/DataSnapshot;)Ljava/lang/Object;

    move-result-object v2

    .line 303
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 304
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    .line 302
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "java.lang.String"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_1
    const-string v5, "java.lang.Double"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_2
    const-string v5, "java.lang.Long"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    const-string v5, "java.lang.Boolean"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_4
    const-string v5, "com.facebook.react.bridge.WritableNativeArray"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_5
    const-string v5, "com.facebook.react.bridge.WritableNativeMap"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x4

    :cond_0
    :goto_1
    if-eqz v4, :cond_6

    if-eq v4, v10, :cond_5

    if-eq v4, v9, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_1

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 328
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RNFirebaseDatabaseUtils"

    .line 324
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 321
    :cond_1
    invoke-virtual {v1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lcom/facebook/react/bridge/WritableArray;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    goto/16 :goto_0

    .line 318
    :cond_2
    invoke-virtual {v1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto/16 :goto_0

    .line 315
    :cond_3
    invoke-virtual {v1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 312
    :cond_4
    invoke-virtual {v1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 309
    :cond_5
    invoke-virtual {v1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 306
    :cond_6
    invoke-virtual {v1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_7
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62d662f6 -> :sswitch_5
        -0x76ac979 -> :sswitch_4
        0x148d6054 -> :sswitch_3
        0x17c521d0 -> :sswitch_2
        0x2d605225 -> :sswitch_1
        0x473e3665 -> :sswitch_0
    .end sparse-switch
.end method

.method private static buildMap(Lcom/google/firebase/database/MutableData;)Lcom/facebook/react/bridge/WritableMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Any:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/database/MutableData;",
            ")",
            "Lcom/facebook/react/bridge/WritableMap;"
        }
    .end annotation

    .line 342
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 343
    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->getChildren()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/MutableData;

    .line 344
    invoke-static {v1}, Lio/invertase/firebase/database/RNFirebaseDatabaseUtils;->castValue(Lcom/google/firebase/database/MutableData;)Ljava/lang/Object;

    move-result-object v2

    .line 347
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 348
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    .line 346
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "java.lang.String"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_1
    const-string v5, "java.lang.Double"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_2
    const-string v5, "java.lang.Long"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    const-string v5, "java.lang.Boolean"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_4
    const-string v5, "com.facebook.react.bridge.WritableNativeArray"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_5
    const-string v5, "com.facebook.react.bridge.WritableNativeMap"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x4

    :cond_0
    :goto_1
    if-eqz v4, :cond_6

    if-eq v4, v10, :cond_5

    if-eq v4, v9, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_1

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 372
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RNFirebaseDatabaseUtils"

    .line 368
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 365
    :cond_1
    invoke-virtual {v1}, Lcom/google/firebase/database/MutableData;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lcom/facebook/react/bridge/WritableArray;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    goto/16 :goto_0

    .line 362
    :cond_2
    invoke-virtual {v1}, Lcom/google/firebase/database/MutableData;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto/16 :goto_0

    .line 359
    :cond_3
    invoke-virtual {v1}, Lcom/google/firebase/database/MutableData;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 356
    :cond_4
    invoke-virtual {v1}, Lcom/google/firebase/database/MutableData;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 353
    :cond_5
    invoke-virtual {v1}, Lcom/google/firebase/database/MutableData;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 350
    :cond_6
    invoke-virtual {v1}, Lcom/google/firebase/database/MutableData;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_7
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62d662f6 -> :sswitch_5
        -0x76ac979 -> :sswitch_4
        0x148d6054 -> :sswitch_3
        0x17c521d0 -> :sswitch_2
        0x2d605225 -> :sswitch_1
        0x473e3665 -> :sswitch_0
    .end sparse-switch
.end method

.method public static castValue(Lcom/google/firebase/database/DataSnapshot;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Any:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/database/DataSnapshot;",
            ")TAny;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/google/firebase/database/DataSnapshot;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    invoke-static {p0}, Lio/invertase/firebase/database/RNFirebaseDatabaseUtils;->isArray(Lcom/google/firebase/database/DataSnapshot;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {p0}, Lio/invertase/firebase/database/RNFirebaseDatabaseUtils;->buildArray(Lcom/google/firebase/database/DataSnapshot;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p0

    return-object p0

    .line 74
    :cond_0
    invoke-static {p0}, Lio/invertase/firebase/database/RNFirebaseDatabaseUtils;->buildMap(Lcom/google/firebase/database/DataSnapshot;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 79
    invoke-virtual {p0}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "java.lang.String"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "java.lang.Double"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "java.lang.Long"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "java.lang.Boolean"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_3

    .line 89
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RNFirebaseDatabaseUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 87
    :cond_3
    invoke-virtual {p0}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x148d6054 -> :sswitch_3
        0x17c521d0 -> :sswitch_2
        0x2d605225 -> :sswitch_1
        0x473e3665 -> :sswitch_0
    .end sparse-switch
.end method

.method public static castValue(Lcom/google/firebase/database/MutableData;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Any:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/database/MutableData;",
            ")TAny;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-static {p0}, Lio/invertase/firebase/database/RNFirebaseDatabaseUtils;->isArray(Lcom/google/firebase/database/MutableData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p0}, Lio/invertase/firebase/database/RNFirebaseDatabaseUtils;->buildArray(Lcom/google/firebase/database/MutableData;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object p0

    return-object p0

    .line 107
    :cond_0
    invoke-static {p0}, Lio/invertase/firebase/database/RNFirebaseDatabaseUtils;->buildMap(Lcom/google/firebase/database/MutableData;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 112
    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "java.lang.String"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "java.lang.Double"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "java.lang.Long"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "java.lang.Boolean"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_3

    .line 122
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RNFirebaseDatabaseUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 120
    :cond_3
    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x148d6054 -> :sswitch_3
        0x17c521d0 -> :sswitch_2
        0x2d605225 -> :sswitch_1
        0x473e3665 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getChildKeys(Lcom/google/firebase/database/DataSnapshot;)Lcom/facebook/react/bridge/WritableArray;
    .locals 2

    .line 385
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 387
    invoke-virtual {p0}, Lcom/google/firebase/database/DataSnapshot;->hasChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/google/firebase/database/DataSnapshot;->getChildren()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/DataSnapshot;

    .line 389
    invoke-virtual {v1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static isArray(Lcom/google/firebase/database/DataSnapshot;)Z
    .locals 8

    .line 142
    invoke-virtual {p0}, Lcom/google/firebase/database/DataSnapshot;->getChildrenCount()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 143
    invoke-virtual {p0}, Lcom/google/firebase/database/DataSnapshot;->getChildren()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v2, -0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/DataSnapshot;

    const/4 v5, 0x0

    .line 145
    :try_start_0
    invoke-virtual {v4}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v4, v6, v2

    if-lez v4, :cond_0

    cmp-long v2, v6, v0

    if-gtz v2, :cond_0

    move-wide v2, v6

    goto :goto_0

    :catch_0
    :cond_0
    return v5

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static isArray(Lcom/google/firebase/database/MutableData;)Z
    .locals 10

    .line 170
    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->getChildrenCount()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 171
    invoke-virtual {p0}, Lcom/google/firebase/database/MutableData;->getChildren()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v4, -0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/database/MutableData;

    const/4 v7, 0x0

    .line 173
    :try_start_0
    invoke-virtual {v6}, Lcom/google/firebase/database/MutableData;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v6, v8, v4

    if-lez v6, :cond_0

    cmp-long v6, v8, v0

    if-gtz v6, :cond_0

    add-long/2addr v4, v2

    goto :goto_0

    :catch_0
    :cond_0
    return v7

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static snapshotToMap(Lcom/google/firebase/database/DataSnapshot;)Lcom/facebook/react/bridge/WritableMap;
    .locals 4

    .line 41
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/firebase/database/DataSnapshot;->exists()Z

    move-result v1

    const-string v2, "exists"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    invoke-virtual {p0}, Lcom/google/firebase/database/DataSnapshot;->hasChildren()Z

    move-result v1

    const-string v2, "hasChildren"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    invoke-virtual {p0}, Lcom/google/firebase/database/DataSnapshot;->getChildrenCount()J

    move-result-wide v1

    long-to-double v1, v1

    const-string v3, "childrenCount"

    invoke-interface {v0, v3, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 47
    invoke-static {p0}, Lio/invertase/firebase/database/RNFirebaseDatabaseUtils;->getChildKeys(Lcom/google/firebase/database/DataSnapshot;)Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    const-string v2, "childKeys"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    .line 48
    invoke-virtual {p0}, Lcom/google/firebase/database/DataSnapshot;->getPriority()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "priority"

    invoke-static {v2, v1, v0}, Lio/invertase/firebase/Utils;->mapPutValue(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/react/bridge/WritableMap;)V

    .line 50
    invoke-virtual {p0}, Lcom/google/firebase/database/DataSnapshot;->hasChildren()Z

    move-result v1

    const-string v2, "value"

    if-nez v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0, v0}, Lio/invertase/firebase/Utils;->mapPutValue(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {p0}, Lio/invertase/firebase/database/RNFirebaseDatabaseUtils;->castValue(Lcom/google/firebase/database/DataSnapshot;)Ljava/lang/Object;

    move-result-object p0

    .line 54
    instance-of v1, p0, Lcom/facebook/react/bridge/WritableNativeArray;

    if-eqz v1, :cond_1

    .line 55
    check-cast p0, Lcom/facebook/react/bridge/WritableArray;

    invoke-interface {v0, v2, p0}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/WritableArray;)V

    goto :goto_0

    .line 57
    :cond_1
    check-cast p0, Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, v2, p0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :goto_0
    return-object v0
.end method

.method public static snapshotToMap(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 28
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 29
    invoke-static {p0}, Lio/invertase/firebase/database/RNFirebaseDatabaseUtils;->snapshotToMap(Lcom/google/firebase/database/DataSnapshot;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    const-string v1, "snapshot"

    .line 31
    invoke-interface {v0, v1, p0}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    const-string p0, "previousChildName"

    .line 32
    invoke-interface {v0, p0, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
