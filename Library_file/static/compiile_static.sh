# 生成静态库文件

#编译 src/Base_conversion.c 生成 build/Base_conversion.o -I inc/是指定头文件路径
gcc -c -o build/Base_conversion.o src/Base_conversion.c -I inc/

#ar rcs bin/lib_base_conver.a build/Base_conversion.o 生成静态库文件
# rcs 参数的意思是 r:插入新文件到库文件；c:创建库文件；s:创建索引
# ar rcs 生成的静态库文件是一个二进制文件，不能直接查看内容
# build/Base_conversion.o 是要打包的目标文件，bin/lib_base_conver.a 是生成的静态库文件
# .o可以使一个或多个生成一个.a，也可以是多个.o生成一个.a
ar rcs bin/lib_base_conver.a build/Base_conversion.o 

