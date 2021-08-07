#include<stdio.h>
#include<string.h>

void swap(char **a,char **b)
{
    char *t;
    t = *a;
    *a = *b;
    *b = t;
}

char *str_reverse(char *str)
{
    char tmp;
    int last,i;

    i = 0;
    last = strlen(str) - 1;
    while(i <= last / 2)
    {
        printf("%c %c\n",*(str + i),*(str + last - i));
        swap(&str[i],&str[last - i]);
        printf("%c %c\n",*(str + i),*(str + last - i));
        i++;
    }
    return str;
}

// int main()
// {
//     char item[4][8] = {"dream","dreamer","erase","eraser"};
//     int i,check,s,l,last;
//     char str[256];

//     scanf("%s",str);
//     printf("str : %s\n",str);
//     i = 0;
//     while(i < 4)
//     {
//         printf("%s\n",item[i]);
//         str_reverse(item[i]);
//         i++;
//     }
//     str_reverse(str);
//     check = -1;
//     s = 0;
//     while (1)
//     {
//         i = 0;
//         while (i < 4)
//         {
//             l = strlen(item[i]);
//             printf("l : %d\n",l);
//             if(strncmp(item[i],&str[s],l) == 0)
//             {
//                 s += l;
//                 if(str[s] == '\0')
//                     check = 0;
//                 else
//                     check = 1;
//                 break;
//             }
//             i++;
//         }
//         if(check == -1)
//             return printf("NO\n");
//         if(check == 0)
//             return printf("YES\n");
//         if(check == 1)
//             printf("Continue\n");
//     }
//     return 0;
// }

int main()
{
    char *a="abcdef";
    printf("%s\n",str_reverse(a));
    return 0;
}
