#include<stdio.h>

int main()
{
    int a;
    int b;

    scanf("%d",&a);
    scanf("%d",&b);

    if(a*b % 2 ==0)
        printf("Even");
    else
        printf("Odd");

    return 0;
}
