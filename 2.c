#include<stdio.h>
#include<stdlib.h>

int main()
{
    char *str;
    char *tmp;
    int ret=0;

    str = (char*)malloc(4);
    scanf("%s",str);
    tmp = str;
    while(*str != '\0')
    {
        if(*str == '1')
            ret++;
        str++;
    }
    printf("%d",ret);
    free(tmp);

    return 0;
}
