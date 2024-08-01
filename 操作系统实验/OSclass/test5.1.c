#include <stdio.h>
#include <unistd.h>
#include <signal.h>
#include <stdlib.h>

// one handler for both signals
static void sig_user(int);


int main(void){
	int pid;
	if((pid = fork()) == 0){
		// 子程序1
		printf("USR1, pid is %d\n", getpid());
		if(signal(SIGUSR1, sig_user) == SIG_ERR){
			printf("can't catch SIGUSR1\n");
			exit(1);
		}
		for(;;)
			pause();
	}
	else{
		// 父进程
		printf("USR, pid is %d\n", getpid());
		if(signal(SIGINT, sig_user) == SIG_ERR){
			printf("can't catch SIGINT\n");
			exit(1);
		}
		for(;;)
			pause();
	}
}

static void sig_user(int signo){
	int pid = getpid();
	if(signo == SIGUSR1)
		printf("received SIGUSR1 %d, pid is %d\n", signo, pid);
	else if(signo == SIGUSR2)
		printf("received SIGUSR2 %d, pid is %d\n", signo, pid);
	else{
		printf("received signal %d, pid is %d\n", signo, pid);
		exit(1);
	}

}
