/*  ----------- 
    Electronic Piano
    by Bensu Sicim
---------------  */
int prev;
void setup(){
  for (int i=2;i<35;i++){
    pinMode(i,INPUT_PULLUP);
  }
  Serial.begin(9600);
}

void loop(){
  boolean clicked=false;
  for (int i=2;i<35;i++){
    int pin= digitalRead(i);
    if(pin==0){
      Serial.write(i);
      clicked=true;
      delay(40);
    }
  }
  if (clicked==false){
    Serial.write(1);
    delay(40);
  }
}



