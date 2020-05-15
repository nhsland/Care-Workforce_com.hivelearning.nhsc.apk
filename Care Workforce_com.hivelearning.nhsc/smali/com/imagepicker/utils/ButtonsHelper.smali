.class public Lcom/imagepicker/utils/ButtonsHelper;
.super Ljava/lang/Object;
.source "ButtonsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imagepicker/utils/ButtonsHelper$Item;
    }
.end annotation


# instance fields
.field public final btnCamera:Lcom/imagepicker/utils/ButtonsHelper$Item;

.field public final btnCancel:Lcom/imagepicker/utils/ButtonsHelper$Item;

.field public final btnLibrary:Lcom/imagepicker/utils/ButtonsHelper$Item;

.field public final customButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/imagepicker/utils/ButtonsHelper$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/imagepicker/utils/ButtonsHelper$Item;Lcom/imagepicker/utils/ButtonsHelper$Item;Lcom/imagepicker/utils/ButtonsHelper$Item;Ljava/util/LinkedList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/imagepicker/utils/ButtonsHelper$Item;",
            "Lcom/imagepicker/utils/ButtonsHelper$Item;",
            "Lcom/imagepicker/utils/ButtonsHelper$Item;",
            "Ljava/util/LinkedList<",
            "Lcom/imagepicker/utils/ButtonsHelper$Item;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/imagepicker/utils/ButtonsHelper;->btnCamera:Lcom/imagepicker/utils/ButtonsHelper$Item;

    .line 43
    iput-object p2, p0, Lcom/imagepicker/utils/ButtonsHelper;->btnLibrary:Lcom/imagepicker/utils/ButtonsHelper$Item;

    .line 44
    iput-object p3, p0, Lcom/imagepicker/utils/ButtonsHelper;->btnCancel:Lcom/imagepicker/utils/ButtonsHelper$Item;

    .line 45
    iput-object p4, p0, Lcom/imagepicker/utils/ButtonsHelper;->customButtons:Ljava/util/List;

    return-void
.end method

.method private static getCustomButtons(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/LinkedList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcom/imagepicker/utils/ButtonsHelper$Item;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v1, "customButtons"

    .line 119
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 124
    :cond_0
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 125
    :goto_0
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 127
    invoke-interface {p0, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    const-string v3, "title"

    .line 128
    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    .line 129
    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    new-instance v4, Lcom/imagepicker/utils/ButtonsHelper$Item;

    invoke-direct {v4, v3, v2}, Lcom/imagepicker/utils/ButtonsHelper$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getItemFromOption(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)Lcom/imagepicker/utils/ButtonsHelper$Item;
    .locals 1

    .line 106
    invoke-static {p0, p1}, Lcom/imagepicker/utils/ReadableMapUtils;->hasAndNotEmptyString(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 111
    :cond_0
    invoke-interface {p0, p1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 113
    new-instance p1, Lcom/imagepicker/utils/ButtonsHelper$Item;

    invoke-direct {p1, p0, p2}, Lcom/imagepicker/utils/ButtonsHelper$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static newInstance(Lcom/facebook/react/bridge/ReadableMap;)Lcom/imagepicker/utils/ButtonsHelper;
    .locals 4

    const-string v0, "takePhotoButtonTitle"

    const-string v1, "photo"

    .line 94
    invoke-static {p0, v0, v1}, Lcom/imagepicker/utils/ButtonsHelper;->getItemFromOption(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)Lcom/imagepicker/utils/ButtonsHelper$Item;

    move-result-object v0

    const-string v1, "chooseFromLibraryButtonTitle"

    const-string v2, "library"

    .line 95
    invoke-static {p0, v1, v2}, Lcom/imagepicker/utils/ButtonsHelper;->getItemFromOption(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)Lcom/imagepicker/utils/ButtonsHelper$Item;

    move-result-object v1

    const-string v2, "cancelButtonTitle"

    const-string v3, "cancel"

    .line 96
    invoke-static {p0, v2, v3}, Lcom/imagepicker/utils/ButtonsHelper;->getItemFromOption(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;Ljava/lang/String;)Lcom/imagepicker/utils/ButtonsHelper$Item;

    move-result-object v2

    .line 97
    invoke-static {p0}, Lcom/imagepicker/utils/ButtonsHelper;->getCustomButtons(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/LinkedList;

    move-result-object p0

    .line 99
    new-instance v3, Lcom/imagepicker/utils/ButtonsHelper;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/imagepicker/utils/ButtonsHelper;-><init>(Lcom/imagepicker/utils/ButtonsHelper$Item;Lcom/imagepicker/utils/ButtonsHelper$Item;Lcom/imagepicker/utils/ButtonsHelper$Item;Ljava/util/LinkedList;)V

    return-object v3
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/imagepicker/utils/ButtonsHelper;->btnCamera:Lcom/imagepicker/utils/ButtonsHelper$Item;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, v1, Lcom/imagepicker/utils/ButtonsHelper$Item;->action:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/imagepicker/utils/ButtonsHelper;->btnLibrary:Lcom/imagepicker/utils/ButtonsHelper$Item;

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, v1, Lcom/imagepicker/utils/ButtonsHelper$Item;->action:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x0

    .line 84
    :goto_0
    iget-object v2, p0, Lcom/imagepicker/utils/ButtonsHelper;->customButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 86
    iget-object v2, p0, Lcom/imagepicker/utils/ButtonsHelper;->customButtons:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/imagepicker/utils/ButtonsHelper$Item;

    iget-object v2, v2, Lcom/imagepicker/utils/ButtonsHelper$Item;->action:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getTitles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/imagepicker/utils/ButtonsHelper;->btnCamera:Lcom/imagepicker/utils/ButtonsHelper$Item;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, v1, Lcom/imagepicker/utils/ButtonsHelper$Item;->title:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/imagepicker/utils/ButtonsHelper;->btnLibrary:Lcom/imagepicker/utils/ButtonsHelper$Item;

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, v1, Lcom/imagepicker/utils/ButtonsHelper$Item;->title:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x0

    .line 62
    :goto_0
    iget-object v2, p0, Lcom/imagepicker/utils/ButtonsHelper;->customButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 64
    iget-object v2, p0, Lcom/imagepicker/utils/ButtonsHelper;->customButtons:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/imagepicker/utils/ButtonsHelper$Item;

    iget-object v2, v2, Lcom/imagepicker/utils/ButtonsHelper$Item;->title:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
