#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/msg.h>
#include <sys/wait.h>

#define LEN 1024

// 定义消息结构体
struct Smsg{
	int type;
	char text[LEN];
}msg;

int msgkey;

int main(void){
	pid_t pid_client,pid_server;
	// 创建消息队列
	msgkey = msgget(75, 0777|IPC_CREAT);
	// 0777的含义
	// 从左往右数：第一个0代表普通文件，目录d
	// 第二位：当前用户的权限：6转换为二进制是110，从左到右分别代表了
		// 可读，可写，可执行
	// 第三位：group组用户权限，同上
	// 第四位：其他用户权限，同上
	
	
	if( (pid_client=fork()) == 0){
		// client创建成功
		int flag = 1;
		while(flag < 11){
			msg.type = 11 - flag;
			msgsnd(msgkey, &msg, LEN, 0);
			printf("(Client) send msgtype:%d flag=%d\n", msg.type, flag);
			++flag;
			//msgsnd(msgkey, &msg, LEN, 0);
		}
		exit(0);
	}else{
		// server创建
		
		if( (pid_server = fork()) == 0){
			// 创建成功
			int i = 10;
			while(i != 1){
				
				msgrcv(msgkey, &msg, LEN, 0, 0);
				printf("(Server) received msgtype:%d\n", msg.type);
				
				i = msg.type;
				
			}
			// 释放消息队列
			msgctl(msgkey, IPC_RMID, 0);
			exit(0);
		}
		else{	
			exit(0);
		}
	}
	//return 0;
}
