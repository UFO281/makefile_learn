

gcc -c -o build/mat.o src/mat.c -I inc
gcc -c -o build/main.o app/main.c -I inc
gcc -o test build/mat.o build/main.o
./test
