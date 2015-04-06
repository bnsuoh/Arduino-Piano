/*by Bensu Sicim
  This is an electronic piano. Sound files and processing codes are included
*/
#include <MuxShield.h> //Initialize the Mux Shield
MuxShield muxShield;
void setup(){
  muxShield.setMode(1,ANALOG_IN); //Set IO1, IO2, and IO3 as digital inputs
  muxShield.setMode(2,ANALOG_IN);
  muxShield.setMode(3,ANALOG_IN);
  Serial.begin(28800);
}

void loop(){
  for (int i=0; i<16; i++){ //Digital read every 16 input on IO1, IO2, and IO3
    if(muxShield.analogReadMS(1,i)>800){ //And print out a definitive number if they are HIGH
      Serial.write(i); //every key has a corresponding int value
    }
    if(muxShield.analogReadMS(2,i)>800){
      Serial.write(i+17);
    }
    if(muxShield.analogReadMS(3,i)>800){
      Serial.write(i+34);
    }
  }
  delay(100);
}
