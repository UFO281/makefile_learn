# 导入顶层 配置文件config.mk, 进而可以使用其定义的变量，例如BUILD_DIR，CFLAGS
include ../config.mk


# 获取 SRC_DIR 目录下所有的 .c 文件，赋值给变量 SRCS
SRCS = $(wildcard $(SRC_DIR)/*.c)

# 将 src 目录下的所有 .c 文件替换为 build 目录下的 .o 文件
OBJS = $(SRCS:$(SRC_DIR)/%.c=$(BUILD_DIR)/%.o)

# 调试信息
# $(info 【1】SRC_DIR: $(SRC_DIR))
# $(info 【2】SRCS: $(SRCS))
# $(info 【3】OBJS: $(OBJS))

# 默认目标：编译所有的 .c 文件为 .o 文件
all: $(OBJS)

# 如果目录不存在就创建他
# $(shell mkdir -p $(BUILD_DIR))

# 编译规则：将 .c 文件编译为 build 目录下的 .o 文件
# $(BUILD_DIR)/%.o，BUILD_DIR变量下所有的.o文件,
# $(SRC_DIR)/%.c，SRC_DIR变量目录下下所有的.c文件
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) -c -o $@ $< $(CFLAGS)

# 清理生成的文件
clean:
	rm -f $(OBJS)
