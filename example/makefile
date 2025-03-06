# 可执行文件名
target = test0

# 源代码目录
SRC_DIRS = app src

# 包含目录
INC_DIRS = inc

# 自动发现所有的 .c 文件
# 使用 wildcard 函数查找目录中的所有 .c 文件
# 例如：app/main.c src/add.c src/main.c 省去手动操作
obj = $(wildcard $(dir)/*.c)

# 自动发现所有的 .c 文件并推导出对应的 .o 文件
# 使用 foreach 函数遍历 SRC_DIRS 中的每个目录，使用 wildcard 函数查找目录中的所有 .c 文件
SRC_FILES = $(foreach dir, $(SRC_DIRS), $(obj))

# 将源文件名转换为目标文件名
# 将SRC_DIRS 目录下 app src的.c 名字转换为.o 名字,并在build目录下创建对应的目录
# 例如：app/main.c -> build/app/main.o, src/add.c -> build/src/add.o
# 使用模式替换将每个 .c 文件名转换为对应的 build 目录下的 .o 文件名
# 例如：app/main.c -> build/app/main.o, src/add.c -> build/src/add.o
OBJ_FILES = $(SRC_FILES:%.c=build/%.o)

# 编译器和编译标志
CC = gcc
CFLAGS = -Wall -O3 -g -I $(INC_DIRS)

# 默认目标
# 默认目标是生成可执行文件 $(target)
all: $(target)

# 目标：test0
# 依赖项：所有生成的目标文件
# 说明：将所有目标文件链接成可执行文件 test0
$(target): $(OBJ_FILES)
	@echo "Linking $(target) from $(OBJ_FILES)"
	$(CC) -o $@ $^

# 创建 build 目录
# 使用 shell 函数创建 build 目录及其子目录（如果不存在）
$(shell mkdir -p build/app build/src)

# 目标：build/%.o
# 依赖项：对应的 .c 文件
# 说明：自动从源代码目录编译 .c 文件为 .o 文件
build/%.o: %.c
	@echo "Compiling $< to $@"
	$(CC) -c -o $@ $< $(CFLAGS)

# 目标：clean
# 说明：删除所有生成的目标文件和可执行文件 test0
clean:
	@echo "Cleaning up..."
	rm -rf build $(target)

# .PHONY 表示 clean 目标不对应实际文件，避免与文件名冲突
.PHONY: all clean