#文件头描述
.class public Lcom/social_touch/demo/MainActivity;
.super Landroid/app/Activity;#指定MainActivity的父类
.source "MainActivity.java"#源文件名称

#表明实现了View.OnClickListener接口
# interfaces
.implements Landroid/view/View$OnClickListener;

#定义float静态字段pi
# static fields
.field private static final pi:F = 3.14f

#定义了String类型字段TAG
# instance fields
.field private TAG:Ljava/lang/String;

#定义了boolean类型的字段running
.field public volatile running:Z

#构造方法,如果你还纳闷这个方法是怎么出来的化,就去看看jvm的基础知识吧
# direct methods
.method public constructor <init>()V
    .locals 1#表示函数中使用了一个局部变量

    .prologue#表示方法中代码正式开始
    .line 8#表示对应与java源文件的低8行
    #调用Activity中的init()方法
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 10
    const-string v0, "MainActivity"

    iput-object v0, p0, Lcom/social_touch/demo/MainActivity;->TAG:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/social_touch/demo/MainActivity;->running:Z

    return-void
.end method

#静态方法log()
.method public static log(I)V
    .locals 3
    .parameter "result"#表示result参数

    .prologue
    .line 42
    #v0寄存器中赋值为"MainActivity"
    const-string v0, "MainActivity"
    #创建StringBuilder对象,并将其引用赋值给v1寄存器
    new-instance v1, Ljava/lang/StringBuilder;

    #调用StringBuilder中的构造方法
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v2寄存器中赋值为ther result:
    const-string v2, "the result:"

    #{v1,v2}大括号中v1寄存器中存储的是StringBuilder对象的引用.
    #调用StringBuilder中的append(String str)方法,v2寄存器则是参数寄存器.
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #获取上一个方法的执行结果,此时v1中存储的是append()方法执行后的结果,此处之所以仍然返回v1的    #原因在与append()方法返回的就是自身的引用
    move-result-object v1

    #继续调用append方法(),p0表示第一个参数寄存器,即上面提到的result参数
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #同上
    move-result-object v1

    #调用StringBuilder对象的toString()方法
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #获取上一个方法执行结果,toString()方法返回了一个新的String对象,因此v1中此时存储了String对象的引用
    move-result-object v1

    #调用Log类中的静态方法e().因为e()是静态方法,因此{v0,v1}中的成了参数寄存器
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    #调用返回指令,此处没有返回任何值
    return-void
.end method


# virtual methods
.method public add(II)I
    .locals 1
    .parameter "x"#第一个参数
    .parameter "y"#第二个参数

    .prologue
    .line 34

    #调用add-int指令求和之后将结果赋值给v0寄存器
    add-int v0, p1, p2

    #返回v0寄存器中的值
    return v0
.end method


.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view" #参数view

    .prologue
    const/4 v3, 0x4 #v3寄存器中赋值为4

    .line 23#java源文件中的第23行
    const/4 v1, 0x5#v1寄存器中赋值为5

    #调用add()方法
    invoke-virtual {p0, v3, v1}, Lcom/social_touch/demo/MainActivity;->add(II)I

    #从v0寄存器中获取add方法的执行结果
    move-result v0

    .line 24#java源文件中的24行
    .local v0, result:I

    #v1寄存器中赋值为PrintStream对象的引用out
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #执行out对象的println()方法
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(I)V

    .line 26

    const/16 v1, 0x9#v1寄存器中赋值为9
    const/4 v2, 0x3#v2寄存器中赋值为3

    #调用sub()方法,{p0,v1,v2},p0指的是this,即当前对象,v1,v2则是参数
    invoke-virtual {p0, v1, v2}, Lcom/social_touch/demo/MainActivity;->sub(II)I
    #从v0寄存器中获取sub()方法的执行结果
    move-result v0

    .line 28
    if-le v0, v3, :cond_0#如果v0寄存器的值小于v3寄存器中的值,则跳转到cond_0处继续执行

    .line 29

    #调用静态方法log()
    invoke-static {v0}, Lcom/social_touch/demo/MainActivity;->log(I)V

    .line 31
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState" #参数savedInstancestate

    .prologue
    .line 17

    #调用父类方法onCreate()
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18

    const v0, 0x7f04001a#v0寄存器赋值为0x7f04001a

    #调用方法setContentView()
    invoke-virtual {p0, v0}, Lcom/social_touch/demo/MainActivity;->setContentView(I)V

    .line 19
    return-void
.end method

#declared-synchronized表示该方法是同步方法
.method public declared-synchronized sub(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 38

    monitor-enter p0#为该方法添加锁对象p0
     add-int v0, p1, p2
    #释放锁对象
    monitor-exit p0

    return v0
.end method