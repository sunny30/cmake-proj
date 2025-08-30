#include <cstddef>
#include <iostream>
#include <pthread.h>
#include <stdio.h>

using namespace std;

typedef struct matrix_task {
  int (*data)[3];

  int r;
  int c;
} mat_task;

void *thread_task(void *param) {
  // cout<<"inside threads task"<<endl ;
  mat_task task = *(mat_task *)(param);
  // cout<<"post casting"<<endl ;
  long result = 0;

  //cout << task.r << endl;
  for (int i = 0; i < 3; i++) {
    result += task.data[task.r][i];
  }
  //printf("%ld\n", result);
  return (void *)result;
}

int main() {
  int input[3][3] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
  mat_task mat_input[3];

  mat_input[0].data = input;
  mat_input[0].r = 0;
  mat_input[1].data = input;
  mat_input[1].r = 1;
  mat_input[2].data = input;
  mat_input[2].r = 2;
  // cout << "thread getting tarted" << endl;
  pthread_t threads[3];
  for (int i = 0; i < 3; i++) {
    pthread_create(&threads[i], NULL, thread_task, &(mat_input[i]));
  }

  void *result;
  long ans = 0;
  for (int i = 0; i < 3; i++) {
    pthread_join(threads[i], &result);
    ans += (long)(result);
  }

  cout << ans << endl;
}
