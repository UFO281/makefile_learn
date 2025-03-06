# 目标：test0
# 依赖项：main.o, add.o, mat.o
# 说明：链接所有目标文件生成可执行文件 test0
test0 : build/main.o build/add.o build/mat.o
	gcc -o test0 build/mat.o build/main.o build/add.o

# 目标：main.o
# 依赖项：app/main.c
# 说明：编译 app/main.c 生成目标文件 build/main.o
build/main.o : app/main.c
	gcc -c -o build/main.o app/main.c -I inc 

# 目标：add.o
# 依赖项：src/add.c
# 说明：编译 src/add.c 生成目标文件 build/add.o
build/add.o : src/add.c
	gcc -c -o build/add.o src/add.c -I inc

# 目标：mat.o
# 依赖项：src/mat.c
# 说明：编译 src/mat.c 生成目标文件 build/mat.o
build/mat.o : src/mat.c
	gcc -c -o build/mat.o src/mat.c -I inc 

# 目标：clean
# 说明：清理生成的目标文件和可执行文件
clean:
	rm -rf build/*.o test0