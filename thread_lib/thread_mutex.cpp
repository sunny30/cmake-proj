#include <pthread.h>
#include <stdio.h>

#include <iostream>

using namespace std;
#define MAX 10

// g++ ../thread_lib/thread_mutex.cpp -lpthread -o tm

pthread_mutex_t op_lock = PTHREAD_MUTEX_INITIALIZER;

typedef struct section {
  int i;
} critical_section;

typedef struct section_operation {
  int add;
  char s;
  critical_section *task;
} critical_operation;

critical_section init_section(int value) {
  critical_section s;
  s.i = value;
  return s;
}

void *perform_task(void *op) {

  pthread_mutex_lock(&op_lock);
  critical_operation *cop = (critical_operation *)(op);
  printf("before %d %d\n", cop->task->i, cop->add);
  switch (cop->s) {
  case 'a':
    cop->task->i = cop->task->i + cop->add;
    break ;
  case 's':
    cop->task->i = cop->task->i - cop->add;
    break ;
  }
  printf("after %d %d\n", cop->task->i, cop->add);
  pthread_mutex_unlock(&op_lock);

  return NULL;
}

int main() {
  critical_section s = init_section(100);
  pthread_t threads[MAX];
  critical_operation ops[MAX];
  for (int i = 0; i < MAX; i++) {

    if (i % 2) {
      ops[i].add = i;
      ops[i].s = 'a';
      ops[i].task = &s;
    } else {

      ops[i].add = i;
      ops[i].s = 's';
      ops[i].task = &s;
    }
    pthread_create(&threads[i], NULL, perform_task, &ops[i]);
  }

  void *result;

  for (int i = 0; i < MAX; i++) {
    pthread_join(threads[i], &result);
  }

  printf("%d\n", s.i);
}