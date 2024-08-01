#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <sys/wait.h>

char command[256];

int main(void){
	int rtnCode; // 子进程返回数值
	int errNo;
	while(1){
		// 读取要执行的命令
		printf("提示：可执行文件前要加'/'，环境变量，系统指令直接输入即可，比如输入ls");
		printf(">");
		fgets(command, 256, stdin);
		command[strlen(command)-1] = 0; // \0的ascii码是0
		if(!strcmp(command, "exit")){
			printf("欢迎下次使用！\n");
			return 1;
		}	
		else{
			// 子进程执行
			if(fork() == 0){
				errNo = execlp(command,command, NULL, (char *)0);
				// exe函数返回，表明没有正确执行，会打印错误信息
				perror(command);
				exit(errNo);
			}
			else{
				// 父进程等待子进程结束
				wait(&rtnCode);
				printf("Child process return %d\n", rtnCode);
			}
		}
	}
	return 0;
}
