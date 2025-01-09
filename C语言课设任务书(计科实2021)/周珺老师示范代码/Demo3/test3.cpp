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
}FISH;

void init(USER& user);
void displayButton();
int checkButton(int mouseX, int mouseY);
void displayFish(FISH f);
void moveFish(FISH& f,int k);
void gameOver();

IMAGE back,p,p1,p2;

int main()
{
	int mouseX;	        //鼠标位置坐标X
	int mouseY;
	ExMessage mmsg;	    //鼠标消息变量

	USER user;
	
	FISH f = { 8,50 };

	int flag = -1;
	int direction = 1;

	loadimage(&back, "image\\background.jpg");
	loadimage(&p1, "image\\fish02.jpg");
	loadimage(&p2, "image\\fish01.jpg");

	init(user);   //初始化	

	getimage(&p, 0, 30, WIDTH - 1, 80);//从当前背景图获取图像

	while (1) {
		//处理鼠标、键盘消息
		if (peekmessage(&mmsg)) {
			switch (mmsg.message) {
			case WM_LBUTTONDOWN:
				mouseX = mmsg.x;
				mouseY = mmsg.y;    //取出鼠标x,y值

				//鼠标在按钮区
				if (mouseX > 0 && mouseX <= WIDTH / 2 && mouseY > GAME_HEIGHT && mouseY <= HEIGHT) {
					flag = checkButton(mouseX, mouseY);
				}
			case WM_KEYDOWN:
				if (mmsg.vkcode == VK_LEFT && flag == 1) {//按左箭头
					direction = -1;
				}
				if (mmsg.vkcode == VK_RIGHT && flag == 1) {//按右箭头
					direction = 1;
				}
			}
		}
		if (flag == 1) {
			displayFish(f);
			moveFish(f,direction);
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

void displayFish(FISH f)
{
	BeginBatchDraw();
	clearrectangle(0, 30, WIDTH - 1, 80);   //清空一个长方形区域，画dog的
	putimage(0, 30, &p);  //把原图画上
	putimage(f.x, f.y, &p1, SRCAND);
	putimage(f.x, f.y, &p2, SRCINVERT);
	EndBatchDraw();
}
void moveFish(FISH& f, int k)
{
	f.x += k*5;
	if (f.x > WIDTH - 10) 
		f.x = 10;
	else if (f.x <= 0)
		f.x = WIDTH-10;
}

void gameOver()
{
	exit(0);
}
