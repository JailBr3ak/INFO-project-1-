/* vul.c */

#include<stdio.h>
#include<stdlib.h>


void main()
{
fmtstr();
}

void fmtstr()
{
char input[100];
int var = 0x11223344;

/* print out information for experiment  purpose */
 printf("Target address: %x\n", (unsigned) &var);
 printf("Data at target address: 0x%x (before)\n", var);

/* getting a string from user */
printf("Please enter a string: ");
fgets(input, sizeof(input), stdin);

/* Vulnerable place */
printf(input);
printf("Data at target address: 0x%x (after)\n", var);

}