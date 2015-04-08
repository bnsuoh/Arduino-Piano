/*  ----------- 
    Electronic Piano
    by Bensu Sicim
---------------  */
int prev;
void setup(){
  for (int i=2;i<30;i++){
    pinMode(i,INPUT_PULLUP);
  }
  Serial.begin(9600);
}

void loop(){
  boolean clicked=false;
  for (int i=0;i<25;i++){
    int pin= digitalRead(i+2);
    if(pin==0){
      Serial.write(i+1);
      clicked=true;
      delay(10);
    }
  }
  if (clicked==false){
    Serial.write(0);
  }
}



