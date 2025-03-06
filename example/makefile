# 可执行文件名
target = test0

# 源代码目录
SRC_DIRS = app src

# 包含目录
INC_DIRS = inc

# 自动发现所有的 .c 文件
# 使用 wildcard 函数查找目录中的所有 .c 文件
obj = $(wildcard $(dir)/*.c)

# 自动发现所有的 .c 文件并推导出对应的 .o 文件
# 使用 foreach 函数遍历 SRC_DIRS 中的每个目录，使用 wildcard 函数查找目录中的所有 .c 文件
SRC_FILES = $(foreach dir, $(SRC_DIRS), $(wildcard $(dir)/*.c))

# 将源文件名转换为目标文件名
# 使用 patsubst 函数将每个 .c 文件名转换为对应的 build 目录下的 .o 文件名
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
	rm -rf build/*.o $(target)

# .PHONY 表示 clean 目标不对应实际文件，避免与文件名冲突
.PHONY: all clean