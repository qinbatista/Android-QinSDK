.class final Lcom/bytedance/sdk/openadsdk/c/i$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/c/i;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/c/i;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 134
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/i$a;->a:Lcom/bytedance/sdk/openadsdk/c/i;

    .line 135
    const-string v0, "ss_downloads.db"

    const/4 v1, 0x0

    const/16 v2, 0x65

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 136
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 201
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 202
    const-string v1, "current_bytes"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/c/i$a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 204
    const-string v1, "total_bytes"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/c/i$a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 206
    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/c/i$a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 208
    const-string v1, "description"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/c/i$a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 210
    const-string v1, "icon_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/c/i$a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 212
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 3

    .prologue
    .line 184
    packed-switch p2, :pswitch_data_0

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to upgrade to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/i$a;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 187
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/i$a;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 188
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/i$a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/i$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 194
    return-void

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    .line 215
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    const-string v1, "ss_downloads"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 217
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 218
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 224
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 225
    const-string v1, "is_visible_in_downloads_ui"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 226
    const-string v1, "destination != 0"

    .line 228
    const-string v2, "ss_downloads"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 229
    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 249
    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS ss_downloads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 250
    const-string v0, "CREATE TABLE ss_downloads(_id INTEGER PRIMARY KEY AUTOINCREMENT,uri TEXT, entity TEXT, no_integrity BOOLEAN, hint TEXT, _data TEXT, mimetype TEXT, destination INTEGER, visibility INTEGER, control INTEGER, status INTEGER, numfailed INTEGER, lastmod BIGINT, notificationpackage TEXT, notificationextras TEXT, cookiedata TEXT, useragent TEXT, referer TEXT, total_bytes INTEGER, current_bytes INTEGER, title TEXT, description TEXT, icon_url TEXT, allow_roaming INTEGER NOT NULL DEFAULT 0, allowed_network_types INTEGER NOT NULL DEFAULT 0, is_visible_in_downloads_ui INTEGER NOT NULL DEFAULT 1, bypass_recommended_size_limit INTEGER NOT NULL DEFAULT 0, mediaprovider_uri TEXT, deleted BOOLEAN NOT NULL DEFAULT 0, errorMsg TEXT, allow_write BOOLEAN NOT NULL DEFAULT 0, etag TEXT, scanned INTEGER, method INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    const-string v1, "SsDownloadManager"

    const-string v2, "couldn\'t create table in downloads database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    throw v0
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 293
    const-string v0, "DROP TABLE IF EXISTS request_headers"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 294
    const-string v0, "CREATE TABLE request_headers(id INTEGER PRIMARY KEY AUTOINCREMENT,download_id INTEGER NOT NULL,header TEXT NOT NULL,value TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 300
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 143
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/c/b;->d:Z

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "SsDownloadManager"

    const-string v1, "populating new database"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    const/16 v0, 0x64

    const/16 v1, 0x65

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/i$a;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 147
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    .prologue
    const/16 v0, 0x63

    .line 159
    const/16 v1, 0x64

    if-ge p2, v1, :cond_1

    .line 161
    :try_start_0
    const-string v1, "SsDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading downloads database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", which will destroy all old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v0

    .line 172
    :cond_0
    :goto_0
    add-int/lit8 v0, p2, 0x1

    :goto_1
    if-gt v0, p3, :cond_2

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/c/i$a;->a(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 164
    :cond_1
    if-le p2, p3, :cond_0

    .line 167
    const-string v1, "SsDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downgrading downloads database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (current version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), destroying all old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move p2, v0

    .line 169
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    const-string v1, "SsDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgrade "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_2
    return-void
.end method
