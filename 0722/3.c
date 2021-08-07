#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int is_include(int *cache,int num)
{
    int i=0;
    while(i < sizeof(cache)/4)
    {
        if(cache[i] == num)
        {
            printf("include!\n");
            return 1;
        }
        i++;
    }
    printf("noooooooot include!\n");
    return 0;
}

int array_uniq(int *num,int k)
{
    int cache[256]={0};
    int i,j,ret=0;

    while(i < k)
    {
        // もしincludeじゃなかったら
        if(!is_include(cache,num[i]))
        {
            printf("not include!\n");
            cache[j] = num[i];
            j++;
        }
        i++;
    }
    return j;
}

int main()
{
    int n,k;
    int c[256]={0};
    char str[256][16];
    char strr[256];
    int i,j,ans,max=0;
    char *tmp;
    scanf("%d %d",&n,&k);
    scanf("%s",strr);
    printf("---------");

    tmp = strr;
    while(*tmp != '\0')
    {
        printf("!!!!!!!\n");
        if(*tmp == ' ')
        {
            tmp++;
            continue;
        }
        printf("!\n");
        c[i] = atoi(tmp);
        printf("c[%d] : %d\n",i,c[i]);
        i++;
    }

    printf("i : %d\n",i);


    // while(j < n - k + 1)
    // {
    //     printf("=================\n");
    //     ans = array_uniq(&c[j],k);
    //     // printf();
    //     printf("ans : %d\n",ans);
    //     if(max < ans)
    //         max = ans;
    //     j++;
    // }

    printf("%d",max);
    return 0;
}
