# 感谢 https://www.cnblogs.com/plokmju/p/7742759.html

# 运行
# java -jar .\smali-2.2.7.jar a -o HelloSmali.dex .\HelloSmali.smali
# nox_adb.exe push .\HelloSmali.dex /sdcard/
# nox_adb.exe shell dalvikvm -cp /sdcard/HelloSmali.dex com.zhang.smalidemo.HelloSmali

.class public Lcom/zhang/smalidemo/HelloSmali; # 定义类名: com.zhang.smalidemo.HelloSmali
.super Ljava/lang/Object; # 定义父类
.source "HelloSmali.java" # 定义对应的文件名

# 默认构造函数
.method public constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

.end method

# 主函数main
.method public static main([Ljava/lang/String;)V
    .registers 3
    
    .param p0, "args" #[Ljava/lang/String;

    .prologue
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Hello, Smali!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

