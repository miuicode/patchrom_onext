.class Lcom/htc/music/carmode/CarLibraryActivity$CarDockListener;
.super Landroid/content/BroadcastReceiver;
.source "CarLibraryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarLibraryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarDockListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarLibraryActivity;


# direct methods
.method private constructor <init>(Lcom/htc/music/carmode/CarLibraryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/htc/music/carmode/CarLibraryActivity$CarDockListener;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/carmode/CarLibraryActivity;Lcom/htc/music/carmode/CarLibraryActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarLibraryActivity$CarDockListener;-><init>(Lcom/htc/music/carmode/CarLibraryActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/music/carmode/CarLibraryActivity$CarDockListener;->this$0:Lcom/htc/music/carmode/CarLibraryActivity;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarLibraryActivity;->finish()V

    .line 220
    return-void
.end method
