# 定义编译器
CC = gcc

# 项目路径
PRO_DIR = /home/wls/git/makefile_learn_note/example

# 头文件包含目录
INC_DIR = $(PRO_DIR)/Driver/inc

# 编译生成目标文件目录
BUILD_DIR = $(PRO_DIR)/build

# 定义编译选项
CFLAGS = -Wall -Wextra -O2 -I $(INC_DIR)

BIN_DIR = $(PRO_DIR)/bin


