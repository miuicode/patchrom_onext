.class Landroid/webkit/WebViewCore$AutoFillData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AutoFillData"
.end annotation


# instance fields
.field private mPreview:Ljava/lang/String;

.field private mQueryId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 954
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 955
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebViewCore$AutoFillData;->mQueryId:I

    .line 956
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/WebViewCore$AutoFillData;->mPreview:Ljava/lang/String;

    .line 957
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "queryId"
    .parameter "preview"

    .prologue
    .line 959
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 960
    iput p1, p0, Landroid/webkit/WebViewCore$AutoFillData;->mQueryId:I

    .line 961
    iput-object p2, p0, Landroid/webkit/WebViewCore$AutoFillData;->mPreview:Ljava/lang/String;

    .line 962
    return-void
.end method


# virtual methods
.method public getPreviewString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Landroid/webkit/WebViewCore$AutoFillData;->mPreview:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryId()I
    .locals 1

    .prologue
    .line 965
    iget v0, p0, Landroid/webkit/WebViewCore$AutoFillData;->mQueryId:I

    return v0
.end method
