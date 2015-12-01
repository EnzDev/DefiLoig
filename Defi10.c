#include <stdio.h>
#include <math.h>

int main() {
    int in;
    scanf("%d", &in);
    while (!feof(stdin)){
      if (in<0) {printf("32\n");}else if(in==0){printf("0\n");}
      else{
        printf("%d\n",(int)((long double)(log2l(in)) + 1));
      }
      scanf("%d", &in);
    }

  return 0;
}
