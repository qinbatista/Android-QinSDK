.class Lcom/bytedance/sdk/openadsdk/c/a;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static a:[Ljava/lang/Object;

.field private static b:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/a;->a:[Ljava/lang/Object;

    .line 32
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/c/a;->b:[Ljava/lang/Object;

    return-void
.end method

.method public static a(I)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 37
    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 38
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 39
    shl-int v0, v2, v0

    add-int/lit8 p0, v0, -0xc

    .line 41
    :cond_0
    return p0

    .line 37
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b(I)I
    .locals 1

    .prologue
    .line 69
    mul-int/lit8 v0, p0, 0x8

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/a;->a(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method
