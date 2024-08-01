/*
 * uart_send.c
 *
 *  Created on: 2024��5��22��
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

// ���ƺ�GBK���룬��ʼ��Ϊ��A00000��GBK����
u8 plateNumberGBK[8] = {0xBE, 0xA9, 0x41, 0x30, 0x30, 0x30, 0x30, 0x30};

// �����ֽڵ�UART
void transbyte(u8 value) {
    Xil_Out32(XPAR_UARTLITE_0_BASEADDR + XUL_TX_FIFO_OFFSET, value);
    usleep(1042);
}

// �����ƺŵ���ĸ������ת��Ϊ��GBK����ֵ
u8 convertCharToGBK(char c) {
    if (c >= 'A' && c <= 'Z') {
        return 0x41 + (c - 'A'); // 'A'��GBK������0x41��������ĸ��Ӧ
    } else if (c >= '0' && c <= '9') {
        return 0x30 + (c - '0'); // '0'��GBK������0x30���������ֶ�Ӧ
    }
    return 0x00; // ���������ĸҲ�������֣��򷵻�0
}

// ���복�ƺ���GBK��ʽ���洢��plateNumberGBK������
void encodePlateNumberToGBK(const char *plateNumber) {
    plateNumberGBK[0] = 0xBE; // ���ĸ��ֽ�
    plateNumberGBK[1] = 0xA9; // ���ĵ��ֽ�
    int i;
    for (i = 0; i < 7; ++i) {
        char c = plateNumber[i];
        plateNumberGBK[i + 2] = convertCharToGBK(c); // ʹ��ת��������ȡGBK����
    }
}

int main() {
    char plateNumber[] = "CBA105"; // ���ƺ�Ϊ"��ABC005"
    int i;
    while (1) {
        // �����ƺ��ַ������洢��GBK��������plateNumberGBK��
        encodePlateNumberToGBK(plateNumber);

        // ͨ��UART���ͳ��ƺŵ�GBK����
        for (i = 0; i < 8; ++i) {
            transbyte(plateNumberGBK[i]);
        }

        // �ȴ�һ��ʱ���ٷ�����һ�����ƺ���
        sleep(5); // �ȴ�5��
    }

    return 0;
}
