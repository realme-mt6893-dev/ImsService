.class public Lcom/mediatek/ims/rcsua/RcsUaService;
.super Ljava/lang/Object;
.source "RcsUaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/rcsua/RcsUaService$Callback;,
        Lcom/mediatek/ims/rcsua/RcsUaService$AcsRequestReason;,
        Lcom/mediatek/ims/rcsua/RcsUaService$RegistrationMode;,
        Lcom/mediatek/ims/rcsua/RcsUaService$ImsRadioTech;,
        Lcom/mediatek/ims/rcsua/RcsUaService$RegistrationState;
    }
.end annotation


# static fields
.field public static final ACTION_RCSUA_SERVICE_DOWN:Ljava/lang/String; = "com.mediatek.ims.rcsua.SERVICE_DOWN"

.field public static final ACTION_RCSUA_SERVICE_UP:Ljava/lang/String; = "com.mediatek.ims.rcsua.SERVICE_UP"

.field private static final EXTRA_OPTIONS:Ljava/lang/String; = "service_options"

.field private static final EXTRA_PHONE_ID:Ljava/lang/String; = "phone_id"

.field private static volatile INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService; = null

.field public static final OPTION_DEREG_SUSPEND:Ljava/lang/String; = "OPTION_DEREG_SUSPEND"

.field public static final OPTION_ROI_SUPPORT:Ljava/lang/String; = "OPTION_ROI_SUPPORT"

.field public static final REASON_DEFAULT_SMS_UNKNOWN:I = 0x0

.field public static final REASON_FT_AUTHENTICATE_FAILURE:I = 0x3

.field public static final REASON_RCS_DEFAULT_SMS:I = 0x1

.field public static final REASON_RCS_NOT_DEFAULT_SMS:I = 0x2

.field public static final REG_MODE_IMS:I = 0x1

.field public static final REG_MODE_INTERNET:I = 0x2

.field public static final REG_RADIO_3GPP:I = 0x1

.field public static final REG_RADIO_IEEE802:I = 0x2

.field public static final REG_RADIO_NONE:I = 0x0

.field public static final REG_STATE_DEREGISTERING:I = 0x3

.field public static final REG_STATE_NOT_REGISTERED:I = 0x0

.field public static final REG_STATE_REGISTERED:I = 0x2

.field public static final REG_STATE_REGISTERING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[RcsUaService][API]"


# instance fields
.field private acsCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/mediatek/ims/rcsua/AcsEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

.field private acsSupported:Z

.field private activated:Z

.field private callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

.field private callerContext:Landroid/content/Context;

.field private capabilities:Lcom/mediatek/ims/rcsua/Capability;

.field private clientCount:I

.field private clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

.field private clients:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/mediatek/ims/rcsua/Client;",
            ">;"
        }
    .end annotation
.end field

.field private final imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

.field private lock:Ljava/lang/Object;

.field private mRetryCount:I

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private volatile serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;


# direct methods
.method private constructor <init>(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;
    .param p4, "options"    # Landroid/os/Bundle;

    .line 1067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1173
    new-instance v0, Lcom/mediatek/ims/rcsua/RcsUaService$4;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/rcsua/RcsUaService$4;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    iput-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    .line 1240
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    .line 1250
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    .line 1251
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    .line 1252
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    .line 1256
    iput v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->mRetryCount:I

    .line 1068
    new-instance v1, Lcom/mediatek/ims/rcsua/RcsUaService$2;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/RcsUaService$2;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceConnection:Landroid/content/ServiceConnection;

    .line 1110
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    .line 1111
    iput-object p3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    .line 1112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callerCallback value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[RcsUaService][API]"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callerContext value "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    const-string v2, "persist.vendor.service.rcs"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/mediatek/ims/rcsua/RcsUaService;->getSystemProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    .line 1116
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isAcsAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    .line 1118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.rcsua.BIND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1120
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1122
    new-instance v1, Landroid/os/Bundle;

    if-nez p4, :cond_1

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_1
    invoke-direct {v1, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1123
    .local v1, "bundle":Landroid/os/Bundle;
    :goto_0
    iget-boolean v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    const-string v4, "OPTION_ACS_SUPPORT"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1124
    const-string v3, "service_options"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1126
    const-string v3, "com.mediatek.ims.rcsua.service"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1128
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1129
    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceConnection:Landroid/content/ServiceConnection;

    .line 1130
    invoke-virtual {v3, v0, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 1131
    .local v2, "result":Z
    if-nez v2, :cond_2

    .line 1132
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1133
    .local v3, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/mediatek/ims/rcsua/RcsUaService$3;

    invoke-direct {v4, p0, v0, v3}, Lcom/mediatek/ims/rcsua/RcsUaService$3;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;Landroid/content/Intent;Landroid/os/Handler;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1146
    .end local v3    # "handler":Landroid/os/Handler;
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/ims/rcsua/RcsUaService;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/ims/rcsua/RcsUaService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->notifyServiceDown()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/ims/rcsua/RcsUaService;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->mRetryCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/ims/rcsua/RcsUaService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;
    .param p1, "x1"    # I

    .line 68
    iput p1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->mRetryCount:I

    return p1
.end method

.method static synthetic access$208(Lcom/mediatek/ims/rcsua/RcsUaService;)I
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->mRetryCount:I

    return v0
.end method

.method static synthetic access$300()Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1

    .line 68
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/rcsua/RcsUaService;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/service/IRcsUaService;)Lcom/mediatek/ims/rcsua/service/IRcsUaService;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 68
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/ims/rcsua/RcsUaService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/rcsua/RcsUaService;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    invoke-direct {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->notifyServiceUp()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/ims/rcsua/RcsUaService;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;
    .param p1, "x1"    # Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    .line 68
    iput-object p1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    return-object p1
.end method

.method static synthetic access$802(Lcom/mediatek/ims/rcsua/RcsUaService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;
    .param p1, "x1"    # I

    .line 68
    iput p1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/ims/rcsua/RcsUaService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 68
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    return-object v0
.end method

.method public static getInstance()Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1

    .line 328
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->getInstance(I)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(I)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 2
    .param p0, "phoneId"    # I

    .line 338
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v0, :cond_0

    .line 342
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0

    .line 339
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "startService() must be called before getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getSystemProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 1217
    move-object v0, p2

    .line 1219
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1221
    .local v1, "cl":Ljava/lang/ClassLoader;
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1222
    .local v2, "systemProperties":Ljava/lang/Class;
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 1223
    .local v4, "paramTypes":[Ljava/lang/Class;
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1224
    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 1225
    const-string v5, "get"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1226
    .local v5, "get":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    .line 1227
    .local v3, "params":[Ljava/lang/Object;
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v3, v6

    .line 1228
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v3, v7

    .line 1230
    invoke-virtual {v5, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 1233
    .end local v2    # "systemProperties":Ljava/lang/Class;
    .end local v3    # "params":[Ljava/lang/Object;
    .end local v4    # "paramTypes":[Ljava/lang/Class;
    .end local v5    # "get":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 1231
    :catch_0
    move-exception v2

    .line 1235
    :goto_0
    return-object v0
.end method

.method public static isAcsAvailable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 1037
    const/4 v0, 0x0

    .line 1038
    .local v0, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1039
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "context value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[RcsUaService][API]"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageManager pm  value "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const/4 v2, 0x0

    :try_start_0
    const-string v4, "com.mediatek.rcs.provisioning"

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object v0, v4

    .line 1044
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    goto :goto_0

    .line 1045
    :catch_0
    move-exception v4

    .line 1048
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAcsAvailable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    move v2, v5

    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    return v5
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1028
    const-string v0, "persist.vendor.mtk_rcs_ua_support"

    .line 1030
    .local v0, "name":Ljava/lang/String;
    const-string v1, "persist.vendor.mtk_rcs_ua_support"

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Lcom/mediatek/ims/rcsua/RcsUaService;->getSystemProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1031
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[RcsUaService][API]"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private notifyServiceDown()V
    .locals 2

    .line 1162
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    if-eqz v0, :cond_0

    .line 1163
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/RcsUaService$Callback;->serviceDisconnected(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    .line 1171
    :cond_0
    return-void
.end method

.method private notifyServiceUp()V
    .locals 2

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyServiceUp to callback["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[RcsUaService][API]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerCallback:Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    if-eqz v0, :cond_0

    .line 1151
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/RcsUaService$Callback;->serviceConnected(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    .line 1159
    :cond_0
    return-void
.end method

.method public static startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    .line 251
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    return-object v0
.end method

.method public static startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 278
    const-string v0, "[RcsUaService][API]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startService, current instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-nez v0, :cond_1

    .line 280
    const-class v0, Lcom/mediatek/ims/rcsua/RcsUaService;

    monitor-enter v0

    .line 281
    :try_start_0
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-nez v1, :cond_0

    .line 282
    new-instance v1, Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mediatek/ims/rcsua/RcsUaService;-><init>(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)V

    sput-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 284
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 287
    :cond_1
    :goto_0
    sget-object v0, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    return-object v0
.end method

.method public static startService(Landroid/content/Context;Lcom/mediatek/ims/rcsua/RcsUaService$Callback;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;

    .line 238
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    return-object v0
.end method

.method public static startService(Landroid/content/Context;Lcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/RcsUaService$Callback;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 264
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/mediatek/ims/rcsua/RcsUaService;->startService(Landroid/content/Context;ILcom/mediatek/ims/rcsua/RcsUaService$Callback;Landroid/os/Bundle;)Lcom/mediatek/ims/rcsua/RcsUaService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .line 350
    const-string v0, "[RcsUaService][API]"

    const-string v1, "activate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    goto :goto_0

    .line 355
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->activate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 359
    :goto_0
    return-void
.end method

.method public addCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "feature"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 486
    const-string v0, "[RcsUaService][API]"

    const-string v1, "addCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->addCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    goto :goto_0

    .line 493
    :catch_0
    move-exception v0

    .line 496
    :goto_0
    return-void

    .line 488
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearAcsConfiguration()Z
    .locals 2

    .line 1009
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 1012
    const/4 v0, 0x0

    .line 1014
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->clearAcsConfiguration()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1016
    goto :goto_0

    .line 1015
    :catch_0
    move-exception v1

    .line 1017
    :goto_0
    return v0

    .line 1010
    .end local v0    # "result":Z
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deactivate()V
    .locals 2

    .line 367
    const-string v0, "[RcsUaService][API]"

    const-string v1, "deactivate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    goto :goto_0

    .line 372
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->deactivate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 376
    :goto_0
    return-void
.end method

.method public getAcsConfigInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "configItem"    # Ljava/lang/String;

    .line 837
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 839
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    const/4 v0, 0x0

    .line 845
    .local v0, "value":I
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfigInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 847
    goto :goto_0

    .line 846
    :catch_0
    move-exception v1

    .line 849
    :goto_0
    return v0

    .line 840
    .end local v0    # "value":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 838
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configItem"    # Ljava/lang/String;

    .line 859
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 861
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    const-string v0, ""

    .line 867
    .local v0, "value":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfigString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 869
    goto :goto_0

    .line 868
    :catch_0
    move-exception v1

    .line 871
    :goto_0
    return-object v0

    .line 862
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;
    .locals 2

    .line 794
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 796
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    const/4 v0, 0x0

    .line 802
    .local v0, "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 804
    goto :goto_0

    .line 803
    :catch_0
    move-exception v1

    .line 805
    :goto_0
    return-object v0

    .line 797
    .end local v0    # "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcsSwitchState()Z
    .locals 2

    .line 968
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 971
    const/4 v0, 0x0

    .line 973
    .local v0, "state":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsSwitchState()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 975
    goto :goto_0

    .line 974
    :catch_0
    move-exception v1

    .line 976
    :goto_0
    return v0

    .line 969
    .end local v0    # "state":Z
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActiveClients()[Lcom/mediatek/ims/rcsua/Client;
    .locals 5

    .line 687
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 691
    .local v0, "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/rcsua/Client;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 692
    .local v1, "len":I
    new-array v2, v1, [Lcom/mediatek/ims/rcsua/Client;

    .line 693
    .local v2, "client":[Lcom/mediatek/ims/rcsua/Client;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 694
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/ims/rcsua/Client;

    aput-object v4, v2, v3

    .line 693
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 696
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveClients client:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[RcsUaService][API]"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    return-object v2

    .line 688
    .end local v0    # "clientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mediatek/ims/rcsua/Client;>;"
    .end local v1    # "len":I
    .end local v2    # "client":[Lcom/mediatek/ims/rcsua/Client;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAospAcsInfo()Ljava/lang/String;
    .locals 3

    .line 814
    const-string v0, ""

    .line 815
    .local v0, "info":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v1, :cond_1

    .line 817
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    const/4 v1, 0x0

    .line 823
    .local v1, "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getAcsConfiguration()Lcom/mediatek/ims/rcsua/AcsConfiguration;

    move-result-object v2

    move-object v1, v2

    .line 824
    invoke-virtual {v1}, Lcom/mediatek/ims/rcsua/AcsConfiguration;->readXmlData()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 826
    goto :goto_0

    .line 825
    :catch_0
    move-exception v2

    .line 827
    :goto_0
    return-object v0

    .line 818
    .end local v1    # "config":Lcom/mediatek/ims/rcsua/AcsConfiguration;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RCS UA service disconnected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 816
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "ACS not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCapabilities()Lcom/mediatek/ims/rcsua/Capability;
    .locals 2

    .line 628
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    const/4 v0, 0x0

    .line 634
    .local v0, "capability":Lcom/mediatek/ims/rcsua/Capability;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getCapabilities()Lcom/mediatek/ims/rcsua/Capability;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 637
    goto :goto_0

    .line 635
    :catch_0
    move-exception v1

    .line 639
    :goto_0
    return-object v0

    .line 629
    .end local v0    # "capability":Lcom/mediatek/ims/rcsua/Capability;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 1063
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    return-object v0
.end method

.method public getOptions()Landroid/os/Bundle;
    .locals 2

    .line 706
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    const/4 v0, 0x0

    .line 712
    .local v0, "options":Landroid/os/Bundle;
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->getOptions()Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 714
    goto :goto_0

    .line 713
    :catch_0
    move-exception v1

    .line 716
    :goto_0
    return-object v0

    .line 707
    .end local v0    # "options":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAcsConnected()Z
    .locals 2

    .line 880
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 882
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    const/4 v0, 0x0

    .line 888
    .local v0, "connected":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->isAcsConnected()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 890
    goto :goto_0

    .line 889
    :catch_0
    move-exception v1

    .line 892
    :goto_0
    return v0

    .line 883
    .end local v0    # "connected":Z
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isActivated()Z
    .locals 2

    .line 649
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->activated:Z

    return v0

    .line 653
    :cond_0
    const/4 v0, 0x1

    .line 655
    .local v0, "activated":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->isActivated()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 658
    goto :goto_0

    .line 656
    :catch_0
    move-exception v1

    .line 660
    :goto_0
    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 725
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_2

    .line 727
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 732
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    new-instance v1, Lcom/mediatek/ims/rcsua/RcsUaService$1;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/rcsua/RcsUaService$1;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;)V

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    invoke-interface {v1, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->registerAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 760
    goto :goto_0

    .line 759
    :catch_0
    move-exception v1

    .line 762
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 763
    monitor-exit v0

    .line 764
    return-void

    .line 763
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 728
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerClient(Lcom/mediatek/ims/rcsua/ImsEventCallback;)Lcom/mediatek/ims/rcsua/Client;
    .locals 4
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/ImsEventCallback;

    .line 566
    const/4 v0, 0x0

    .line 568
    .local v0, "newClient":Lcom/mediatek/ims/rcsua/Client;
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_1

    .line 573
    :try_start_0
    const-string v1, "[RcsUaService][API]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerClient:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",clientCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :try_start_1
    iget v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    if-nez v2, :cond_0

    .line 577
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->imsEventCallback:Lcom/mediatek/ims/rcsua/service/IImsEventCallback;

    invoke-interface {v2, v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->registerClient(Lcom/mediatek/ims/rcsua/service/IImsEventCallback;)Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 580
    :cond_0
    new-instance v2, Lcom/mediatek/ims/rcsua/Client;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    invoke-direct {v2, p0, v3}, Lcom/mediatek/ims/rcsua/Client;-><init>(Lcom/mediatek/ims/rcsua/RcsUaService;Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V

    move-object v0, v2

    .line 581
    invoke-virtual {v0, p1}, Lcom/mediatek/ims/rcsua/Client;->registerImsEventCallback(Lcom/mediatek/ims/rcsua/ImsEventCallback;)V

    .line 582
    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 583
    monitor-exit v1

    .line 586
    goto :goto_0

    .line 583
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "newClient":Lcom/mediatek/ims/rcsua/Client;
    .end local p0    # "this":Lcom/mediatek/ims/rcsua/RcsUaService;
    .end local p1    # "callback":Lcom/mediatek/ims/rcsua/ImsEventCallback;
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 584
    .restart local v0    # "newClient":Lcom/mediatek/ims/rcsua/Client;
    .restart local p0    # "this":Lcom/mediatek/ims/rcsua/RcsUaService;
    .restart local p1    # "callback":Lcom/mediatek/ims/rcsua/ImsEventCallback;
    :catch_0
    move-exception v1

    .line 588
    :goto_0
    return-object v0

    .line 569
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RCS UA service disconnected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "feature"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 506
    const-string v0, "[RcsUaService][API]"

    const-string v1, "removeCapability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->removeCapability(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    goto :goto_0

    .line 513
    :catch_0
    move-exception v0

    .line 516
    :goto_0
    return-void

    .line 508
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAcsProvisioningAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 990
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 993
    const/4 v0, 0x0

    .line 995
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setAcsProvisioningAddress(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 997
    goto :goto_0

    .line 996
    :catch_0
    move-exception v1

    .line 998
    :goto_0
    return v0

    .line 991
    .end local v0    # "result":Z
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAcsSwitchState(Z)Z
    .locals 2
    .param p1, "state"    # Z

    .line 926
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 929
    const/4 v0, 0x0

    .line 931
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v1, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setAcsSwitchState(Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 933
    goto :goto_0

    .line 932
    :catch_0
    move-exception v1

    .line 934
    :goto_0
    return v0

    .line 927
    .end local v0    # "result":Z
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "rcsVersion"    # Ljava/lang/String;
    .param p2, "rcsProfile"    # Ljava/lang/String;
    .param p3, "clientVendor"    # Ljava/lang/String;
    .param p4, "clientVersion"    # Ljava/lang/String;

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAcsonfiguration rcsVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,rcsProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,clientVendor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,clientVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[RcsUaService][API]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAcsonfiguration !acsSupported: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_0

    .line 953
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceIntf value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setAcsonfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    goto :goto_0

    .line 955
    :catch_0
    move-exception v0

    .line 957
    :goto_0
    return-void

    .line 950
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOptions(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .line 669
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->setOptions(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    goto :goto_0

    .line 675
    :catch_0
    move-exception v0

    .line 678
    :goto_0
    return-void

    .line 670
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopService()V
    .locals 4

    .line 295
    const-string v0, "[RcsUaService][API]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopService, current instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-class v0, Lcom/mediatek/ims/rcsua/RcsUaService;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 298
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 300
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    invoke-interface {v1, v3}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    goto :goto_0

    .line 301
    :catch_0
    move-exception v1

    .line 304
    :goto_0
    :try_start_2
    iput-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 307
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/rcsua/Client;

    .line 308
    .local v3, "c":Lcom/mediatek/ims/rcsua/Client;
    invoke-virtual {p0, v3}, Lcom/mediatek/ims/rcsua/RcsUaService;->unregisterClient(Lcom/mediatek/ims/rcsua/Client;)V

    .line 309
    .end local v3    # "c":Lcom/mediatek/ims/rcsua/Client;
    goto :goto_1

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 312
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->callerContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 313
    iput-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    .line 314
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    .line 316
    :cond_2
    sget-object v1, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    if-eqz v1, :cond_3

    .line 317
    sput-object v2, Lcom/mediatek/ims/rcsua/RcsUaService;->INSTANCE:Lcom/mediatek/ims/rcsua/RcsUaService;

    .line 319
    :cond_3
    monitor-exit v0

    .line 320
    return-void

    .line 319
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public triggerAcsRequest(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 902
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_1

    .line 904
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerAcsRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    goto :goto_0

    .line 910
    :catch_0
    move-exception v0

    .line 912
    :goto_0
    return-void

    .line 905
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerForceReregistration()V
    .locals 2

    .line 433
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerForceReregistration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerForceReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 443
    :goto_0
    return-void

    .line 435
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerReregistration()V
    .locals 2

    .line 383
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerReregistraion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 393
    :goto_0
    return-void

    .line 385
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "features"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 450
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerReregistraion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerReregistration(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 460
    :goto_0
    return-void

    .line 452
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerRestoration()V
    .locals 2

    .line 467
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerRestoration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerRestoration()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 477
    :goto_0
    return-void

    .line 469
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerRoiDeregistration()V
    .locals 2

    .line 400
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerRoiDeregistration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerRoiDeregistration()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 410
    :goto_0
    return-void

    .line 402
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public triggerRoiRegistration()V
    .locals 2

    .line 416
    const-string v0, "[RcsUaService][API]"

    const-string v1, "triggerRoiRegistration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->triggerRoiRegistration()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 426
    :goto_0
    return-void

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAcsEventCallback(Lcom/mediatek/ims/rcsua/AcsEventCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/mediatek/ims/rcsua/AcsEventCallback;

    .line 773
    iget-boolean v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsSupported:Z

    if-eqz v0, :cond_2

    .line 775
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 776
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 777
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsCallbacks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 779
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;

    invoke-interface {v1, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterAcsCallback(Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;)V

    .line 781
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->acsEventCallback:Lcom/mediatek/ims/rcsua/service/IAcsEventCallback;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 783
    goto :goto_0

    .line 782
    :catch_0
    move-exception v1

    .line 785
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 786
    return-void

    .line 785
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 774
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ACS not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterClient(Lcom/mediatek/ims/rcsua/Client;)V
    .locals 3
    .param p1, "client"    # Lcom/mediatek/ims/rcsua/Client;

    .line 599
    const-string v0, "[RcsUaService][API]"

    const-string v1, "unregisterClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    const-string v0, "[RcsUaService][API]"

    const-string v1, "unregisterClient: client doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 606
    :try_start_0
    iget v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 608
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    if-eqz v1, :cond_1

    .line 609
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    iget-object v2, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    invoke-interface {v1, v2}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->unregisterClient(Lcom/mediatek/ims/rcsua/service/IRcsUaClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 612
    :cond_1
    goto :goto_0

    .line 610
    :catch_0
    move-exception v1

    .line 613
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaClient;

    .line 614
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clientCount:I

    .line 615
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 617
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->clients:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 618
    monitor-exit v0

    .line 619
    return-void

    .line 618
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    .locals 2
    .param p1, "features"    # Lcom/mediatek/ims/rcsua/Capability;

    .line 526
    const-string v0, "[RcsUaService][API]"

    const-string v1, "updateCapabilities"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    invoke-interface {v0, p1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 536
    :goto_0
    return-void

    .line 528
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateCapabilities(Ljava/lang/String;)V
    .locals 2
    .param p1, "featuresText"    # Ljava/lang/String;

    .line 546
    const-string v0, "[RcsUaService][API]"

    const-string v1, "updateCapabilities"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {p0}, Lcom/mediatek/ims/rcsua/RcsUaService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ims/rcsua/RcsUaService;->serviceIntf:Lcom/mediatek/ims/rcsua/service/IRcsUaService;

    new-instance v1, Lcom/mediatek/ims/rcsua/Capability;

    invoke-direct {v1, p1}, Lcom/mediatek/ims/rcsua/Capability;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/mediatek/ims/rcsua/service/IRcsUaService;->updateCapabilities(Lcom/mediatek/ims/rcsua/Capability;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    goto :goto_0

    .line 553
    :catch_0
    move-exception v0

    .line 556
    :goto_0
    return-void

    .line 548
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RCS UA service disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
