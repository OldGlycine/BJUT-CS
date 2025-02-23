/**
 * @file EPD_SSD1608.h
 *
 * @mainpage Library for E-Paper Display (SSD1680)
 *
 * @section Introduction
 * This library is designed for 2.13" E-Paper Display which supports 250x128 pixels with SSD1680.
 * The EPD is connected to ESP32 platform with SPI (4 pins).
 * In addition, the busy, reset and data/command signals are necessary.
 *
 * @author Timot Yang
 *
 * @version 1.1
 * The functions in the library only support full screen refresh.
 *
 * @date 2024.01.15
 *
 * @copyright Emmmmm...it seems to have little value...
 */

#ifndef _EPD_SSD1608_H_
#define _EPD_SSD1608_H_

#include <Arduino.h>
#include <SPI.h>

// SPI clock frequency
#define SPI_CLOCK_FRQ 1000000
// Bytes of full screen
#define ALLSCREEN_GRAGHBYTES 4000
// Commands for SSD1680
#define DRV_OUT_CTRL 0x01
#define DEEP_SLEEP_MODE 0x10
#define DATA_ENTRY_SEQ 0x11
#define SW_RST 0x12
#define TEMP_SENSOR_SEL 0x18
#define DIS_UPDATE_ACT 0x20
#define DIS_UPDATE_CTRL_1 0x21
#define DIS_UPDATE_CTRL_2 0x22
#define WRITE_BW_RAM 0x24
#define WRITE_R_RAM 0x26
#define BORDER_WAVE_FROM 0x3C
#define SET_X_START_END 0x44
#define SET_Y_START_END 0x45
#define SET_X_COUNTER 0x4E
#define SET_Y_COUNTER 0x4F

/** Default pin
 * @section Hardware connections
 * @note The connection is as follows:
 *  EPD Module  <--->  ESP32-C3-DEV
 * =================================
 *     3.3V     <--->     3.3V
 *     GND      <--->     GND
 *     SCK      <--->     SCK
 *     MOSI     <--->     MOSI
 *     CS       <--->     IO7 (SS)
 *     BUSY     <--->     IO1
 *     RST      <--->     IO19 (TXD1)
 *     D/C      <--->     IO18 (RXD1)
 */
const uint8_t CSPin = 7;
const uint8_t BUSYPin = 1;
const uint8_t RSTPin = 19;
const uint8_t DCPin = 18;

class EPD_SSD1608
{
private:
    uint8_t _cs_pin, _busy_pin, _rst_pin, _dc_pin;
    SPIClass *_hspi;

    void _hw_reset(void);
    void _write_command(uint8_t command);
    void _write_data(uint8_t data);
    void _wait_idle(void);
    void _refresh_display(void);
    void _epd_hw_init(void);
    void _epd_deepsleep(void);

public:
    EPD_SSD1608();
    EPD_SSD1608(int8_t csPin, int8_t busyPin, int8_t rstPin, int8_t dcPin, SPIClass *spiDev);
    ~EPD_SSD1608();

    void begin(void);
    void updateScreen(const uint8_t *BW_data, const uint8_t *R_data);
    void updateMonochromePixel(const uint8_t *BW_data);
    void updateRedPixel(const uint8_t *R_data);
    void clearScreen(void);
};

#endif