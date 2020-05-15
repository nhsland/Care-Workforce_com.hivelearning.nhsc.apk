.class Lcom/horcrux/svg/PathView;
.super Lcom/horcrux/svg/RenderableView;
.source "PathView.java"


# instance fields
.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/horcrux/svg/RenderableView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 26
    iget p1, p0, Lcom/horcrux/svg/PathView;->mScale:F

    sput p1, Lcom/horcrux/svg/PathParser;->mScale:F

    .line 27
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/horcrux/svg/PathView;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/horcrux/svg/PathView;->mPath:Landroid/graphics/Path;

    return-object p1
.end method

.method public setD(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "d"
    .end annotation

    .line 32
    invoke-static {p1}, Lcom/horcrux/svg/PathParser;->parse(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/PathView;->mPath:Landroid/graphics/Path;

    .line 33
    sget-object p1, Lcom/horcrux/svg/PathParser;->elements:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/horcrux/svg/PathView;->elements:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p0}, Lcom/horcrux/svg/PathView;->invalidate()V

    return-void
.end method
