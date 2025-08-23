#include "stack_impl.cpp"
#include <arrow/api.h>
#include <arrow/io/api.h>
#include <arrow/ipc/api.h>
#include <fcntl.h>
#include <iostream>
#include <queue>
#include <stdio.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <unistd.h>
// #include"spop.h"
/// usr/local/include/arrow/

#define PAGE_SIZE 4096

using namespace std;

int **memalloc2d(int row, int col) {
  int **arr;
  arr = (int **)calloc(row, sizeof(int *));
  for (int i = 0; i < row; i++) {
    arr[i] = (int *)calloc(col, sizeof(int));
  }
  return arr;
}

void *mmap_alloc() {
  void *first_block = mmap(NULL, 4 * PAGE_SIZE, PROT_READ | PROT_WRITE,
                           MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
  return first_block;
}

char *mmap_file(char *path) {
  int fd = open(path, O_RDWR, S_IRUSR | S_IWUSR);
  struct stat path_stat;
  if (fstat(fd, &path_stat) == -1) {
    cout << "no stat available";
    return NULL;
  } else {
    cout << "here" << endl;
    cout << fd << endl;
    void *in_file_map =
        mmap(NULL, PAGE_SIZE, PROT_READ | PROT_WRITE,
                                 MAP_SHARED | MAP_FILE, fd, 0);
    cout << path_stat.st_size << endl;
    if(in_file_map == MAP_FAILED){
        cout<<"mapping failed"<<endl ;
    }

    return static_cast<char *>(in_file_map);
  }
}

int main() {
  cout << "first cmake proj1" << endl;
  SPOP p = POP;

  cout << p << endl;
  push(3);
  cout << top() << endl;
  int **arr2d = memalloc2d(2, 3);
  cout << arr2d[1][1] << endl;
  char s[10];
  shared_ptr<arrow::io::ReadableFile> infile;
  void *block = mmap_alloc();
  //cout << block << endl;

  char pp[] = "/Users/sharadsingh/Dev/cpp_proj/data/cdv_dat.txt";
  //char output[100] ; 
  char *output = mmap_file(pp);
  // cout<<output[0]<<endl ;
  printf("%s", output);
}