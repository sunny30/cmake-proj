#include<stdio.h>

#define generic_dot_product(T) \
T dot_product_##T(T val1[], T val2[], int len){ \
    T result = val1[0] * val2[0]; \
    int start = 0 ; \
    for(int i=1;i<len; i++) { \
         result = result + val1[i]* val2[i] ; \   
    } \
    return result ; \
}


generic_dot_product(int) ;
generic_dot_product(double) ;

int main(){
    int a[] = {1,2,4} ;
    int b[] = {2,4,8} ;

    double ad[] = {1.2,2.4,3.6} ;
    double bd[] = {2.4,4.8,7.2} ;
    int res = dot_product_int(a,b, 3) ;

    double resd = dot_product_double(ad,bd, 3) ;
    printf("%d\n", res) ;

    printf("%llf\n", resd) ;
}