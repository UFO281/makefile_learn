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