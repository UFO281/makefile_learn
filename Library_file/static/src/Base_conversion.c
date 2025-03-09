/**
 * @file Base_conversion.c
 * @author wls (ufo281@outlook.com) 
 * @brief 
 * @version 1.0
 * @date 2025-03-09
 * 
 * @copyright Copyright (c) 2025
 * 
 */
#include "Base_conversion.h"
#include <stdio.h>

/**
 * @brief Convert and print the binary representation of a decimal number
 * 
 * @param num Decimal number
 */
void printBinaryFromDecimal(int num)
{
    printf("[printBinaryFromDecimal]:Binary representation of %d: ", num);
    for (int i = sizeof(num) * 8 - 1; i >= 0; i--)
    {
        printf("%d", (num >> i) & 1);
    }
    printf("\n");
}