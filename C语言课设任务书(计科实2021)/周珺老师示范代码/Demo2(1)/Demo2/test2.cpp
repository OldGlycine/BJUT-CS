#include <graphics.h>
#include <conio.h>
#include <easyx.h>
#include <stdio.h>

#define WIDTH 640
#define HEIGHT 480

typedef struct {
	char name[20];
	int score;
}USER;

void init(USER& user);

int main()
{
	USER user;

	user.score = 0;
	init(user);   //初始化

	printf("%s", user.name);    //在字符界面输出，测试用
	getchar();


	closegraph();
	return 0;
}

void init(USER& user)
{
	initgraph(WIDTH, HEIGHT, SHOWCONSOLE);  //加上SHOWCONSOLE，就可以用printf了
	setbkcolor(WHITE);         //背景色
	cleardevice();             //清屏
	setcolor(RED);             //线颜色
	setlinestyle(PS_SOLID, 2);
	rectangle(1, 1, WIDTH - 2, HEIGHT - 2);  //最外侧线

	InputBox(user.name, 20, "请输入用户名：");
	outtextxy(WIDTH / 2 + 10, HEIGHT / 3 + 10, "Name: ");
	outtextxy(WIDTH / 2 + 60, HEIGHT / 3 + 10, user.name);

	char buf[10];
	sprintf_s(buf, "%d", user.score);   //user.score为整型，outtextxy要求输出的是 char[]
	outtextxy(WIDTH / 2 + 100, HEIGHT / 3 + 10, buf);
}
