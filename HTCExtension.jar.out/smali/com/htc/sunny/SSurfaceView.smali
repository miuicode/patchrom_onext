.class public Lcom/htc/sunny/SSurfaceView;
.super Landroid/view/SurfaceView;
.source "SSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny/SSurfaceView$RenderThread;,
        Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "3DGlideMode"


# instance fields
.field protected ENABLE_DEBUG:Z

.field private mBackgroundBmp:Lcom/htc/sunny/SBitmap;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBindSurfaceLock:Ljava/lang/Object;

.field private mCounter:J

.field private mCurrentTime:J

.field private mEnableManaulRelease:Z

.field protected mEnabledTranslucent:Z

.field private mFPSTextView:Lcom/htc/sunny/STextView;

.field private mFps:J

.field protected mGenerateBackgroundListener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mInited:Z

.field protected mIsResumeDrawing:Z

.field private volatile mIsSurfaceBinded:Z

.field private mLastMouseMoveTime:J

.field private mLastTime:J

.field private mRecycleBK:Z

.field protected mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

.field private mRootView:Lcom/htc/sunny/SView;

.field protected mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

.field private mSurfaceChanged:Z

.field private mUnbindSurfaceLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v6, -0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 136
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance v0, Lcom/htc/sunny/SSurfaceView$RenderThread;

    const-string v1, "3D Render Thread"

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny/SSurfaceView$RenderThread;-><init>(Lcom/htc/sunny/SSurfaceView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    .line 75
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    .line 80
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 85
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mGenerateBackgroundListener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

    .line 87
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mRecycleBK:Z

    .line 88
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    .line 95
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mInited:Z

    .line 98
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mSurfaceChanged:Z

    .line 99
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    .line 104
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    .line 106
    iput-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mLastMouseMoveTime:J

    .line 114
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->ENABLE_DEBUG:Z

    .line 115
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    .line 116
    iput-wide v6, p0, Lcom/htc/sunny/SSurfaceView;->mCurrentTime:J

    iput-wide v6, p0, Lcom/htc/sunny/SSurfaceView;->mLastTime:J

    .line 117
    iput-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    .line 118
    iput-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mFps:J

    .line 121
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mEnableManaulRelease:Z

    .line 126
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mEnabledTranslucent:Z

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mIsResumeDrawing:Z

    .line 137
    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] SSurfaceView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0, p2}, Lcom/htc/sunny/SSurfaceView;->init(Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v6, -0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v0, Lcom/htc/sunny/SSurfaceView$RenderThread;

    const-string v1, "3D Render Thread"

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny/SSurfaceView$RenderThread;-><init>(Lcom/htc/sunny/SSurfaceView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    .line 75
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    .line 80
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 85
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mGenerateBackgroundListener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

    .line 87
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mRecycleBK:Z

    .line 88
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    .line 95
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mInited:Z

    .line 98
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mSurfaceChanged:Z

    .line 99
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    .line 104
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    .line 106
    iput-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mLastMouseMoveTime:J

    .line 114
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->ENABLE_DEBUG:Z

    .line 115
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    .line 116
    iput-wide v6, p0, Lcom/htc/sunny/SSurfaceView;->mCurrentTime:J

    iput-wide v6, p0, Lcom/htc/sunny/SSurfaceView;->mLastTime:J

    .line 117
    iput-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    .line 118
    iput-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mFps:J

    .line 121
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mEnableManaulRelease:Z

    .line 126
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mEnabledTranslucent:Z

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mIsResumeDrawing:Z

    .line 131
    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] SSurfaceView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0, p2}, Lcom/htc/sunny/SSurfaceView;->init(Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method static synthetic access$002(Lcom/htc/sunny/SSurfaceView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/htc/sunny/SSurfaceView;->mRecycleBK:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/sunny/SSurfaceView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/sunny/SSurfaceView;->recycleBackground()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/sunny/SSurfaceView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/htc/sunny/SSurfaceView;->generateBackground()V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/sunny/SSurfaceView;Lcom/htc/sunny/SBitmap;)Lcom/htc/sunny/SBitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/sunny/SSurfaceView;)Lcom/htc/sunny/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/sunny/SSurfaceView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    return v0
.end method

.method private generateBackground()V
    .locals 4

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getWidth()I

    move-result v1

    .line 208
    .local v1, w:I
    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getHeight()I

    move-result v0

    .line 210
    .local v0, h:I
    invoke-direct {p0}, Lcom/htc/sunny/SSurfaceView;->recycleBackground()V

    .line 211
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mGenerateBackgroundListener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

    if-eqz v2, :cond_1

    .line 212
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mGenerateBackgroundListener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

    invoke-interface {v2}, Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;->onGenerateBackground()Lcom/htc/sunny/SBitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    .line 219
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBackgroundImage(Lcom/htc/sunny/SBitmap;)V

    .line 220
    return-void

    .line 213
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 214
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 215
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v1, v0}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    goto :goto_0
.end method

.method private recycleBackground()V
    .locals 2

    .prologue
    .line 198
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SSurfaceView;->mRecycleBK:Z

    if-ne v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    .line 204
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Lcom/htc/sunny/SView;)V
    .locals 1
    .parameter "childView"

    .prologue
    .line 615
    if-nez p1, :cond_0

    .line 622
    :goto_0
    return-void

    .line 617
    :cond_0
    new-instance v0, Lcom/htc/sunny/SSurfaceView$10;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SSurfaceView$10;-><init>(Lcom/htc/sunny/SSurfaceView;Lcom/htc/sunny/SView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected bindSurfaceR(Landroid/view/Surface;II)V
    .locals 3
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 445
    const-string v0, "3DGlideMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SSurfaceView] bindSurfaceR() + isValide:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_1

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 450
    monitor-exit v1

    .line 468
    :goto_0
    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny/SunnyEngine;->bindWindows(Landroid/view/Surface;II)Z

    .line 456
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->getRootNode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SView;->setViewNode(IZ)V

    .line 457
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    invoke-virtual {v0}, Lcom/htc/sunny/SView;->bindSurface()V

    .line 459
    invoke-direct {p0}, Lcom/htc/sunny/SSurfaceView;->generateBackground()V

    .line 461
    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->render3D()V

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    .line 464
    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_1
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 466
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 467
    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] bindSurfaceR() -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public destroySunnyR()V
    .locals 2

    .prologue
    .line 504
    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] destroySunnyR() +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 510
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    .line 509
    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] destroySunnyR() -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 712
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 713
    new-instance v0, Lcom/htc/sunny/SSurfaceView$15;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SSurfaceView$15;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 734
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 650
    new-instance v0, Lcom/htc/sunny/SSurfaceView$12;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SSurfaceView$12;-><init>(Lcom/htc/sunny/SSurfaceView;Landroid/view/KeyEvent;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 656
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 665
    iget-boolean v4, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    if-nez v4, :cond_1

    .line 689
    :cond_0
    :goto_0
    return v3

    .line 670
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 671
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 672
    .local v1, time:J
    iget-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mLastMouseMoveTime:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x1e

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 675
    iput-wide v1, p0, Lcom/htc/sunny/SSurfaceView;->mLastMouseMoveTime:J

    .line 680
    .end local v1           #time:J
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 681
    .local v0, myEvent:Landroid/view/MotionEvent;
    new-instance v3, Lcom/htc/sunny/SSurfaceView$13;

    invoke-direct {v3, p0, v0}, Lcom/htc/sunny/SSurfaceView$13;-><init>(Lcom/htc/sunny/SSurfaceView;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v3}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 689
    const/4 v3, 0x1

    goto :goto_0

    .line 676
    .end local v0           #myEvent:Landroid/view/MotionEvent;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/sunny/SSurfaceView;->mLastMouseMoveTime:J

    goto :goto_1
.end method

.method public enableManualRelease(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 607
    iput-boolean p1, p0, Lcom/htc/sunny/SSurfaceView;->mEnableManaulRelease:Z

    .line 608
    return-void
.end method

.method public getSunnyEngine()Lcom/htc/sunny/SunnyEngine;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    return-object v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 152
    iget-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mInited:Z

    if-nez v0, :cond_0

    .line 153
    const-string v0, "3DGlideMode"

    const-string v1, "init surface and start render thread..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 156
    iget-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mEnabledTranslucent:Z

    if-ne v2, v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v0, v3}, Lcom/htc/sunny/SSurfaceView$RenderThread;->setPriority(I)V

    .line 164
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny/SSurfaceView$RenderThread;->start()V

    .line 172
    :goto_1
    new-instance v0, Lcom/htc/sunny/SSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SSurfaceView$1;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 178
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mInited:Z

    .line 180
    :cond_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0

    .line 167
    :cond_2
    new-instance v0, Lcom/htc/sunny/SSurfaceView$RenderThread;

    const-string v1, "3D Render Thread"

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny/SSurfaceView$RenderThread;-><init>(Lcom/htc/sunny/SSurfaceView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    .line 168
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v0, v3}, Lcom/htc/sunny/SSurfaceView$RenderThread;->setPriority(I)V

    .line 169
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny/SSurfaceView$RenderThread;->start()V

    goto :goto_1
.end method

.method protected initW()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/htc/sunny/SunnyEngine;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mEnabledTranslucent:Z

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->init()Z

    .line 193
    new-instance v0, Lcom/htc/sunny/SView;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/htc/sunny/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    .line 194
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->getRootNode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SView;->setViewNode(IZ)V

    .line 195
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 518
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 519
    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->init(Landroid/util/AttributeSet;)V

    .line 521
    new-instance v0, Lcom/htc/sunny/SSurfaceView$6;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SSurfaceView$6;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 526
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 534
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 535
    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SSurfaceView;->mEnableManaulRelease:Z

    if-ne v0, v1, :cond_0

    .line 538
    new-instance v0, Lcom/htc/sunny/SSurfaceView$7;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SSurfaceView$7;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 551
    :goto_0
    return-void

    .line 544
    :cond_0
    new-instance v0, Lcom/htc/sunny/SSurfaceView$8;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SSurfaceView$8;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 549
    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->release()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 698
    new-instance v0, Lcom/htc/sunny/SSurfaceView$14;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/sunny/SSurfaceView$14;-><init>(Lcom/htc/sunny/SSurfaceView;ZIIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 703
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    .line 704
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mIsResumeDrawing:Z

    .line 377
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mIsResumeDrawing:Z

    .line 368
    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->requestRender()V

    .line 369
    return-void
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 563
    iget-boolean v1, p0, Lcom/htc/sunny/SSurfaceView;->mInited:Z

    if-nez v1, :cond_0

    .line 595
    :goto_0
    return-void

    .line 565
    :cond_0
    const-string v1, "3DGlideMode"

    const-string v2, "[SSurfaceView] release() +"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v1, Lcom/htc/sunny/SSurfaceView$9;

    invoke-direct {v1, p0}, Lcom/htc/sunny/SSurfaceView$9;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 578
    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    if-eqz v1, :cond_1

    .line 580
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunny/SSurfaceView$RenderThread;->stopWorker()V

    .line 581
    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SSurfaceView$RenderThread;->join(J)V

    .line 582
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :cond_1
    :goto_1
    iput-object v4, p0, Lcom/htc/sunny/SSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 591
    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 593
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny/SSurfaceView;->mInited:Z

    .line 594
    const-string v1, "3DGlideMode"

    const-string v2, "[SSurfaceView] release() -"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public removeView(Lcom/htc/sunny/SView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 629
    new-instance v0, Lcom/htc/sunny/SSurfaceView$11;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SSurfaceView$11;-><init>(Lcom/htc/sunny/SSurfaceView;Lcom/htc/sunny/SView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 634
    return-void
.end method

.method public render3D()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    .line 395
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v2, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mIsResumeDrawing:Z

    if-eqz v2, :cond_2

    .line 399
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v2}, Lcom/htc/sunny/SunnyEngine;->renderWindow()V

    .line 403
    :cond_2
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/htc/sunny/SSurfaceView;->ENABLE_DEBUG:Z

    if-ne v2, v3, :cond_0

    .line 404
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    if-nez v2, :cond_3

    .line 405
    new-instance v2, Lcom/htc/sunny/STextView;

    iget-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/htc/sunny/STextView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    iput-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    .line 406
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    const/16 v3, -0x100

    invoke-virtual {v2, v3}, Lcom/htc/sunny/STextView;->setTextColor(I)V

    .line 407
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/htc/sunny/STextView;->setTextSize(I)V

    .line 408
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    const/16 v3, 0x64

    const/16 v4, 0x32

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny/STextView;->setDisplaySize(II)V

    .line 409
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    invoke-virtual {p0, v2}, Lcom/htc/sunny/SSurfaceView;->addView(Lcom/htc/sunny/SView;)V

    .line 411
    :cond_3
    iget-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mLastTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 412
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mLastTime:J

    .line 413
    iput-wide v6, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    .line 416
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCurrentTime:J

    .line 417
    iget-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCurrentTime:J

    iget-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mLastTime:J

    sub-long v0, v2, v4

    .line 419
    .local v0, delay:J
    cmp-long v2, v0, v8

    if-lez v2, :cond_5

    .line 421
    iget-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCurrentTime:J

    iput-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mLastTime:J

    .line 422
    iput-wide v6, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    goto :goto_0

    .line 424
    :cond_5
    iget-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    .line 426
    iget-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    const-wide/16 v4, 0x14

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    cmp-long v2, v6, v0

    if-eqz v2, :cond_0

    .line 427
    iget-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    mul-long/2addr v2, v8

    div-long/2addr v2, v0

    long-to-int v2, v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mFps:J

    .line 428
    iput-wide v6, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    .line 429
    iget-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCurrentTime:J

    iput-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mLastTime:J

    .line 431
    const-string v2, "Test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mFps:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x64

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getHeight()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x32

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny/STextView;->setPosition(FFF)V

    .line 434
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FPS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mFps:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny/STextView;->setTextWithoutRender(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    if-nez v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny/SSurfaceView$RenderThread;->render()V

    goto :goto_0
.end method

.method public runOnRenderThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    if-ne v0, v1, :cond_1

    .line 345
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/SSurfaceView$RenderThread;->addOperator(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setBackground(Lcom/htc/sunny/SBitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 265
    new-instance v0, Lcom/htc/sunny/SSurfaceView$3;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SSurfaceView$3;-><init>(Lcom/htc/sunny/SSurfaceView;Lcom/htc/sunny/SBitmap;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 240
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 250
    new-instance v0, Lcom/htc/sunny/SSurfaceView$2;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SSurfaceView$2;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 257
    return-void
.end method

.method public setOnGenerateBackgroundListener(Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/htc/sunny/SSurfaceView;->mGenerateBackgroundListener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

    .line 233
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 280
    const-string v1, "3DGlideMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SSurfaceView] surfaceChanged() w:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny/SSurfaceView;->mSurfaceChanged:Z

    .line 282
    new-instance v1, Lcom/htc/sunny/SSurfaceView$4;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/htc/sunny/SSurfaceView$4;-><init>(Lcom/htc/sunny/SSurfaceView;Landroid/view/SurfaceHolder;II)V

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 291
    iget-boolean v1, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    if-nez v1, :cond_0

    .line 292
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 294
    :try_start_0
    const-string v1, "3DGlideMode"

    const-string v3, "[SSurfaceView] surfaceChanged() wait +"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 296
    const-string v1, "3DGlideMode"

    const-string v3, "[SSurfaceView] surfaceChanged() wait -"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 302
    :cond_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 300
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 309
    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] surfaceCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    .line 317
    const-string v1, "3DGlideMode"

    const-string v2, "[SSurfaceView] surfaceDestroyed()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v1, Lcom/htc/sunny/SSurfaceView$5;

    invoke-direct {v1, p0}, Lcom/htc/sunny/SSurfaceView$5;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 324
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    if-ne v1, v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 327
    :try_start_0
    const-string v1, "3DGlideMode"

    const-string v3, "[SSurfaceView] surfaceDestroyed() wait +"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 329
    const-string v1, "3DGlideMode"

    const-string v3, "[SSurfaceView] surfaceDestroyed() wait -"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 335
    :cond_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 333
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected unBindSurfaceR()V
    .locals 2

    .prologue
    .line 475
    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] unBindSurfaceR() +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 477
    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 479
    monitor-exit v1

    .line 497
    :goto_0
    return-void

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    invoke-virtual {v0}, Lcom/htc/sunny/SView;->unBindSurface()V

    .line 487
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->logStatus()V

    .line 488
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->unbindWindow()V

    .line 490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    .line 492
    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 493
    :try_start_1
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 494
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 496
    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] unBindSurfaceR() -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 494
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
