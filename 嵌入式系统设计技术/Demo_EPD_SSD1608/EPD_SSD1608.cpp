/**
 * @file EPD_SSD1608.cpp
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

#include "EPD_SSD1608.h"

/**
 * @brief Constructor for hardware SPI. All pins and SPI class are default.
 */
EPD_SSD1608::EPD_SSD1608(void)
{
    _cs_pin = CSPin;
    _busy_pin = BUSYPin;
    _rst_pin = RSTPin;
    _dc_pin = DCPin;
    _hspi = &SPI;
}

/**
 * @brief Constructor for hardware SPI.
 * @param csPin The chip select pin to use
 * @param busyPin The busy pin to use
 * @param rstPin The reset pin to use
 * @param dcPin The data/command pin to use
 * @param spiDev The pointer of SPI class to use
 */
EPD_SSD1608::EPD_SSD1608(int8_t csPin, int8_t busyPin, int8_t rstPin, int8_t dcPin, SPIClass *spiDev)
{
    if (csPin > -1)
    {
        _cs_pin = csPin;
    }
    else
    {
        _cs_pin = CSPin;
    }
    if (busyPin > -1)
    {
        _busy_pin = busyPin;
    }
    else
    {
        _busy_pin = BUSYPin;
    }
    if (rstPin > -1)
    {
        _rst_pin = rstPin;
    }
    else
    {
        _rst_pin = RSTPin;
    }
    if (dcPin > -1)
    {
        _dc_pin = dcPin;
    }
    else
    {
        _dc_pin = DCPin;
    }
    if (spiDev != NULL)
    {
        _hspi = spiDev;
    }
    else
    {
        _hspi = &SPI;
    }
}

/**
 * @brief Default destructor.
 */
EPD_SSD1608::~EPD_SSD1608()
{
}

/**
 * @brief IO and SPI initialization.
 */
void EPD_SSD1608::begin()
{
    pinMode(_cs_pin, OUTPUT);
    pinMode(_busy_pin, INPUT);
    pinMode(_rst_pin, OUTPUT);
    pinMode(_dc_pin, OUTPUT);
    // SPI
    _hspi->begin();
}

/**
 * @brief Hardware reset on SSD1680.
 */
void EPD_SSD1608::_hw_reset(void)
{
    digitalWrite(_rst_pin, HIGH);
    delay(20);
    digitalWrite(_rst_pin, LOW); // =0 reset
    delay(20);                   // At least 10ms
    digitalWrite(_rst_pin, HIGH);
    delay(20);
}

/**
 * @brief Writing command (8 bits) to SSD1680.
 * @param command 8 bits command
 */
void EPD_SSD1608::_write_command(uint8_t command)
{
    _hspi->beginTransaction(SPISettings(SPI_CLOCK_FRQ, MSBFIRST, SPI_MODE0));
    digitalWrite(_cs_pin, LOW);
    digitalWrite(_dc_pin, LOW); // =0 command writing
    _hspi->transfer(command);
    digitalWrite(_cs_pin, HIGH);
    _hspi->endTransaction();
}

/**
 * @brief Writing data (8 bits) to SSD1680.
 * @param data 8 bits data
 */
void EPD_SSD1608::_write_data(uint8_t data)
{
    _hspi->beginTransaction(SPISettings(SPI_CLOCK_FRQ, MSBFIRST, SPI_MODE0));
    digitalWrite(_cs_pin, LOW);
    digitalWrite(_dc_pin, HIGH); // =1 data writing
    _hspi->transfer(data);
    digitalWrite(_cs_pin, HIGH);
    _hspi->endTransaction();
}

/**
 * @brief Continuously reading the BUSY until the level reaches LOW (idle).
 */
void EPD_SSD1608::_wait_idle(void)
{
    // LOW: idle, HIGH: busy
    while (digitalRead(_busy_pin))
    {
        delay(10);
    }
}

/**
 * @brief Execute the command to refresh the screen.
 */
void EPD_SSD1608::_refresh_display(void)
{
    _write_command(DIS_UPDATE_CTRL_2); // Display update control
    _write_data(0xF7);
    _write_command(DIS_UPDATE_ACT); // Activate display update sequence
    _wait_idle();
}

/**
 * @brief Hardware registers initialization.
 * @note These instructions can be viewed in the datasheet.
 */
void EPD_SSD1608::_epd_hw_init(void)
{
    _hw_reset();

    _wait_idle();
    _write_command(SW_RST); // Soft reset
    _wait_idle();

    _write_command(DRV_OUT_CTRL); // Driver output control
    _write_data(0xF9);
    _write_data(0x00); // 0x00F9-->249 (250 lines)
    _write_data(0x00); // Gates output sequence and scanning from G0..G1..to..G295

    _write_command(DATA_ENTRY_SEQ); // Data entry mode
    _write_data(0x03);              // Y increment and X increment

    _write_command(SET_X_START_END); // Set Ram-X address start/end position
    _write_data(0x00);               // Start 0x00
    _write_data(0x0F);               // End 0x0F-->127

    _write_command(SET_Y_START_END); // Set Ram-Y address start/end position
    _write_data(0x00);
    _write_data(0x00); // Start 0x0000
    _write_data(0xF9);
    _write_data(0x00); // End 0x00F9-->249

    _write_command(SET_X_COUNTER); // Set RAM x address count to 0;
    _write_data(0x00);             // X counter = 0x00
    _write_command(SET_Y_COUNTER); // Set RAM y address count to 0;
    _write_data(0x00);
    _write_data(0x00); // Y counter = 0x0000

    _write_command(BORDER_WAVE_FROM); // Border wave from
    _write_data(0x05);

    _write_command(TEMP_SENSOR_SEL); // Read built-in temperature sensor
    _write_data(0x80);               // Internal temperature sensor

    _write_command(DIS_UPDATE_CTRL_1); // Display update control 1
    _write_data(0x00);
    _write_data(0x80);

    _wait_idle();
}

/**
 * @brief E-Paper enters deep sleep mode.
 * @note This function must be called after the refresh operation.
 */
void EPD_SSD1608::_epd_deepsleep(void)
{
    _write_command(DEEP_SLEEP_MODE); // Enter deep sleep
    _write_data(0x01);               // Mode 1
    delay(200);
}

/**
 * @brief Write the display data into Black&White and Red RAMs, then refresh the E-Paper.
 * @param BW_data Monochrome image data. Black pixel bits = 0, white pixel bits = 1.
 * @param R_data Red image data. Red pixel bits = 1.
 */
void EPD_SSD1608::updateScreen(const uint8_t *BW_data, const uint8_t *R_data)
{
    uint16_t i = 0;
    // EPD initialization
    _epd_hw_init();

    // Write Black&White RAM for black(0) / white(1)
    _write_command(WRITE_BW_RAM);
    for (i = 0; i < ALLSCREEN_GRAGHBYTES; i++)
    {
        _write_data(pgm_read_byte(&BW_data[i]));
    }
    // Write Red RAM for non-pixel(0) / red(1)
    _write_command(WRITE_R_RAM);
    for (i = 0; i < ALLSCREEN_GRAGHBYTES; i++)
    {
        _write_data(pgm_read_byte(&R_data[i]));
    }

    // refresh
    _refresh_display();

    // deep sleep
    _epd_deepsleep();
}

/**
 * @brief Write the display data into Black&White RAM, then refresh the E-Paper.
 * @param BW_data Monochrome image data. Black pixel bits = 0, white pixel bits = 1.
 */
void EPD_SSD1608::updateMonochromePixel(const uint8_t *BW_data)
{
    uint16_t i = 0;
    // EPD initialization
    _epd_hw_init();

    // Write Black&White RAM for black(0) / white(1)
    _write_command(WRITE_BW_RAM);
    for (i = 0; i < ALLSCREEN_GRAGHBYTES; i++)
    {
        _write_data(pgm_read_byte(&BW_data[i]));
    }
    // Write Red RAM for non-pixel(0)
    _write_command(WRITE_R_RAM);
    for (i = 0; i < ALLSCREEN_GRAGHBYTES; i++)
    {
        _write_data(0x00);
    }

    // refresh
    _refresh_display();

    // deep sleep
    _epd_deepsleep();
}

/**
 * @brief Write the display data into Red RAM, then refresh the E-Paper.
 * @param R_data Red image data. Red pixel bits = 1.
 */
void EPD_SSD1608::updateRedPixel(const uint8_t *R_data)
{
    uint16_t i = 0;
    // EPD initialization
    _epd_hw_init();

    // Write Black&White RAM for white(1)
    _write_command(WRITE_BW_RAM);
    for (i = 0; i < ALLSCREEN_GRAGHBYTES; i++)
    {
        _write_data(0xFF);
    }
    // Write Red RAM for non-pixel(0) / red(1)
    _write_command(WRITE_R_RAM);
    for (i = 0; i < ALLSCREEN_GRAGHBYTES; i++)
    {
        _write_data(pgm_read_byte(&R_data[i]));
    }

    // refresh
    _refresh_display();

    // deep sleep
    _epd_deepsleep();
}

/**
 * @brief Clear data on RAMs, then refresh the E-Paper.
 */
void EPD_SSD1608::clearScreen(void)
{
    uint16_t i = 0;
    // EPD initialization
    _epd_hw_init();

    // Write Black&White RAM for white(1)
    _write_command(WRITE_BW_RAM);
    for (i = 0; i < ALLSCREEN_GRAGHBYTES; i++)
    {
        _write_data(0xFF);
    }
    // Write Red RAM for non-pixel(0)
    _write_command(WRITE_R_RAM);
    for (i = 0; i < ALLSCREEN_GRAGHBYTES; i++)
    {
        _write_data(0x00);
    }

    // refresh
    _refresh_display();

    // deep sleep
    _epd_deepsleep();
}