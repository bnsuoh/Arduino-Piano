/*  ----------- 
    Electronic Piano
    by Bensu Sicim
---------------  */
int prev;
void setup(){
  for (int i=0;i<36;i++){
    pinMode(i,INPUT_PULLUP);
  }
  Serial.begin(9600);
}

void loop(){
  prev=0;
  for (int i=0;i<36;i++){
    int pin=digitalRead(i);
    if(prev!=i && pin==0){
      Serial.write(i);
      prev=i;
    }
  }
}



