.class public Lorg/wonday/pdf/RCTPdfManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "RCTPdfManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager<",
        "Lorg/wonday/pdf/PdfView;",
        ">;"
    }
.end annotation


# static fields
.field private static final REACT_CLASS:Ljava/lang/String; = "RCTPdf"


# instance fields
.field private context:Landroid/content/Context;

.field private pdfView:Lorg/wonday/pdf/PdfView;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/wonday/pdf/RCTPdfManager;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lorg/wonday/pdf/RCTPdfManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lorg/wonday/pdf/PdfView;

    move-result-object p1

    return-object p1
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lorg/wonday/pdf/PdfView;
    .locals 2

    .line 53
    new-instance v0, Lorg/wonday/pdf/PdfView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/wonday/pdf/PdfView;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/wonday/pdf/RCTPdfManager;->pdfView:Lorg/wonday/pdf/PdfView;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RCTPdf"

    return-object v0
.end method

.method public bridge synthetic onAfterUpdateTransaction(Landroid/view/View;)V
    .locals 0

    .line 36
    check-cast p1, Lorg/wonday/pdf/PdfView;

    invoke-virtual {p0, p1}, Lorg/wonday/pdf/RCTPdfManager;->onAfterUpdateTransaction(Lorg/wonday/pdf/PdfView;)V

    return-void
.end method

.method public onAfterUpdateTransaction(Lorg/wonday/pdf/PdfView;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/SimpleViewManager;->onAfterUpdateTransaction(Landroid/view/View;)V

    .line 126
    invoke-virtual {p1}, Lorg/wonday/pdf/PdfView;->drawPdf()V

    return-void
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0

    .line 36
    check-cast p1, Lorg/wonday/pdf/PdfView;

    invoke-virtual {p0, p1}, Lorg/wonday/pdf/RCTPdfManager;->onDropViewInstance(Lorg/wonday/pdf/PdfView;)V

    return-void
.end method

.method public onDropViewInstance(Lorg/wonday/pdf/PdfView;)V
    .locals 0

    return-void
.end method

.method public setEnableAnnotationRendering(Lorg/wonday/pdf/PdfView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "enableAnnotationRendering"
    .end annotation

    .line 110
    invoke-virtual {p1, p2}, Lorg/wonday/pdf/PdfView;->setEnableAnnotationRendering(Z)V

    return-void
.end method

.method public setEnableAntialiasing(Lorg/wonday/pdf/PdfView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "enableAntialiasing"
    .end annotation

    .line 105
    invoke-virtual {p1, p2}, Lorg/wonday/pdf/PdfView;->setEnableAntialiasing(Z)V

    return-void
.end method

.method public setEnablePaging(Lorg/wonday/pdf/PdfView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "enablePaging"
    .end annotation

    .line 115
    invoke-virtual {p1, p2}, Lorg/wonday/pdf/PdfView;->setEnablePaging(Z)V

    return-void
.end method

.method public setFitPolycy(Lorg/wonday/pdf/PdfView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "fitPolicy"
    .end annotation

    .line 120
    invoke-virtual {p1, p2}, Lorg/wonday/pdf/PdfView;->setFitPolicy(I)V

    return-void
.end method

.method public setHorizontal(Lorg/wonday/pdf/PdfView;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "horizontal"
    .end annotation

    .line 90
    invoke-virtual {p1, p2}, Lorg/wonday/pdf/PdfView;->setHorizontal(Z)V

    return-void
.end method

.method public setMaxScale(Lorg/wonday/pdf/PdfView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "maxScale"
    .end annotation

    .line 85
    invoke-virtual {p1, p2}, Lorg/wonday/pdf/PdfView;->setMaxScale(F)V

    return-void
.end method

.method public setMinScale(Lorg/wonday/pdf/PdfView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "minScale"
    .end annotation

    .line 80
    invoke-virtual {p1, p2}, Lorg/wonday/pdf/PdfView;->setMinScale(F)V

    return-void
.end method

.method public setPage(Lorg/wonday/pdf/PdfView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "page"
    .end annotation

    .line 70
    invoke-virtual {p1, p2}, Lorg/wonday/pdf/PdfView;->setPage(I)V

    return-void
.end method

.method public setPassword(Lorg/wonday/pdf/PdfView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "password"
    .end annotation

    .line 100
    invoke-virtual {p1, p2}, Lorg/wonday/pdf/PdfView;->setPassword(Ljava/lang/String;)V

    return-void
.end method

.method public setPath(Lorg/wonday/pdf/PdfView;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "path"
    .end annotation

    .line 64
    invoke-virtual {p1, p2}, Lorg/wonday/pdf/PdfView;->setPath(Ljava/lang/String;)V

    return-void
.end method

.method public setScale(Lorg/wonday/pdf/PdfView;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "scale"
    .end annotation

    .line 75
    invoke-virtual {p1, p2}, Lorg/wonday/pdf/PdfView;->setScale(F)V

    return-void
.end method

.method public setSpacing(Lorg/wonday/pdf/PdfView;I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "spacing"
    .end annotation

    .line 95
    invoke-virtual {p1, p2}, Lorg/wonday/pdf/PdfView;->setSpacing(I)V

    return-void
.end method
