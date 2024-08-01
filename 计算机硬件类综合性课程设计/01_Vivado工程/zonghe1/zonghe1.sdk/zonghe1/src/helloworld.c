/*
 * uart_send.c
 *
 *  Created on: 2024年5月22日
 *      Author: Administrator
 */
/*#include <stdio.h>
#include "xparameters.h"
#include "xil_io.h"
#include "sleep.h"
#include "xil_types.h"
#include "xuartlite_l.h"
u32 value[8]={0xBE,0xA9,0x4E,0x4D,0x41,0x30,0x36,0x35};

void transbyte(u32 value){
	Xil_Out32(XPAR_UARTLITE_0_BASEADDR+XUL_TX_FIFO_OFFSET,value);

	usleep(1042);
}
int main(){
	while(1){
    int i=8;
	while(i--) transbyte(value[7-i]);
	sleep(5.21);
	}


}*/
#include <stdio.h>
#include "xparameters.h"
#include "xil_io.h"
#include "sleep.h"
#include "xil_types.h"
#include "xuartlite_l.h"

// 车牌号GBK编码，初始化为京A00000的GBK编码
u8 plateNumberGBK[8] = {0xBE, 0xA9, 0x41, 0x30, 0x30, 0x30, 0x30, 0x30};

// 发送字节到UART
void transbyte(u8 value) {
    Xil_Out32(XPAR_UARTLITE_0_BASEADDR + XUL_TX_FIFO_OFFSET, value);
    usleep(1042);
}

// 将车牌号的字母或数字转换为其GBK编码值
u8 convertCharToGBK(char c) {
    if (c >= 'A' && c <= 'Z') {
        return 0x41 + (c - 'A'); // 'A'的GBK编码是0x41，后续字母对应
    } else if (c >= '0' && c <= '9') {
        return 0x30 + (c - '0'); // '0'的GBK编码是0x30，后续数字对应
    }
    return 0x00; // 如果不是字母也不是数字，则返回0
}

// 编码车牌号至GBK格式并存储在plateNumberGBK数组中
void encodePlateNumberToGBK(const char *plateNumber) {
    plateNumberGBK[0] = 0xBE; // 京的高字节
    plateNumberGBK[1] = 0xA9; // 京的低字节
    int i;
    for (i = 0; i < 7; ++i) {
        char c = plateNumber[i];
        plateNumberGBK[i + 2] = convertCharToGBK(c); // 使用转换函数获取GBK编码
    }
}

int main() {
    char plateNumber[] = "CBA105"; // 车牌号为"京ABC005"
    int i;
    while (1) {
        // 将车牌号字符编码后存储在GBK编码数组plateNumberGBK中
        encodePlateNumberToGBK(plateNumber);

        // 通过UART发送车牌号的GBK编码
        for (i = 0; i < 8; ++i) {
            transbyte(plateNumberGBK[i]);
        }

        // 等待一段时间再发送下一个车牌号码
        sleep(5); // 等待5秒
    }

    return 0;
}
