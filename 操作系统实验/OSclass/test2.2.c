#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/types.h>
int main(void){
	pid_t pid1, pid2;
	int status;
	pid1 = fork();
	
	// 子进程1
	if (!pid1){
		printf("child process b\n");
	}
	else if (pid1 > 0){
		// 父进程
		pid2 = fork();

		// 子进程2
		if (pid2 == 0){
			printf("child process c\n");
		}
		else if (pid2 > 0){
			// 父进程
			waitpid(pid2, &status, 0);
			waitpid(pid1, &status, 0);
			printf("father process a\n");
		}
		else{
			printf("fork2 error!\n");
		}
	}
	else{
		printf("fork1 error!\n");
		return 1;
	}
	return 0;
}
