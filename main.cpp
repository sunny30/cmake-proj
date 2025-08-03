#include<iostream>
#include<stdio.h>
#include"stack_impl.cpp"
//#include"spop.h"

using namespace std ;

int main(){
    cout<<"first cmake proj1"<<endl ;
    SPOP p = POP ;
   
    cout<<p<<endl ;
    push(3) ;
    cout<<top()<<endl ;
}