.class synthetic Lcom/android/camera/Resolution$1;
.super Ljava/lang/Object;
.source "Resolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Resolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$camera$CameraMode:[I

.field static final synthetic $SwitchMap$com$android$camera$DisplayDevice$ScreenRatio:[I

.field static final synthetic $SwitchMap$com$android$camera$Resolution$Category:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/camera/CameraMode;->values()[Lcom/android/camera/CameraMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/Resolution$1;->$SwitchMap$com$android$camera$CameraMode:[I

    :try_start_0
    sget-object v0, Lcom/android/camera/Resolution$1;->$SwitchMap$com$android$camera$CameraMode:[I

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v1}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/camera/Resolution$1;->$SwitchMap$com$android$camera$CameraMode:[I

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v1}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    invoke-static {}, Lcom/android/camera/DisplayDevice$ScreenRatio;->values()[Lcom/android/camera/DisplayDevice$ScreenRatio;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/Resolution$1;->$SwitchMap$com$android$camera$DisplayDevice$ScreenRatio:[I

    :try_start_2
    sget-object v0, Lcom/android/camera/Resolution$1;->$SwitchMap$com$android$camera$DisplayDevice$ScreenRatio:[I

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    invoke-virtual {v1}, Lcom/android/camera/DisplayDevice$ScreenRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/camera/Resolution$1;->$SwitchMap$com$android$camera$DisplayDevice$ScreenRatio:[I

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Tablet_Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    invoke-virtual {v1}, Lcom/android/camera/DisplayDevice$ScreenRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/camera/Resolution$1;->$SwitchMap$com$android$camera$DisplayDevice$ScreenRatio:[I

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Tablet_Ratio_16_10:Lcom/android/camera/DisplayDevice$ScreenRatio;

    invoke-virtual {v1}, Lcom/android/camera/DisplayDevice$ScreenRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/camera/Resolution$1;->$SwitchMap$com$android$camera$DisplayDevice$ScreenRatio:[I

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    invoke-virtual {v1}, Lcom/android/camera/DisplayDevice$ScreenRatio;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    invoke-static {}, Lcom/android/camera/Resolution$Category;->values()[Lcom/android/camera/Resolution$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/Resolution$1;->$SwitchMap$com$android$camera$Resolution$Category:[I

    :try_start_6
    sget-object v0, Lcom/android/camera/Resolution$1;->$SwitchMap$com$android$camera$Resolution$Category:[I

    sget-object v1, Lcom/android/camera/Resolution$Category;->Large:Lcom/android/camera/Resolution$Category;

    invoke-virtual {v1}, Lcom/android/camera/Resolution$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v0, Lcom/android/camera/Resolution$1;->$SwitchMap$com$android$camera$Resolution$Category:[I

    sget-object v1, Lcom/android/camera/Resolution$Category;->Medium:Lcom/android/camera/Resolution$Category;

    invoke-virtual {v1}, Lcom/android/camera/Resolution$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v0, Lcom/android/camera/Resolution$1;->$SwitchMap$com$android$camera$Resolution$Category:[I

    sget-object v1, Lcom/android/camera/Resolution$Category;->Small:Lcom/android/camera/Resolution$Category;

    invoke-virtual {v1}, Lcom/android/camera/Resolution$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_0
.end method
