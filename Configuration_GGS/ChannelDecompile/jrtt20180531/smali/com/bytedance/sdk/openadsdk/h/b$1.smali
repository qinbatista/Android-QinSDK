.class final Lcom/bytedance/sdk/openadsdk/h/b$1;
.super Ljava/lang/Object;
.source "AdLocationUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/b;->d(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/b$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/b$1;->b:Landroid/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/b$1;->b:Landroid/location/LocationManager;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/b;->a(Landroid/content/Context;Landroid/location/LocationManager;)V

    .line 89
    return-void
.end method
