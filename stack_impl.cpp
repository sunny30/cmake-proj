#include "spop.h"

void push(int val){
    if(sp<100){
        c_stack[++sp] = val ;
    }
}

int top(){
    return c_stack[sp] ;
}

int pop(){
    if(sp>=0){
        int r_value = c_stack[sp--] ;
        return r_value ;
    }else{
        sp=0 ;
        return -9999 ;
    }
}