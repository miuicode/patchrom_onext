.class Lcom/htc/util/contacts/TMOClient$1;
.super Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;
.source "TMOClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/TMOClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/util/contacts/TMOClient;


# direct methods
.method constructor <init>(Lcom/htc/util/contacts/TMOClient;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/htc/util/contacts/TMOClient$1;->this$0:Lcom/htc/util/contacts/TMOClient;

    invoke-direct {p0}, Lcom/htc/clientprofileservice/IClientProfileCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public capabilitiesSubmitted(Z)V
    .locals 0
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 209
    return-void
.end method

.method public myGroupsRetrieved(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/clientprofileservice/Group;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 272
    .local p1, myGroups:Ljava/util/List;,"Ljava/util/List<Lcom/htc/clientprofileservice/Group;>;"
    const-string v0, "TMOClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "myGroupsRetrieved..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/htc/util/contacts/TMOClient$1;->this$0:Lcom/htc/util/contacts/TMOClient;

    invoke-virtual {v0}, Lcom/htc/util/contacts/TMOClient;->getGroupRetrivedStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    const-string v0, "TMOClient"

    const-string v1, "Group data has been set before, do nothing..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->access$400()Lcom/htc/util/contacts/TMOClient;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/htc/util/contacts/TMOClient$1;->this$0:Lcom/htc/util/contacts/TMOClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/util/contacts/TMOClient;->setGroupRetrivedStatus(Z)V

    .line 280
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/util/contacts/TMOClient$1$3;

    invoke-direct {v1, p0, p1}, Lcom/htc/util/contacts/TMOClient$1$3;-><init>(Lcom/htc/util/contacts/TMOClient$1;Ljava/util/List;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public myPhonebookRetrieved(Lcom/htc/clientprofileservice/MyPhonebook;)V
    .locals 3
    .parameter "mpb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {p1}, Lcom/htc/util/contacts/TMOClient;->access$202(Lcom/htc/clientprofileservice/MyPhonebook;)Lcom/htc/clientprofileservice/MyPhonebook;

    .line 215
    const-string v0, "TMOClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "myPhonebookRetrieved..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method public profileModified(Z)V
    .locals 0
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 212
    return-void
.end method

.method public profileRetrieved(Lcom/htc/clientprofileservice/Profile;)V
    .locals 4
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {p1}, Lcom/htc/util/contacts/TMOClient;->access$302(Lcom/htc/clientprofileservice/Profile;)Lcom/htc/clientprofileservice/Profile;

    .line 220
    invoke-virtual {p1}, Lcom/htc/clientprofileservice/Profile;->getMyPhonebook()Lcom/htc/clientprofileservice/MyPhonebook;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/contacts/TMOClient;->access$202(Lcom/htc/clientprofileservice/MyPhonebook;)Lcom/htc/clientprofileservice/MyPhonebook;

    .line 221
    const-string v1, "TMOClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "profileRetrieved..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v1, p0, Lcom/htc/util/contacts/TMOClient$1;->this$0:Lcom/htc/util/contacts/TMOClient;

    invoke-virtual {v1}, Lcom/htc/util/contacts/TMOClient;->getGroupRetrivedStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    const-string v1, "TMOClient"

    const-string v2, "Group data has been set before, do nothing..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-virtual {p1}, Lcom/htc/clientprofileservice/Profile;->getMyGroups()Ljava/util/List;

    move-result-object v0

    .line 228
    .local v0, myGroups:Ljava/util/List;,"Ljava/util/List<Lcom/htc/clientprofileservice/Group;>;"
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->access$400()Lcom/htc/util/contacts/TMOClient;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/htc/util/contacts/TMOClient$1;->this$0:Lcom/htc/util/contacts/TMOClient;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/util/contacts/TMOClient;->setGroupRetrivedStatus(Z)V

    .line 230
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/util/contacts/TMOClient$1$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/util/contacts/TMOClient$1$1;-><init>(Lcom/htc/util/contacts/TMOClient$1;Ljava/util/List;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public serverNotified(IZ)V
    .locals 2
    .parameter "opcode"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 297
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/htc/util/contacts/TMOClient$1;->this$0:Lcom/htc/util/contacts/TMOClient;

    #getter for: Lcom/htc/util/contacts/TMOClient;->mService:Lcom/htc/clientprofileservice/IClientProfileService;
    invoke-static {v0}, Lcom/htc/util/contacts/TMOClient;->access$000(Lcom/htc/util/contacts/TMOClient;)Lcom/htc/clientprofileservice/IClientProfileService;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/htc/clientprofileservice/IClientProfileService;->retrieveMyGroups(Z)V

    .line 300
    :cond_0
    if-nez p1, :cond_1

    .line 301
    iget-object v0, p0, Lcom/htc/util/contacts/TMOClient$1;->this$0:Lcom/htc/util/contacts/TMOClient;

    #getter for: Lcom/htc/util/contacts/TMOClient;->mService:Lcom/htc/clientprofileservice/IClientProfileService;
    invoke-static {v0}, Lcom/htc/util/contacts/TMOClient;->access$000(Lcom/htc/util/contacts/TMOClient;)Lcom/htc/clientprofileservice/IClientProfileService;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/htc/clientprofileservice/IClientProfileService;->retrieveProfile(Z)V

    .line 303
    :cond_1
    return-void
.end method

.method public sncdataRetrieved(Lcom/htc/clientprofileservice/Sncdata;)V
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 248
    const-string v0, "TMOClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sncdataRetrieved..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/htc/util/contacts/TMOClient$1;->this$0:Lcom/htc/util/contacts/TMOClient;

    invoke-virtual {v0}, Lcom/htc/util/contacts/TMOClient;->getSNCRetrivedStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    const-string v0, "TMOClient"

    const-string v1, "SNC data has been set before, do nothing..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/htc/clientprofileservice/Sncdata;->getSnc()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/htc/util/contacts/TMOClient$1;->this$0:Lcom/htc/util/contacts/TMOClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/util/contacts/TMOClient;->setSNCRetrivedStatus(Z)V

    .line 256
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/util/contacts/TMOClient$1$2;

    invoke-direct {v1, p0, p1}, Lcom/htc/util/contacts/TMOClient$1$2;-><init>(Lcom/htc/util/contacts/TMOClient$1;Lcom/htc/clientprofileservice/Sncdata;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
