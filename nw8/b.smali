.class public Lnw8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static _instance:Lnw8/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lnw8/b;->_instance:Lnw8/b;

    return-void
.end method

.method private static checkCardViewExists()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "androidx.cardview.widget.CardView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v1
    :try_end_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_19} :catch_1c

    if-nez v1, :cond_1c

    const/4 v0, 0x1

    :catch_1c
    :cond_1c
    return v0
.end method

.method public static fix(Landroid/view/ViewGroup;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    invoke-static {}, Lnw8/b;->checkCardViewExists()Z

    move-result v2

    if-eqz v2, :cond_31

    const-string v2, "androidx.cardview.widget.CardView"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setCardBackgroundColor"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v3, v1, [Ljava/lang/Object;

    sget v4, Lnw8/c;->n:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_27

    const/high16 v4, -0x1000000

    goto :goto_28

    :cond_27
    const/4 v4, -0x1

    :goto_28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_31} :catch_31

    :catch_31
    :cond_31
    :try_start_31
    const-string v2, "item_phone_car_connect_clock"

    invoke-static {v2}, Lnw8/b;->getId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_48

    invoke-virtual {p0, v0}, Landroid/view/View;->onVisibilityAggregated(Z)V

    const-wide/16 v2, 0x1e

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {p0, v1}, Landroid/view/View;->onVisibilityAggregated(Z)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_48} :catch_48

    :catch_48
    :cond_48
    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 2

    :try_start_0
    const-string v0, "com.baidu.BaiduMap.R$id"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    return p0

    :catch_14
    const/4 p0, -0x1

    return p0
.end method

.method public static getInstance()Lnw8/b;
    .registers 1

    sget-object v0, Lnw8/b;->_instance:Lnw8/b;

    if-nez v0, :cond_b

    new-instance v0, Lnw8/b;

    invoke-direct {v0}, Lnw8/b;-><init>()V

    sput-object v0, Lnw8/b;->_instance:Lnw8/b;

    :cond_b
    sget-object v0, Lnw8/b;->_instance:Lnw8/b;

    return-object v0
.end method

.method private printView(Landroid/view/ViewGroup;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_34

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "获取的view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "miktone"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_31

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lnw8/b;->printView(Landroid/view/ViewGroup;)V

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_34
    return-void
.end method


# virtual methods
.method public hideView()V
    .registers 3

    invoke-virtual {p0}, Lnw8/b;->hideViewNative()V

    invoke-static {}, Lmf9/a;->a()Lmf9/a;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lmf9/a;->f:Landroid/widget/FrameLayout;

    return-void
.end method

.method public native hideViewNative()V
.end method

.method public showView(IIIII)V
    .registers 19

    if-lez p5, :cond_5

    const/16 v0, 0x1804

    goto :goto_7

    :cond_5
    const/16 v0, 0x1800

    :goto_7
    move v11, v0

    invoke-static {}, Lmf9/a;->a()Lmf9/a;

    move-result-object v12

    sub-int v3, p3, p1

    sub-int v4, p4, p2

    const v6, 0x1020002

    const/16 v7, 0x33

    const v8, 0x80028

    const/16 v9, 0x20

    invoke-static {}, Lnw8/b;->checkCardViewExists()Z

    move-result v10

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v11}, Lnw8/b;->showViewNative(IIIIIIIIIII)Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, v12, Lmf9/a;->f:Landroid/widget/FrameLayout;

    invoke-static {}, Lmf9/a;->a()Lmf9/a;

    move-result-object v0

    iget-object v0, v0, Lmf9/a;->f:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lnw8/b;->fix(Landroid/view/ViewGroup;)V

    invoke-static {}, Lmf9/a;->a()Lmf9/a;

    move-result-object v12

    iget-object v12, v12, Lmf9/a;->f:Landroid/widget/FrameLayout;

    if-eqz v12, :cond_50

    const-string p0, "input_method"

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v12}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_50

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_50
    return-void
.end method

.method public native showViewNative(IIIIIIIIIII)Landroid/widget/FrameLayout;
.end method
