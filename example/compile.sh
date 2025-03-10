#-c:把.c文件直接预处理,编译,汇编成目标文件.o

# -o build/mat.o 输出目标文件mat.o 在build目录下

# src/mat.c 依赖的源文件,
# -I inc 指定mat.c里边包含的头文件路径
gcc -c -o build/mat.o ./Driver/src/mat.c -I ./Driver/inc 

gcc -c -o build/add.o ./Driver/src/add.c -I ./Driver/inc

gcc -c -o build/main.o app/main.c -I ./Driver/inc 

# 将main.o 和其他几个.o,main函数里边调用到的 链接成可执行文件
gcc -o bin/test build/mat.o build/main.o build/add.o

# 将链接好的可执行文件，转变化成.bin文件
objcopy -O binary bin/test bin/test.bin

./bin/test
