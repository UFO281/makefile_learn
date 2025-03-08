include ./config.mk

# 默认目标：调用底层目录的 makefile并链接成可执行文件
all: app driver link

# 递归调用 app 目录的 makefile
app:
	$(MAKE) -C app
	@echo "\n【11111】OB: $(OBJ)\n"

# 递归调用 Driver 目录的 makefile
driver:
	$(MAKE) -C Driver
	@echo "\n【22222】OB: $(OBJ)\n"

# 调试信息
$(info 【33333】OB: $(OBJ))


# 链接所有的 .o 文件生成可执行文件
link:
# 获取 build 目录下所有的 .o 文件
	$(eval OBJ := $(wildcard $(BUILD_DIR)/*.o))
	@echo "\n【4444】OB: $(OBJ)\n"
	$(CC) -o $(BIN_DIR)/test1 $(OBJ)

# 清理所有生成的文件
clean:
	$(MAKE) -C app clean
	$(MAKE) -C Driver clean
	rm -f $(BIN_DIR)/test1

# .PHONY 表示这些目标不对应实际文件，避免与文件名冲突
.PHONY: all app driver link clean