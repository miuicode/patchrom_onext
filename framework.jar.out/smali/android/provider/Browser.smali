.class public Landroid/provider/Browser;
.super Ljava/lang/Object;
.source "Browser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Browser$SearchColumns;,
        Landroid/provider/Browser$BookmarkColumns;
    }
.end annotation


# static fields
.field public static final BOOKMARKS_URI:Landroid/net/Uri; = null

.field public static final EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.android.browser.application_id"

.field public static final EXTRA_CREATE_NEW_TAB:Ljava/lang/String; = "create_new_tab"

.field public static final EXTRA_HEADERS:Ljava/lang/String; = "com.android.browser.headers"

.field public static final EXTRA_IS_KIKIN_RESULT:Ljava/lang/String; = "com.android.browser.is_kikin_result"

.field public static final EXTRA_SHARE_FAVICON:Ljava/lang/String; = "share_favicon"

.field public static final EXTRA_SHARE_SCREENSHOT:Ljava/lang/String; = "share_screenshot"

.field public static final HISTORY_PROJECTION:[Ljava/lang/String; = null

.field public static final HISTORY_PROJECTION_BOOKMARK_INDEX:I = 0x4

.field public static final HISTORY_PROJECTION_DATE_INDEX:I = 0x3

.field public static final HISTORY_PROJECTION_FAVICON_INDEX:I = 0x6

.field public static final HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final HISTORY_PROJECTION_THUMBNAIL_INDEX:I = 0x7

.field public static final HISTORY_PROJECTION_TITLE_INDEX:I = 0x5

.field public static final HISTORY_PROJECTION_TOUCH_ICON_INDEX:I = 0x8

.field public static final HISTORY_PROJECTION_URL_INDEX:I = 0x1

.field public static final HISTORY_PROJECTION_VISITS_INDEX:I = 0x2

.field public static final INITIAL_ZOOM_LEVEL:Ljava/lang/String; = "browser.initialZoomLevel"

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field private static final MAX_HISTORY_COUNT:I = 0xfa

.field public static final SEARCHES_PROJECTION:[Ljava/lang/String; = null

.field public static final SEARCHES_PROJECTION_DATE_INDEX:I = 0x2

.field public static final SEARCHES_PROJECTION_SEARCH_INDEX:I = 0x1

.field public static final SEARCHES_URI:Landroid/net/Uri; = null

.field public static final TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String; = null

.field public static final TRUNCATE_HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final TRUNCATE_N_OLDEST:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const-string v0, "content://browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 92
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "url"

    aput-object v1, v0, v4

    const-string/jumbo v1, "visits"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "thumbnail"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "touch_icon"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "user_entered"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    .line 123
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    sput-object v0, Landroid/provider/Browser;->TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

    .line 139
    const-string v0, "content://browser/searches"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    .line 145
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "search"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/Browser;->SEARCHES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 655
    return-void
.end method

.method private static final addOrUrlEquals(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "sb"

    .prologue
    .line 273
    const-string v0, " OR url = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    return-void
.end method

.method public static final addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 4
    .parameter "cr"
    .parameter "search"

    .prologue
    .line 551
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 552
    .local v0, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 554
    sget-object v1, Landroid/provider/BrowserContract$Searches;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 555
    return-void
.end method

.method public static final canClearHistory(Landroid/content/ContentResolver;)Z
    .locals 11
    .parameter "cr"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 444
    const/4 v6, 0x0

    .line 445
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 447
    .local v8, ret:Z
    :try_start_0
    sget-object v1, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "visits"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 450
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_1

    move v8, v9

    .line 454
    :goto_0
    if-eqz v6, :cond_0

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_0
    return v8

    :cond_1
    move v8, v10

    .line 450
    goto :goto_0

    .line 451
    :catch_0
    move-exception v7

    .line 452
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v0, "browser"

    const-string v1, "canClearHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    if-eqz v6, :cond_0

    goto :goto_1

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static final clearHistory(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "cr"

    .prologue
    .line 466
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method public static final clearSearches(Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "cr"

    .prologue
    .line 566
    :try_start_0
    sget-object v1, Landroid/provider/BrowserContract$Searches;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "browser"

    const-string v2, "clearSearches"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 4
    .parameter "cr"
    .parameter "url"

    .prologue
    .line 539
    sget-object v0, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "url=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 540
    return-void
.end method

.method public static final deleteHistoryTimeFrame(Landroid/content/ContentResolver;JJ)V
    .locals 5
    .parameter "cr"
    .parameter "begin"
    .parameter "end"

    .prologue
    const-wide/16 v3, -0x1

    .line 515
    const-string v0, "date"

    .line 516
    .local v0, date:Ljava/lang/String;
    cmp-long v2, v3, p1

    if-nez v2, :cond_1

    .line 517
    cmp-long v2, v3, p3

    if-nez v2, :cond_0

    .line 518
    invoke-static {p0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 529
    :goto_0
    return-void

    .line 521
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, whereClause:Ljava/lang/String;
    :goto_1
    invoke-static {p0, v1}, Landroid/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0

    .line 522
    .end local v1           #whereClause:Ljava/lang/String;
    :cond_1
    cmp-long v2, v3, p3

    if-nez v2, :cond_2

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #whereClause:Ljava/lang/String;
    goto :goto_1

    .line 525
    .end local v1           #whereClause:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #whereClause:Ljava/lang/String;
    goto :goto_1
.end method

.method private static final deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 9
    .parameter "cr"
    .parameter "whereClause"

    .prologue
    .line 481
    const/4 v6, 0x0

    .line 483
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "url"

    aput-object v3, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 485
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v8

    .line 490
    .local v8, iconDb:Landroid/webkit/WebIconDatabase;
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/webkit/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 491
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    sget-object v0, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .end local v8           #iconDb:Landroid/webkit/WebIconDatabase;
    :cond_1
    if-eqz v6, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 501
    :cond_2
    return-void

    .line 495
    :catch_0
    move-exception v7

    .line 496
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v0, "browser"

    const-string v1, "deleteHistoryWhere"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    if-eqz v6, :cond_2

    goto :goto_0

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static final getAllBookmarks(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 252
    sget-object v1, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "url"

    aput-object v3, v2, v0

    const-string v3, "folder = 0"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getAllVisitedUrls(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 267
    sget-object v1, Landroid/provider/BrowserContract$Combined;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "url"

    aput-object v4, v2, v0

    const-string v5, "created ASC"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getVisitedHistory(Landroid/content/ContentResolver;)[Ljava/lang/String;
    .locals 10
    .parameter "cr"

    .prologue
    .line 376
    const/4 v6, 0x0

    .line 377
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 379
    .local v9, str:[Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "url"

    aput-object v1, v2, v0

    .line 382
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "visits > 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 383
    if-nez v6, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 396
    .end local v2           #projection:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 384
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 385
    const/4 v8, 0x0

    .line 386
    .local v8, i:I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 387
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 388
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 390
    .end local v2           #projection:[Ljava/lang/String;
    .end local v8           #i:I
    :catch_0
    move-exception v7

    .line 391
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v0, "browser"

    const-string v1, "getVisitedHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    const/4 v0, 0x0

    new-array v9, v0, [Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 394
    if-eqz v6, :cond_2

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    .line 396
    goto :goto_0

    .line 394
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v8       #i:I
    :cond_4
    if-eqz v6, :cond_2

    goto :goto_2
.end method

.method private static final getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "cr"
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 277
    const/4 v7, 0x0

    .line 278
    .local v7, secure:Z
    move-object v6, p1

    .line 279
    .local v6, compareString:Ljava/lang/String;
    const-string v0, "http://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 285
    :cond_0
    :goto_0
    const-string/jumbo v0, "www."

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 288
    :cond_1
    const/4 v8, 0x0

    .line 289
    .local v8, whereClause:Ljava/lang/StringBuilder;
    if-eqz v7, :cond_3

    .line 290
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #whereClause:Ljava/lang/StringBuilder;
    const-string/jumbo v0, "url = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 293
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 311
    :goto_1
    sget-object v1, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "visits"

    aput-object v3, v2, v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 281
    .end local v8           #whereClause:Ljava/lang/StringBuilder;
    :cond_2
    const-string v0, "https://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 283
    const/4 v7, 0x1

    goto :goto_0

    .line 297
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #whereClause:Ljava/lang/StringBuilder;
    const-string/jumbo v0, "url = "

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;
    invoke-static {v8, v6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 300
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 302
    .local v9, wwwString:Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 304
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 307
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static final requestAllIcons(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .locals 1
    .parameter "cr"
    .parameter "where"
    .parameter "listener"

    .prologue
    .line 585
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/webkit/WebIconDatabase;->bulkRequestIconForPageUrl(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 586
    return-void
.end method

.method public static final saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "c"
    .parameter "title"
    .parameter "url"

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 176
    .local v0, i:Landroid/content/Intent;
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 179
    return-void
.end method

.method public static final sendString(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "string"

    .prologue
    .line 212
    const v0, 0x10403f4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public static final sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "c"
    .parameter "stringToSend"
    .parameter "chooserDialogTitle"

    .prologue
    .line 228
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v1, send:Landroid/content/Intent;
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    :try_start_0
    invoke-static {v1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 235
    .local v0, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static final truncateHistory(Landroid/content/ContentResolver;)V
    .locals 10
    .parameter "cr"

    .prologue
    .line 412
    const/4 v6, 0x0

    .line 416
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "url"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "date"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 420
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0xfa

    if-lt v0, v1, :cond_0

    .line 421
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v9

    .line 423
    .local v9, iconDb:Landroid/webkit/WebIconDatabase;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/4 v0, 0x5

    if-ge v8, v0, :cond_0

    .line 424
    sget-object v0, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 426
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/webkit/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 427
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 433
    .end local v8           #i:I
    .end local v9           #iconDb:Landroid/webkit/WebIconDatabase;
    :cond_0
    if-eqz v6, :cond_1

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 435
    :cond_1
    return-void

    .line 423
    .restart local v8       #i:I
    .restart local v9       #iconDb:Landroid/webkit/WebIconDatabase;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 430
    .end local v8           #i:I
    .end local v9           #iconDb:Landroid/webkit/WebIconDatabase;
    :catch_0
    move-exception v7

    .line 431
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v0, "browser"

    const-string/jumbo v1, "truncateHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    if-eqz v6, :cond_1

    goto :goto_1

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static final updateVisitedHistory(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 10
    .parameter "cr"
    .parameter "url"
    .parameter "real"

    .prologue
    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 328
    .local v2, now:J
    const/4 v0, 0x0

    .line 330
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0, p1}, Landroid/provider/Browser;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 332
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 333
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 334
    .local v5, values:Landroid/content/ContentValues;
    if-eqz p2, :cond_1

    .line 335
    const-string/jumbo v7, "visits"

    const/4 v8, 0x1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    :goto_0
    const-string v7, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 340
    sget-object v7, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_1
    if-eqz v0, :cond_0

    .end local v5           #values:Landroid/content/ContentValues;
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_0
    return-void

    .line 337
    .restart local v5       #values:Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    const-string/jumbo v7, "user_entered"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 362
    .end local v5           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 363
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v7, "browser"

    const-string/jumbo v8, "updateVisitedHistory"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    if-eqz v0, :cond_0

    goto :goto_2

    .line 343
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_2
    :try_start_3
    invoke-static {p0}, Landroid/provider/Browser;->truncateHistory(Landroid/content/ContentResolver;)V

    .line 344
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 347
    .restart local v5       #values:Landroid/content/ContentValues;
    if-eqz p2, :cond_4

    .line 348
    const/4 v6, 0x1

    .line 349
    .local v6, visits:I
    const/4 v4, 0x0

    .line 354
    .local v4, user_entered:I
    :goto_3
    const-string/jumbo v7, "url"

    invoke-virtual {v5, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string/jumbo v7, "visits"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    const-string v7, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 357
    const-string/jumbo v7, "title"

    invoke-virtual {v5, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v7, "created"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    const-string/jumbo v7, "user_entered"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    sget-object v7, Landroid/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 365
    .end local v4           #user_entered:I
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v6           #visits:I
    :catchall_0
    move-exception v7

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v7

    .line 351
    .restart local v5       #values:Landroid/content/ContentValues;
    :cond_4
    const/4 v6, 0x0

    .line 352
    .restart local v6       #visits:I
    const/4 v4, 0x1

    .restart local v4       #user_entered:I
    goto :goto_3
.end method
