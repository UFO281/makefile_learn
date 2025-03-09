/**
 * @file main.c
 * @author wls (ufo281@outlook.com) 
 * @brief makefile 教程
 * @version 1.0
 * @date 2025-03-06
 * 
 * @copyright Copyright (c) 2025
 * 
 */
#include <stdio.h>
#include <stdlib.h>
#include "mat.h"
#include "add.h"
#include "mul.h"
#include "sub.h"



/**
 * @brief 
 * 
 * @return int 
 */
int main(void) 
{
    printf("[main]:Hello, World!\n");

    printf("[main]:8+3=%d!\n",add(8,3));
    // printf("[main]:3*7=%d!\n",mul(7,3));
    // printf("[main]: 66 7-1=%d!\n",sub(7,1));




    int decimalNumber = 8;
    // printBinaryFromDecimal(decimalNumber);


    return 0;
}