.class Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6$1;
.super Ljava/lang/Object;
.source "ArtistBrowserActivityExpGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;->onCollapseChildViewEndIRT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;)V
    .locals 0
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6$1;->this$1:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 694
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6$1;->this$1:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;

    iget-object v2, v2, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$2300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6$1;->this$1:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;

    iget-object v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I
    invoke-static {v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$2200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getFirstChildId(I)Ljava/lang/String;

    move-result-object v1

    .line 695
    .local v1, id:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6$1;->this$1:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;

    iget-object v2, v2, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$2400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getExpGridViewParams()Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v0

    .line 696
    .local v0, expParams:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;
    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;->reset()V

    .line 698
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6$1;->this$1:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;

    iget-object v2, v2, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$2500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->updateChildViewParameters(Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    .line 700
    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6$1;->this$1:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;

    iget-object v2, v2, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->startAlbumDetailViewActivity(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$2600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Ljava/lang/String;)V

    .line 701
    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6$1;->this$1:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;

    iget-object v2, v2, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;
    invoke-static {v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$2700(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/sunnyCore/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    .line 702
    return-void
.end method
