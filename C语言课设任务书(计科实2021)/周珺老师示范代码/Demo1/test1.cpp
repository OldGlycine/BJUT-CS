#include <graphics.h>
#include <conio.h>
#include <easyx.h>
#include <stdio.h>

#define WIDTH 640
#define HEIGHT 480

typedef struct fish
{
	int x, y;
}FISH;

void displayFish(FISH f);
void moveFish(FISH &f);

//存储图片可以用全局变量，其他不允许用全局变量

IMAGE back;
IMAGE p1;
IMAGE p2;

int main()
{
	FISH f = { 8,50 };

	loadimage(&back, "image\\background.jpg");
	loadimage(&p1, "image\\fish02.jpg");
	loadimage(&p2, "image\\fish01.jpg");

	initgraph(WIDTH,HEIGHT,SHOWCONSOLE);
	while (1) {
		BeginBatchDraw();//开始批量绘图
		putimage(0, 0, &back);
		displayFish(f);
		moveFish(f);
		EndBatchDraw();//结束批量绘图，将绘制好的图片统一贴到屏幕上。	
		Sleep(15);	//暂停
		
	}

	return 0;
}

void displayFish(FISH f)
{
	putimage(f.x, f.y, &p1, SRCAND);
	putimage(f.x, f.y, &p2, SRCINVERT);
}
void moveFish(FISH &f)
{
	f.x += 5;
	if (f.x > WIDTH - 10) f.x = 10;
}