.class synthetic Lcom/bugsnag/android/Client$8;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bugsnag/android/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$bugsnag$android$DeliveryStyle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1026
    invoke-static {}, Lcom/bugsnag/android/DeliveryStyle;->values()[Lcom/bugsnag/android/DeliveryStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/bugsnag/android/Client$8;->$SwitchMap$com$bugsnag$android$DeliveryStyle:[I

    :try_start_0
    sget-object v1, Lcom/bugsnag/android/DeliveryStyle;->SAME_THREAD:Lcom/bugsnag/android/DeliveryStyle;

    invoke-virtual {v1}, Lcom/bugsnag/android/DeliveryStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/bugsnag/android/Client$8;->$SwitchMap$com$bugsnag$android$DeliveryStyle:[I

    sget-object v1, Lcom/bugsnag/android/DeliveryStyle;->NO_CACHE:Lcom/bugsnag/android/DeliveryStyle;

    invoke-virtual {v1}, Lcom/bugsnag/android/DeliveryStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/bugsnag/android/Client$8;->$SwitchMap$com$bugsnag$android$DeliveryStyle:[I

    sget-object v1, Lcom/bugsnag/android/DeliveryStyle;->ASYNC:Lcom/bugsnag/android/DeliveryStyle;

    invoke-virtual {v1}, Lcom/bugsnag/android/DeliveryStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/bugsnag/android/Client$8;->$SwitchMap$com$bugsnag$android$DeliveryStyle:[I

    sget-object v1, Lcom/bugsnag/android/DeliveryStyle;->ASYNC_WITH_CACHE:Lcom/bugsnag/android/DeliveryStyle;

    invoke-virtual {v1}, Lcom/bugsnag/android/DeliveryStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
