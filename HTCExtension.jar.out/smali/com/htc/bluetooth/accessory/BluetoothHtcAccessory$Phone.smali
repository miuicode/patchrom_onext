.class public Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$Phone;
.super Ljava/lang/Object;
.source "BluetoothHtcAccessory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Phone"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$Phone$Notification;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;


# direct methods
.method public constructor <init>(Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory$Phone;->this$0:Lcom/htc/bluetooth/accessory/BluetoothHtcAccessory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 501
    return-void
.end method
