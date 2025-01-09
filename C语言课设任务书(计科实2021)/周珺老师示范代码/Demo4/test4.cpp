#include <graphics.h>
#include <conio.h>
#include <easyx.h>
#include <stdio.h>

#define WIDTH 640
#define HEIGHT 480

#define GAME_HEIGHT (HEIGHT*5/6)

typedef struct {
	char name[20];
	int score;
}USER;

typedef struct fish
{
	int x, y;
	struct fish* next;
}FISH;

typedef struct duck
{
	int x, y;
}DUCK;

void init(USER& user);
void displayButton();
FISH *creatFish();
int checkButton(int mouseX, int mouseY);
void displayFishAndDuck(FISH *h,DUCK d);
void moveFish(FISH* h);
void gameOver();

IMAGE back, p, p1, p2, d1, d2;

int main()
{
	int mouseX;	        //鼠标位置坐标X
	int mouseY;
	ExMessage mmsg;	    //鼠标消息变量

	USER user;
	
	FISH *h;
	DUCK d = { 4,270 };

	int flag = -1;

	loadimage(&back, "image\\background.jpg");
	loadimage(&p1, "image\\fish01.jpg");
	loadimage(&p2, "image\\fish02.jpg");
	loadimage(&d1, "image\\duck1.jpg");
	loadimage(&d2, "image\\duck2.jpg");

	init(user);   //初始化	
	h = creatFish();
	getimage(&p, 0, 0, WIDTH - 1, GAME_HEIGHT);//从当前背景图获取图像

	while (1) {
		//处理鼠标、键盘消息
		while (peekmessage(&mmsg)) { 
			switch (mmsg.message) {
			case WM_LBUTTONDOWN:
				mouseX = mmsg.x;
				mouseY = mmsg.y;    //取出鼠标x,y值

				//鼠标在按钮区
				if (mouseX > 0 && mouseX <= WIDTH / 2 && mouseY > GAME_HEIGHT && mouseY <= HEIGHT) {
					flag = checkButton(mouseX, mouseY);
				}
				break;
			case WM_MOUSEMOVE:
				if (flag == 1){ //运行状态
					mouseX = mmsg.x;
				    mouseY = mmsg.y;    
					printf("%d %d\n", mouseX, mouseY);//打印坐标调试用
					//鼠标在游戏区
				    if (mouseX > 0 && mouseX < 500  && mouseY > 0 && mouseY < 280) {
						d.x = mouseX;
						d.y = mouseY;
					}
				}

			case WM_KEYDOWN:
				if (mmsg.vkcode == VK_SPACE && flag == 1) {//按下空格键
					printf("SPACE\n");
					//调用处理的函数
				}
			}
		}
		if (flag == 1) {
			displayFishAndDuck(h,d);
			moveFish(h);
			Sleep(15);	//暂停	
		}
		else if (flag == 2)
			gameOver();
	}
	return 0;
}
void init(USER& user)
{
	initgraph(WIDTH, HEIGHT,SHOWCONSOLE);

	//cleardevice();
	putimage(0, 0, &back);

	setcolor(RED);             //线颜色
	setlinestyle(PS_SOLID, 2);
	line(0, GAME_HEIGHT, WIDTH, GAME_HEIGHT);

	line(WIDTH / 2, GAME_HEIGHT, WIDTH / 2, HEIGHT);

	displayButton();

	InputBox(user.name, 20, "请输入用户名：");
	outtextxy(WIDTH / 2 + 10, GAME_HEIGHT + 10, "Name: ");
	outtextxy(WIDTH / 2 + 60, GAME_HEIGHT + 10, user.name);
}

void displayButton()
{
	setfillcolor(RGB(255, 255, 100));

	setbkmode(TRANSPARENT);

	fillrectangle(10, GAME_HEIGHT + 10, 70, GAME_HEIGHT + 50);
	outtextxy(15, GAME_HEIGHT + 20, "开始");

	fillrectangle(100, GAME_HEIGHT + 10, 150, GAME_HEIGHT + 50);
	outtextxy(110, GAME_HEIGHT + 20, "退出");
}

int checkButton(int mouseX, int mouseY)
{
	if (mouseX >= 10 && mouseX <= 70 && mouseY >= 410 && mouseY <= 450)
		return 1;
	else if (mouseX >= 100 && mouseX <= 150 && mouseY >= 410 && mouseY <= 450)
		return 2;
	else
		return -1;  //没选中	
}

FISH* creatFish()
{
	//自己写循环，示例是2个结点，所以没写循环
	FISH* h,*p;
	p = (FISH*)malloc(sizeof(FISH));
	p->x = 600;
	p->y = 150;
	p->next = NULL;

	h = (FISH*)malloc(sizeof(FISH));
	h->x = 600;
	h->y = 80;
	h->next = p;
	
	return h;
}

void displayFishAndDuck(FISH *h,DUCK d)
{
	BeginBatchDraw();
	putimage(0, 0, &p);  //把原图画上
	while (h != NULL) {
		putimage(h->x, h->y, &p2, SRCAND);
		putimage(h->x, h->y, &p1, SRCINVERT);
		h = h->next;
	}
	putimage(d.x, d.y, &d2, SRCAND);
	putimage(d.x, d.y, &d1, SRCINVERT);

	EndBatchDraw();
}

void moveFish(FISH *h)
{
	while (h != NULL) {
		h->x -= 5;
		if (h->x <= 0)
			h->x = WIDTH - 10;
		h = h->next;
	}	
}

void gameOver()
{
	exit(0);
}
