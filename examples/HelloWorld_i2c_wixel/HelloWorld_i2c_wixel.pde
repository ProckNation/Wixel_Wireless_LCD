/*
Change log
------------------------
12-7-2014: Copied from source HelloWorld_ic2.pde file from
 the LiquidTWI Arduio library to the HelloWorld_i2c_wixel.pde
 in github.  Go to github to get more details about this code.
 https://github.com/ProckNation/Wixel_Wireless_LCD
From this line to the end of this comment block is unchanged from original

 Demonstration sketch for Adafruit i2c/SPI LCD backpack
 using MCP23008 I2C expander
 ( http://www.ladyada.net/products/i2cspilcdbackpack/index.html )

 This sketch prints "Hello World!" to the LCD
 and shows the time.
 
  The circuit:
 * 5V to Arduino 5V pin
 * GND to Arduino GND pin
 * CLK to Analog #5
 * DAT to Analog #4
*/

// include the library code:
#include <Wire.h>
#include <LiquidTWIWixel.h>

// Connect via i2c, default address #0 (A0-A2 not jumpered)
LiquidTWI lcd(0);

void setup() {
  // set up the LCD's number of rows and columns: 
  lcd.begin(16, 2);
  // Print a message to the LCD.
  lcd.print("hello, world!");
}

void loop() {
  // set the cursor to column 0, line 1
  // (note: line 1 is the second row, since counting begins with 0):
  lcd.setCursor(0, 1);
  // print the number of seconds since reset:
  lcd.print(millis()/1000);

  lcd.setBacklight(HIGH);
  delay(500);
  lcd.setBacklight(LOW);
  delay(500);
}

