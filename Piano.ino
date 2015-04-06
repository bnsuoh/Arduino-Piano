/*by Bensu Sicim
  This is an electronic piano. Sound files and processing codes are included
*/
#include <MuxShield.h> //Initialize the Mux Shield
MuxShield muxShield;
void setup(){
  muxShield.setMode(1,DIGITAL_IN); //Set IO1, IO2, and IO3 as digital inputs
  muxShield.setMode(2,DIGITAL_IN);
  muxShield.setMode(3,DIGITAL_IN);
  Serial.begin(28800);
}

void loop(){
  for (int i=0; i<16; i++){ //Digital read every 16 input on IO1, IO2, and IO3
    if(muxShield.analogReadMS(1,i)>800){ //And print out a definitive number if they are HIGH
      Serial.write(100+i); //every key has a corresponding int value
    }
    if(muxShield.analogReadMS(2,i)>800){
      Serial.write(200+i);
    }
    if(muxShield.analogReadMS(3,i)>800){
      Serial.write(300+i);
    }
  }
  delay(100);
}
