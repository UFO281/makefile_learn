# 用于生成静态库文件,自动的将SRC目录下的所有.c文件编译成.o文件，然后将.o文件打包成.a文件
# 生成的.a文件放到bin目录下

# 获取当前目录下所有的 .c 文件，赋值给变量 SRCS
SRCS = $(wildcard src/*.c)

# 将 src/目录下 所有.c 文件替换为 .o 文件放到 build 目录下
OBJO = $(SRCS:src/%.c= build/%.o)

# 将 src/目录下 所有.c 文件替换为 lib.a 文件放到 build 目录下
OBJA = $(SRCS:src/%.c= bin/lib%.a)

CFG_INC_DIR = -I inc/

$(OBJA) : $(OBJO)

	@echo "[1]$@ $< \n"
	@echo "OBJO: $(OBJO) \n"
	ar rcs $@ $<

$(OBJO) : $(SRCS)
	@echo "[2] '$@'= $@ $< \n"
	@echo "[3] OBJA=$(OBJA)\n"
	@echo "[4] SRCS=$(SRCS)\n"
	gcc -c -o $@ $< $(CFG_INC_DIR)

clear:
	rm -rf $(OBJO) $(OBJA)