/**
 * @file Demo_EPD_SSD1608.ino
 *
 * @mainpage Example for E-Paper Display (SSD1680)
 *
 * @section Introduction
 * E-Paper displays an image that includes a monochrome Bazahey and a red heart,
 * then clears the screen after 10s, and re-displays the image after 10s,
 * repeating the process. When the E-Paper is refreshed in full screen,
 * the image flicker is a normal phenomenon.
 *
 * @author Timot Yang
 *
 * @version 1.1
 *
 * @date 2024.01.15
 *
 * @copyright Emmmmm...it seems to have little value...
 */

#include "Pics.h"
#include "EPD_SSD1608.h"

/**
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
const uint8_t CS_Pin = 7;
const uint8_t BUSY_Pin = 1;
const uint8_t RST_Pin = 19;
const uint8_t DC_Pin = 18;

// The object for EPD_SSD1608 library
EPD_SSD1608 epd(CS_Pin, BUSY_Pin, RST_Pin, DC_Pin, &SPI);

/************************  SETUP  ************************/
void setup()
{
  Serial.begin(115200);
  Serial.println("");
  Serial.println("========== EPD Test ==========");

  epd.begin();
  Serial.println("System initialization finished!");
  delay(5000);
}

/************************  LOOP  ************************/
void loop()
{
  Serial.println("refresh screen...");
  epd.updateScreen(BW_Bazahey, R_Heart);
  Serial.println("RFS done!");
  delay(10000);

  Serial.println("clear screen...");
  epd.clearScreen();
  Serial.println("CLR done!");
  delay(10000);
}