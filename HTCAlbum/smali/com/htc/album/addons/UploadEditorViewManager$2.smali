.class Lcom/htc/album/addons/UploadEditorViewManager$2;
.super Ljava/lang/Object;
.source "UploadEditorViewManager.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/UploadEditorViewManager;->initialize(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/UploadEditorViewManager;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/UploadEditorViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorViewManager$2;->this$0:Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "onFocus"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager$2;->this$0:Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/addons/UploadEditorViewManager;->onEditTextFocusChange(Landroid/view/View;Z)V

    .line 171
    if-nez p2, :cond_0

    .line 173
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager$2;->this$0:Lcom/htc/album/addons/UploadEditorViewManager;

    #calls: Lcom/htc/album/addons/UploadEditorViewManager;->setDescriptionHint()V
    invoke-static {v0}, Lcom/htc/album/addons/UploadEditorViewManager;->access$000(Lcom/htc/album/addons/UploadEditorViewManager;)V

    .line 175
    :cond_0
    return-void
.end method
