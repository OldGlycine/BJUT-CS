#include<stdio.h>
#include<stdlib.h>
#include<sys/types.h>
#include<unistd.h>
#include<sys/wait.h>
#include<string.h>

#define MSG 256

char *Msg_1 = "Child 1 is sending a message!";
char *Msg_2 = "Child 2 is sending a message!";

int main(void){
	char buffer[MSG];
	int p[2], pid1, pid2;
	
	// 创建pipe
	if(pipe(p) < 0){
		perror("pipe failed to open!\n");
		exit(-1);
	}

	// 创建子进程1
	pid1 = fork();
	if(pid1 < 0){
		printf("Child process 1 failed to create!\n");
		exit(-1);
	}
	else if(pid1 == 0){
		// 子进程1
		close(p[0]); // 关闭读权限
		// 写入
		int w = write(p[1], Msg_1, strlen(Msg_1));
		if(w < 0){
			printf("Child process 1 failed to write into pipe!\n");
			exit(-1);
		}
		printf("Child process 1 is writing...\n");
		// 关闭写入
		close(p[1]);
	}
	// 创建子进程2
	else{
		// 先等待子进程1结束
		wait(0);// 如果这里不等待，那么可能会出现输出两次"child1..child2..."的情况，注意是可能而不是必定
		pid2 = fork();
		if(pid2 < 0){
			printf("Child process 2 failed to create!\n");
			exit(-1);
		}
		// 子进程2
		else if(pid2 == 0){
			close(p[0]);
			int w = write(p[1], Msg_2, strlen(Msg_2));
			if(w < 0){
				printf("Child process 2 failed to write into pipe!\n");
				exit(-1);
			}
			printf("Child process 2 is writing...\n");
			close(p[1]);
		}	
		// 父进程
		else{
			// 这里添加wait会导致输出两次"child1... child2..."，注意是必定而不是可能
			// wait(0);
			close(p[1]); // 关闭写入
			for(int x = 0; x < 2; x++){
			
			//	printf("Father process reading once...\n");//这里也会导致错误
				int r = read(p[0], buffer, 256);
				wait(0);
				printf("Father process reading once...\n");//在有前边wait的情况下，这里就能print且不出错
				if(r < 0){
					printf("Father process failed to read from pipe!\n");
					exit(-1);
				}
				else
					printf("%s\n", buffer);
			}
			return 0;
		}
	}
		
}
