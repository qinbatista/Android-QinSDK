.class public final enum Lcom/bytedance/sdk/openadsdk/h/n$a;
.super Ljava/lang/Enum;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bytedance/sdk/openadsdk/h/n$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/sdk/openadsdk/h/n$a;

.field public static final enum b:Lcom/bytedance/sdk/openadsdk/h/n$a;

.field public static final enum c:Lcom/bytedance/sdk/openadsdk/h/n$a;

.field public static final enum d:Lcom/bytedance/sdk/openadsdk/h/n$a;

.field public static final enum e:Lcom/bytedance/sdk/openadsdk/h/n$a;

.field public static final enum f:Lcom/bytedance/sdk/openadsdk/h/n$a;

.field private static final synthetic h:[Lcom/bytedance/sdk/openadsdk/h/n$a;


# instance fields
.field final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/n$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/bytedance/sdk/openadsdk/h/n$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/n$a;->a:Lcom/bytedance/sdk/openadsdk/h/n$a;

    .line 38
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/n$a;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v5, v5}, Lcom/bytedance/sdk/openadsdk/h/n$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/n$a;->b:Lcom/bytedance/sdk/openadsdk/h/n$a;

    .line 39
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/n$a;

    const-string v1, "MOBILE_2G"

    invoke-direct {v0, v1, v6, v6}, Lcom/bytedance/sdk/openadsdk/h/n$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/n$a;->c:Lcom/bytedance/sdk/openadsdk/h/n$a;

    .line 40
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/n$a;

    const-string v1, "MOBILE_3G"

    invoke-direct {v0, v1, v7, v7}, Lcom/bytedance/sdk/openadsdk/h/n$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/n$a;->d:Lcom/bytedance/sdk/openadsdk/h/n$a;

    .line 41
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/n$a;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v8, v8}, Lcom/bytedance/sdk/openadsdk/h/n$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/n$a;->e:Lcom/bytedance/sdk/openadsdk/h/n$a;

    .line 42
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/n$a;

    const-string v1, "MOBILE_4G"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/n$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/n$a;->f:Lcom/bytedance/sdk/openadsdk/h/n$a;

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/bytedance/sdk/openadsdk/h/n$a;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/n$a;->a:Lcom/bytedance/sdk/openadsdk/h/n$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/n$a;->b:Lcom/bytedance/sdk/openadsdk/h/n$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/n$a;->c:Lcom/bytedance/sdk/openadsdk/h/n$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/n$a;->d:Lcom/bytedance/sdk/openadsdk/h/n$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/n$a;->e:Lcom/bytedance/sdk/openadsdk/h/n$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/bytedance/sdk/openadsdk/h/n$a;->f:Lcom/bytedance/sdk/openadsdk/h/n$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/n$a;->h:[Lcom/bytedance/sdk/openadsdk/h/n$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/h/n$a;->g:I

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/n$a;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/bytedance/sdk/openadsdk/h/n$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/n$a;

    return-object v0
.end method

.method public static values()[Lcom/bytedance/sdk/openadsdk/h/n$a;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/n$a;->h:[Lcom/bytedance/sdk/openadsdk/h/n$a;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/openadsdk/h/n$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/openadsdk/h/n$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/h/n$a;->g:I

    return v0
.end method
