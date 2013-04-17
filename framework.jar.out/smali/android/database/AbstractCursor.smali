.class public abstract Landroid/database/AbstractCursor;
.super Ljava/lang/Object;
.source "AbstractCursor.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/AbstractCursor$SelfContentObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field protected mClosed:Z

.field private final mContentObservable:Landroid/database/ContentObservable;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCurrentRowID:Ljava/lang/Long;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private mExtras:Landroid/os/Bundle;

.field private mNotifyUri:Landroid/net/Uri;

.field protected mPos:I

.field protected mRowIdColumnIndex:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mSelfObserver:Landroid/database/ContentObserver;

.field private final mSelfObserverLock:Ljava/lang/Object;

.field private mSelfObserverRegistered:Z

.field protected mUpdatedRows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 183
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 72
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    .line 74
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/database/AbstractCursor;->mExtras:Landroid/os/Bundle;

    .line 184
    iput v1, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 185
    iput v1, p0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    .line 188
    return-void
.end method


# virtual methods
.method protected checkPosition()V
    .locals 3

    .prologue
    .line 423
    const/4 v0, -0x1

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    if-ne v0, v1, :cond_1

    .line 424
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0

    .line 426
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    .line 146
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V

    .line 147
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->onDeactivateOrClose()V

    .line 148
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 5
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    const/4 v4, 0x0

    .line 167
    invoke-virtual {p0, p1}, Landroid/database/AbstractCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, result:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 169
    iget-object v0, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 170
    .local v0, data:[C
    if-eqz v0, :cond_0

    array-length v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 171
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 175
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 179
    .end local v0           #data:[C
    :goto_1
    return-void

    .line 173
    .restart local v0       #data:[C
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0

    .line 177
    .end local v0           #data:[C
    :cond_2
    iput v4, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    goto :goto_1
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->onDeactivateOrClose()V

    .line 120
    return-void
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 0
    .parameter "position"
    .parameter "window"

    .prologue
    .line 228
    invoke-static {p0, p1, p2}, Landroid/database/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V

    .line 229
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 431
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 434
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :cond_1
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getBlob(I)[B
    .locals 2
    .parameter "column"

    .prologue
    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getBlob is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 9
    .parameter "columnName"

    .prologue
    const/4 v5, -0x1

    .line 276
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 277
    .local v4, periodIndex:I
    if-eq v4, v5, :cond_0

    .line 278
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 279
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "Cursor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requesting column name with table name -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 283
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, columnNames:[Ljava/lang/String;
    if-nez v0, :cond_2

    .line 286
    const-string v6, "Cursor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "the column names are null, cursor info:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 302
    :cond_1
    :goto_0
    return v2

    .line 290
    :cond_2
    array-length v3, v0

    .line 291
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 292
    aget-object v6, v0, v2

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v5

    .line 302
    goto :goto_0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 4
    .parameter "columnName"

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Landroid/database/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 307
    .local v0, index:I
    if-gez v0, :cond_0

    .line 308
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "column \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    :cond_0
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public abstract getColumnNames()[Ljava/lang/String;
.end method

.method public abstract getCount()I
.end method

.method public abstract getDouble(I)D
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Landroid/database/AbstractCursor;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong(I)J
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    return v0
.end method

.method public abstract getShort(I)S
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method public getType(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 94
    const/4 v0, 0x3

    return v0
.end method

.method protected getUpdatedField(I)Ljava/lang/Object;
    .locals 1
    .parameter "columnIndex"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 411
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isAfterLast()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 268
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isBeforeFirst()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 261
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    return v0
.end method

.method protected isFieldUpdated(I)Z
    .locals 1
    .parameter "columnIndex"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public final isFirst()Z
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLast()Z
    .locals 3

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    .line 257
    .local v0, cnt:I
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract isNull(I)Z
.end method

.method public final move(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 232
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToFirst()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToNext()Z
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToPosition(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 196
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    .line 197
    .local v0, count:I
    if-lt p1, v0, :cond_1

    .line 198
    iput v0, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 223
    :cond_0
    :goto_0
    return v1

    .line 203
    :cond_1
    if-gez p1, :cond_2

    .line 204
    iput v3, p0, Landroid/database/AbstractCursor;->mPos:I

    goto :goto_0

    .line 209
    :cond_2
    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    if-ne p1, v2, :cond_3

    .line 210
    const/4 v1, 0x1

    goto :goto_0

    .line 213
    :cond_3
    iget v2, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p0, v2, p1}, Landroid/database/AbstractCursor;->onMove(II)Z

    move-result v1

    .line 214
    .local v1, result:Z
    if-nez v1, :cond_4

    .line 215
    iput v3, p0, Landroid/database/AbstractCursor;->mPos:I

    goto :goto_0

    .line 217
    :cond_4
    iput p1, p0, Landroid/database/AbstractCursor;->mPos:I

    .line 218
    iget v2, p0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I

    if-eq v2, v3, :cond_0

    .line 219
    iget v2, p0, Landroid/database/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {p0, v2}, Landroid/database/AbstractCursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Landroid/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    goto :goto_0
.end method

.method public final moveToPrevious()Z
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Landroid/database/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method protected onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 343
    iget-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 344
    :try_start_0
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/database/ContentObservable;->dispatchChange(ZLandroid/net/Uri;)V

    .line 345
    iget-object v0, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 346
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    iget-object v3, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 348
    :cond_0
    monitor-exit v1

    .line 349
    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onDeactivateOrClose()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 128
    :cond_0
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 129
    return-void
.end method

.method public onMove(II)Z
    .locals 1
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 318
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    .line 319
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 329
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 330
    return-void
.end method

.method public requery()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 132
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 134
    iput-boolean v3, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 136
    :cond_0
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 137
    return v3
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "extras"

    .prologue
    .line 395
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0
    .parameter "extras"

    .prologue
    .line 387
    if-nez p1, :cond_0

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .end local p1
    :cond_0
    iput-object p1, p0, Landroid/database/AbstractCursor;->mExtras:Landroid/os/Bundle;

    .line 388
    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 5
    .parameter "cr"
    .parameter "notifyUri"

    .prologue
    .line 359
    iget-object v1, p0, Landroid/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_0
    iput-object p2, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    .line 361
    iput-object p1, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    .line 362
    iget-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 365
    :cond_0
    new-instance v0, Landroid/database/AbstractCursor$SelfContentObserver;

    invoke-direct {v0, p0}, Landroid/database/AbstractCursor$SelfContentObserver;-><init>(Landroid/database/AbstractCursor;)V

    iput-object v0, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    .line 366
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 368
    monitor-exit v1

    .line 369
    return-void

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 323
    iget-boolean v0, p0, Landroid/database/AbstractCursor;->mClosed:Z

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Landroid/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 326
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 333
    iget-object v0, p0, Landroid/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 334
    return-void
.end method
