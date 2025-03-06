# 可执行文件名
target = test0

# 目标文件列表
relyon = build/main.o \
         build/add.o \
         build/mat.o

# 目标：test0
# 依赖项：build/main.o, build/add.o, build/mat.o
# 说明：将目标文件链接成可执行文件 test0
$(target): $(relyon)
# 使用 gcc 链接所有目标文件生成可执行文件 test0
	gcc -o $(target) $(relyon) -Wall -O3 -g

# 目标：build/main.o
# 依赖项：app/main.c
# 说明：编译 app/main.c 文件，生成目标文件 build/main.o
build/%.o: app/%.c
# 使用 gcc 编译 app 目录下的 .c 文件生成 .o 文件
# -I inc 表示包含 inc 目录下的头文件
	gcc -c -o $@ $< -I inc

# 目标：build/add.o 和 build/mat.o
# 依赖项：src/add.c 和 src/mat.c
# 说明：编译 src 目录下的 .c 文件，生成目标文件 build/add.o 和 build/mat.o
build/%.o: src/%.c
# 使用 gcc 编译 src 目录下的 .c 文件生成 .o 文件
# -I inc 表示包含 inc 目录下的头文件
	gcc -c -o $@ $< -I inc

# 目标：clean
# 说明：删除生成的目标文件和可执行文件 test0
clean:
# 删除 build 目录下的所有 .o 文件和可执行文件 test0
	rm -rf build/*.o $(target)

# .PHONY 表示 clean 目标不对应实际文件，避免与文件名冲突
.PHONY: clean
