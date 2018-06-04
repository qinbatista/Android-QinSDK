.class public Lcom/east2west/game/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final G:J = 0x40000000L

.field private static final K:J = 0x400L

.field private static final M:J = 0x100000L

.field private static final T:J = 0x10000000000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHuman(J)Ljava/lang/String;
    .locals 8
    .param p0, "value"    # J

    .prologue
    const/4 v6, 0x5

    .line 16
    new-array v2, v6, [J

    fill-array-data v2, :array_0

    .line 17
    .local v2, "dividers":[J
    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "TB"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "GB"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "MB"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "KB"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "B"

    aput-object v7, v5, v6

    .line 18
    .local v5, "units":[Ljava/lang/String;
    const-wide/16 v6, 0x1

    cmp-long v6, p0, v6

    if-gez v6, :cond_1

    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0 "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 28
    :cond_0
    :goto_0
    return-object v4

    .line 20
    :cond_1
    const/4 v4, 0x0

    .line 21
    .local v4, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v2

    if-ge v3, v6, :cond_0

    .line 22
    aget-wide v0, v2, v3

    .line 23
    .local v0, "divider":J
    cmp-long v6, p0, v0

    if-ltz v6, :cond_2

    .line 24
    aget-object v6, v5, v3

    invoke-static {p0, p1, v0, v1, v6}, Lcom/east2west/game/util/StringUtils;->format(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 25
    goto :goto_0

    .line 21
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 16
    nop

    :array_0
    .array-data 8
        0x10000000000L
        0x40000000
        0x100000
        0x400
        0x1
    .end array-data
.end method

.method private static format(JJLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # J
    .param p2, "divider"    # J
    .param p4, "unit"    # Ljava/lang/String;

    .prologue
    .line 35
    const-wide/16 v2, 0x1

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    long-to-double v2, p0

    long-to-double v4, p2

    div-double v0, v2, v4

    .line 36
    .local v0, "result":D
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#.##"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 35
    .end local v0    # "result":D
    :cond_0
    long-to-double v0, p0

    goto :goto_0
.end method
