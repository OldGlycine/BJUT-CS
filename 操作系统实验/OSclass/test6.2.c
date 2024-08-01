#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <stdlib.h>

void *myThread1(void *arg){
	int * num;
	num = (int*)arg;
	printf("myThread1, received parameter is %d\n", *num);
	return (void*)0;
}

void *myThread2(void * arg){
	char *ch;
	ch = (char*)arg;
	printf("myThread2, received parameter is %c\n", *ch);
	return (void*)0;
}

int main(void){
	pthread_t id1, id2;
	int ret;
	int num = 12345;
	char ch = 'g';
	int *pnum = &num;
	char* pch = &ch;
	
	ret = pthread_create(&id1, NULL, myThread1, (void*)pnum);
	if(ret){
		printf("Create pthread1 err\n");
		exit(1);
	}
	pthread_join(id1, NULL);
	ret = pthread_create(&id2, NULL, myThread2, (void*)pch);
	if(ret){
		printf("Create pthread2 err\n");
		exit(1);
	}
	pthread_join(id2, NULL);
	printf("Main progress\n");
	//pthread_join(id2, NULL);
	return (0);

}

