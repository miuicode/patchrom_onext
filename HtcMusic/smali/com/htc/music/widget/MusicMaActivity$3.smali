.class Lcom/htc/music/widget/MusicMaActivity$3;
.super Ljava/lang/Object;
.source "MusicMaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/widget/MusicMaActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/widget/MusicMaActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/widget/MusicMaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/htc/music/widget/MusicMaActivity$3;->this$0:Lcom/htc/music/widget/MusicMaActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 730
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 731
    return-void
.end method
