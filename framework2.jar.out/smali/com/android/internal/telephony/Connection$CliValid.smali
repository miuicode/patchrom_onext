.class public final enum Lcom/android/internal/telephony/Connection$CliValid;
.super Ljava/lang/Enum;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CliValid"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/Connection$CliValid;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/Connection$CliValid;

.field public static final enum CLI_NOT_AVAILABLE:Lcom/android/internal/telephony/Connection$CliValid;

.field public static final enum CLI_VALID:Lcom/android/internal/telephony/Connection$CliValid;

.field public static final enum CLI_WITHHELD:Lcom/android/internal/telephony/Connection$CliValid;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-instance v0, Lcom/android/internal/telephony/Connection$CliValid;

    const-string v1, "CLI_VALID"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Connection$CliValid;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Connection$CliValid;->CLI_VALID:Lcom/android/internal/telephony/Connection$CliValid;

    .line 85
    new-instance v0, Lcom/android/internal/telephony/Connection$CliValid;

    const-string v1, "CLI_WITHHELD"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/Connection$CliValid;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Connection$CliValid;->CLI_WITHHELD:Lcom/android/internal/telephony/Connection$CliValid;

    .line 86
    new-instance v0, Lcom/android/internal/telephony/Connection$CliValid;

    const-string v1, "CLI_NOT_AVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/Connection$CliValid;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Connection$CliValid;->CLI_NOT_AVAILABLE:Lcom/android/internal/telephony/Connection$CliValid;

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/Connection$CliValid;

    sget-object v1, Lcom/android/internal/telephony/Connection$CliValid;->CLI_VALID:Lcom/android/internal/telephony/Connection$CliValid;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/Connection$CliValid;->CLI_WITHHELD:Lcom/android/internal/telephony/Connection$CliValid;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/Connection$CliValid;->CLI_NOT_AVAILABLE:Lcom/android/internal/telephony/Connection$CliValid;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/Connection$CliValid;->$VALUES:[Lcom/android/internal/telephony/Connection$CliValid;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Connection$CliValid;
    .locals 1
    .parameter "name"

    .prologue
    .line 83
    const-class v0, Lcom/android/internal/telephony/Connection$CliValid;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$CliValid;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/Connection$CliValid;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/internal/telephony/Connection$CliValid;->$VALUES:[Lcom/android/internal/telephony/Connection$CliValid;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/Connection$CliValid;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/Connection$CliValid;

    return-object v0
.end method
