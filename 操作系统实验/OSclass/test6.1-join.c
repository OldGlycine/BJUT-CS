#include <stdio.h>
#include <unistd.h>
#include <pthread.h>
#include <stdlib.h>

void myThread1(void){
	printf("myThread1\n");
}

void myThread2(void){
	printf("myThread2\n");
}

int main(void){
	pthread_t id1, id2;
	int i, ret;
	ret = pthread_create(&id1, NULL, (void*)myThread1, NULL);
	if(ret){
		printf("Create pthread1 err!\n");
		exit(1);
	}
	//pthread_join(id1, NULL);
	ret = pthread_create(&id2, NULL, (void*)myThread2, NULL);
	if(ret){
		printf("Create pthread2 err!\n");
		exit(1);
	}
//	printf("Main progress\n");
	pthread_join(id1, NULL);
	pthread_join(id2, NULL);
	printf("Main progress\n");
	return (0);
		
}


