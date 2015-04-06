import ddf.minim.*;
import processing.serial.*;
Minim minim;
AudioPlayer d3,c3,b3;
Serial myPort;  // Create object from Serial class
int val,prev;      // Data received from the serial port

void setup() 
{
  size(200, 200);
  minim = new Minim(this);
  d3 = minim.loadFile("d3.wav");
  c3 = minim.loadFile("c3.wav");
  b3 = minim.loadFile("b3.wav");
  myPort = new Serial(this, "/dev/tty.usbmodem1421", 9600);
}

void draw()
{
  val=0;
  if ( myPort.available() > 0) { 
    val = myPort.read();         
    delay(100);
  }
  background(255);             
  if (val == 0) {              
    fill(0);  
    prev=0;    
  } 
  if(val==1&&prev!=1){                      
    fill(204);                
    d3.rewind();
    d3.play();
    prev=1;
  }
  if(val==2&&prev!=2){                      
    fill(150);                 
    c3.rewind();
    c3.play();
    prev=2;
  }
  if(val==3&&prev!=3){                      
    fill(210);                 
    b3.rewind();
    b3.play();
    prev=3;
  }
  
  rect(50, 50, 100, 100);
}



/*

// Wiring / Arduino Code
// Code for sensing a switch status and writing the value to the serial port.

int switchPin = 4;                       // Switch connected to pin 4

void setup() {
  pinMode(switchPin, INPUT);             // Set pin 0 as an input
  Serial.begin(9600);                    // Start serial communication at 9600 bps
}

void loop() {
  if (digitalRead(switchPin) == HIGH) {  // If switch is ON,
    Serial.print(1, BYTE);               // send 1 to Processing
  } else {                               // If the switch is not ON,
    Serial.print(0, BYTE);               // send 0 to Processing
  }
  delay(100);                            // Wait 100 milliseconds
}

*/
