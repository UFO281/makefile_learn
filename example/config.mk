# 定义编译器
CC = gcc

# 项目路径
PRO_DIR := /home/wls/git/makefile_learn_note/example

# 源代码目录
SRC_DIR = $(PRO_DIR)/Driver/src

# 头文件包含目录
INC_DIR := $(PRO_DIR)/Driver/inc

# 编译生成目标文件目录
BUILD_DIR := $(PRO_DIR)/build

# 定义编译选项
CFLAGS := -Wall -Wextra -O2 -I $(INC_DIR) -fdiagnostics-color=always -Werror

# := 赋值 只使用第一次定义的值
BIN_DIR := $(PRO_DIR)/bin


