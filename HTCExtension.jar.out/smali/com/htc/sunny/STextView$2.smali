.class Lcom/htc/sunny/STextView$2;
.super Ljava/lang/Object;
.source "STextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/STextView;->setTextAlignType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/STextView;

.field final synthetic val$align:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/STextView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    iput p2, p0, Lcom/htc/sunny/STextView$2;->val$align:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    const/16 v3, 0xa

    const/16 v1, 0x9

    const/4 v2, 0x0

    .line 236
    iget v0, p0, Lcom/htc/sunny/STextView$2;->val$align:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 238
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 239
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 250
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/sunny/STextView$2;->val$align:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 251
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 252
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 253
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 263
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/sunny/STextView;->mGenerateText:Z
    invoke-static {v0, v1}, Lcom/htc/sunny/STextView;->access$102(Lcom/htc/sunny/STextView;Z)Z

    .line 264
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    invoke-virtual {v0}, Lcom/htc/sunny/STextView;->invalidate3DView()V

    .line 265
    return-void

    .line 240
    :cond_2
    iget v0, p0, Lcom/htc/sunny/STextView$2;->val$align:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 242
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 243
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 244
    :cond_3
    iget v0, p0, Lcom/htc/sunny/STextView$2;->val$align:I

    and-int/lit16 v0, v0, 0x1004

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 246
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 247
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 254
    :cond_4
    iget v0, p0, Lcom/htc/sunny/STextView$2;->val$align:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 255
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 256
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 257
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 258
    :cond_5
    iget v0, p0, Lcom/htc/sunny/STextView$2;->val$align:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 260
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 261
    iget-object v0, p0, Lcom/htc/sunny/STextView$2;->this$0:Lcom/htc/sunny/STextView;

    #getter for: Lcom/htc/sunny/STextView;->mLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/htc/sunny/STextView;->access$200(Lcom/htc/sunny/STextView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_1
.end method