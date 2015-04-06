/*
 Input Pullup Serial
 
 This example demonstrates the use of pinMode(INPUT_PULLUP). It reads a 
 digital input on pin 2 and prints the results to the serial monitor.
 
 The circuit: 
 * Momentary switch attached from pin 2 to ground 
 * Built-in LED on pin 13
 
 Unlike pinMode(INPUT), there is no pull-down resistor necessary. An internal 
 20K-ohm resistor is pulled to 5V. This configuration causes the input to 
 read HIGH when the switch is open, and LOW when it is closed. 
 
 created 14 March 2012
 by Scott Fitzgerald
 
 http://www.arduino.cc/en/Tutorial/InputPullupSerial
 
 This example code is in the public domain
 
 */
int prev;
void setup(){
  //start serial connection
  Serial.begin(9600);
  //configure pin2 as an input and enable the internal pull-up resistor
  //pinMode(2, INPUT);

}

void loop(){
  //read the pushbutton value into a variable
  prev=0;
  int pin1=analogRead(A5);
  int pin2=analogRead(A4);
  int pin3=analogRead(A3);
  /*Serial.print(pin1);
  Serial.print(" ");
  Serial.print(pin2);
  Serial.print(" ");
  Serial.print(pin3);
  Serial.print(" ");*/
  if(pin1>800){
    if(prev!=1){
      Serial.write(1);
    }
    prev=1;
  }
  if(pin2>800){
    if (prev!=2){
      Serial.write(2);
    }
    prev=2;
  }
  if(pin3>800){
    if(prev!=3){
      Serial.write(3);
    }
    prev=3;
  }
  delay(100);
}



