# 目标：test0
# 依赖项：build/main.o, build/add.o, build/mat.o
# 说明：链接所有目标文件生成可执行文件 test0
test0 : build/main.o build/add.o build/mat.o
    # 使用 gcc 将所有目标文件链接成可执行文件 test0
	gcc -o test0 build/mat.o build/main.o build/add.o

# 目标：build/main.o
# 依赖项：app/main.c
# 说明：编译 app/main.c 生成目标文件 build/main.o
build/%.o : app/%.c
    # 使用 gcc 编译 app 目录下的 .c 文件生成 .o 文件，
	gcc -c -o $@ $< -I inc 
# $@是目标类似于build/main.o，$<是依赖项类似于app/main.c
# -I inc 表示包含 inc 目录中的头文件

# 目标：build/add.o 和 build/mat.o，build/%.o build目录下所有.o文件
# 依赖项：src/add.c 和 src/mat.c ，src/%.c：指的是src下所有.c文件
# 说明：编译 src 目录下的 .c 文件生成目标文件 build/add.o 和 build/mat.o
build/%.o : src/%.c
    # 使用 gcc 编译 src 目录下的 .c 文件生成 .o 文件，-I inc 表示包含 inc 目录中的头文件
	gcc -c -o $@ $< -I inc 

# 目标：clean
# 说明：清理生成的目标文件和可执行文件
clean:
    # 删除 build 目录下的所有 .o 文件和可执行文件 test0
	rm -rf build/*.o test0