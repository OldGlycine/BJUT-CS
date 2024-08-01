#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <sys/ipc.h>
#include <sys/types.h>
#include <sys/shm.h>
#include <sys/wait.h>

#define LEN 1024

int main(void){
	pid_t pid_server, pid_client;
	int msgkey;

	// 创建共享存储区
	msgkey = shmget(LEN,sizeof(char)*LEN, IPC_CREAT | 0777);

	char * virtual_addr;
	// 链接存储区
	virtual_addr = shmat(msgkey, 0, 0);

	if( (pid_client = fork()) == 0){
		// 创建client
		int flag = 0;
		while(flag != 10){
			virtual_addr[flag] = flag;
			printf("(Client) sent %d\n", virtual_addr[flag]);
			++flag;
		}
		exit(1);
	}
	else{
		// 创建server
		if( (pid_server = fork()) == 0){
			int i = 0;
			while(i != 10){
				printf("(Server) received %d\n", virtual_addr[i]);
				++i;
			}
			exit(1);
		}
		else{
			wait(0);
			// 断开连接
			shmdt(virtual_addr);
			shmctl(msgkey, IPC_RMID, 0);
			exit(0);
		}
	}
	return 0;

}
