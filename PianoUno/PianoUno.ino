int prev;
void setup(){
  //start serial connection
  Serial.begin(9600);
}

void loop(){
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



