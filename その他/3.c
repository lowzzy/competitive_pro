#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include"Libft/includes/libft.h"

int main()
{
    int n,i,cnt=0;
    char str[1024];
    char **ret;
    int num[256];
    int len;

    scanf("%d",&n);
    printf("n : %d\n",n);
    str = (char *)malloc(n*9);
    scanf("%s",str);

    ret = ft_split(str,' ');
    while(n)
    {
        num[i] = atoi(ret[i]);
        i++;
    }
    i = 0;
    while(1)
    {
        while(i < n)
        {
            num[i] /= 2;
            if (num[i] % 2 != 0)
                return printf("%d",cnt);
        }
        cnt++;
    }

    return 0;
}
