.class public Lcom/imagepicker/utils/ButtonsHelper$Item;
.super Ljava/lang/Object;
.source "ButtonsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imagepicker/utils/ButtonsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public final action:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/imagepicker/utils/ButtonsHelper$Item;->title:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/imagepicker/utils/ButtonsHelper$Item;->action:Ljava/lang/String;

    return-void
.end method
