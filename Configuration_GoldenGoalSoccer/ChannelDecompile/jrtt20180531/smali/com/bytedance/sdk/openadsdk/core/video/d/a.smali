.class public Lcom/bytedance/sdk/openadsdk/core/video/d/a;
.super Ljava/lang/Object;
.source "MediaHelper.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a:I

    return-void
.end method

.method public static a(JJ)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 14
    .line 15
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-lez v0, :cond_0

    .line 16
    long-to-double v2, p0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    long-to-double v4, p2

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 18
    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 19
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 14

    .prologue
    const-wide/32 v6, 0xea60

    const-wide/16 v12, 0xa

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    div-long v2, p0, v6

    .line 26
    const-wide/32 v4, 0x36ee80

    rem-long v4, p0, v4

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 28
    cmp-long v1, v2, v12

    if-ltz v1, :cond_0

    .line 29
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    :goto_0
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    cmp-long v1, v4, v12

    if-ltz v1, :cond_2

    .line 40
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30
    :cond_0
    cmp-long v1, v2, v10

    if-lez v1, :cond_1

    .line 31
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 41
    :cond_2
    cmp-long v1, v4, v10

    if-lez v1, :cond_3

    .line 42
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 45
    :cond_3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 56
    :cond_0
    if-eqz p1, :cond_1

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 59
    :cond_1
    sget v0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 60
    const/16 v0, 0xf06

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 66
    :cond_2
    sget v0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 67
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 70
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method
