#include <stdio.h>
#include <pthread.h>
#include <semaphore.h>
#include <stdlib.h>

#define P sem_wait
#define V sem_post
#define MAXLEN 10

// data1存储100
// data2存储60

int buffer[MAXLEN];

int push_flag = -1; // 模拟缓冲区压栈

// 信号量
sem_t b; // 缓存区访问，初始为MAXLEN
sem_t mutex; // 互斥访问
sem_t r; // 不访问空buffer

void * thread1(void* arg){
	FILE*fp1;
	fp1 = (FILE*)arg;
	int num1;
	while(fscanf(fp1, "%d", &num1) != EOF){
		P(&b); // 先申请访问buffer
		P(&mutex); // 再申请访问
		++push_flag;
		buffer[push_flag] = num1;
		printf("Thread1 put %d in buffer[%d]\n", num1, push_flag);
		V(&mutex);
		V(&r); // 确保不读取空buffer
	}
	return (void*)0;
}

void * thread2(void*arg){
	int num2;
	FILE* fp2;
	fp2 = (FILE*)arg;
	while(fscanf(fp2, "%d", &num2) != EOF){
		P(&b);
		P(&mutex);
		++push_flag;
		buffer[push_flag] = num2;
		printf("Thread2 put %d in buffer[%d]\n", num2, push_flag);
		V(&mutex);
		V(&r);
	}
	return (void*)0;
}

void * thread3(){
	int t3num[2]; // thread3存放两个操作数
	int res = 0;
	int count3 = 0;
	while(1){
		P(&r);
		P(&mutex);
		printf("----Thread3 is working 'add' function now----\n");
		t3num[count3] = buffer[push_flag];
		printf("Thread3 get %d from buffer[%d]\n", buffer[push_flag], push_flag);
		push_flag--;
		count3++;
		if(count3 == 2){
			push_flag += 2;
			res = t3num[0] + t3num[1];
			printf("----Thread3 changed buffer[%d] from %d to %d----\n", push_flag, buffer[push_flag], res);
			buffer[push_flag] = res;
		}
		V(&mutex);
		V(&r);
		if(count3==2)	break;
	}
}

void * thread4(){
	int t4num; // thread4存放一个操作数
	int res = 0;
	while(1){
		P(&r);
		P(&b);
		P(&mutex);
		printf("----Thread4 is working 'multiply' function now----\n");
		t4num = buffer[push_flag];
		printf("Thread4 get %d from buffer[%d]\n", buffer[push_flag], push_flag);
		res = t4num * 2;
		push_flag++;
		printf("----Thread4 push %d into buffer[%d]----\n", res, push_flag);
		V(&mutex);
		V(&r);
		break;
	}
}

int main(void){
	int ret;
	pthread_t id1, id2, id3, id4;
	sem_init(&b, 0, 1);
	sem_init(&mutex, 0, 1);
	sem_init(&r, 0, 0);
	FILE* fp1 = fopen("data1", "r");
        FILE* fp2 = fopen("data2", "r");
	if(fp1 == NULL){
		printf("Failed to read 'data1'!\n");
		exit(1);
	}	
	if(fp2 == NULL){
		printf("Failed to read 'data2'!\n");
		exit(1);
	}
	ret = pthread_create(&id1, NULL, thread1, fp1);
	if(ret){
		printf("Failed to create thread1!\n");
		exit(1);
	}
	pthread_join(id1, NULL);

	ret = pthread_create(&id2, NULL, thread2, fp2);
	if(ret){
		printf("Failed to create thread2!\n");
		exit(1);
	}
	pthread_join(id2, NULL);

	ret = pthread_create(&id3, NULL, thread3, NULL);
	if(ret){
		printf("Failed to create thread3!\n");
		exit(1);
	}
	pthread_join(id3, NULL);

	ret = pthread_create(&id4, NULL, thread4, NULL);
	if(ret){
		printf("Failed to create thread4!\n");
		exit(1);
	}
	pthread_join(id4, NULL);
	fclose(fp1);
	fclose(fp2);
	return 0;
}
