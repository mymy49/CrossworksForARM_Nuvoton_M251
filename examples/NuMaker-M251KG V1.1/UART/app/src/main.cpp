/*
 * Copyright (c) 2025 Yoon-Ki Hong
 *
 * This file is subject to the terms and conditions of the MIT License.
 * See the file "LICENSE" in the main directory of this archive for more details.
 */

#include <yss.h>
#include <bsp.h>
#include <yss/debug.h>

int main(void)
{
	uint32_t count;
	int8_t *buf;

	// 운영체체 초기화
	initializeYss();

	// 보드 초기화
	initializeBoard();

	while(1)
	{
		count = uart0.getRxCount();

		if(count > 0)
		{
			buf = uart0.getRxBuffer();
			uart0.send(buf, count);
			uart0.releaseRxBuffer(count); 
		}
		else
			thread::yield();
	}
}


