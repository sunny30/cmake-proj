#include<iostream>
#include<stdio.h>
#include"stack_impl.cpp"
//#include"spop.h"

using namespace std ;

 int **memalloc2d(int row, int col) {
    int **arr ;
    arr = (int **)calloc(row, sizeof(int *)) ;
    for(int i=0;i<row;i++){
        arr[i] = (int *)calloc(col, sizeof(int)) ;
    }
    return arr ;
 }

int main(){
    cout<<"first cmake proj1"<<endl ;
    SPOP p = POP ;
   
    cout<<p<<endl ;
    push(3) ;
    cout<<top()<<endl ;
    int **arr2d = memalloc2d(2,3) ;
    cout<<arr2d[1][1]<<endl ; 
    char s[10] ;
    scanf("%s",s) ;
    printf("%s", s) ;
}