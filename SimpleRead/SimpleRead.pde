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
  aSharp2 = minim.loadFile("a#2.wav"); //load the sound files
  aSharp3 = minim.loadFile("a#3.wav");
  aSharp4 = minim.loadFile("a#4.wav");
  a2 = minim.loadFile("a2.wav");
  a3 = minim.loadFile("a3.wav");
  a4 = minim.loadFile("a4.wav");
  b2 = minim.loadFile("b2.wav");
  b3 = minim.loadFile("b3.wav");
  b4 = minim.loadFile("b4.wav");
  cSharp2 = minim.loadFile("c#2.wav");
  cSharp3 = minim.loadFile("c#3.wav");
  cSharp4 = minim.loadFile("c#4.wav");
  c2 = minim.loadFile("c2.wav");
  c3 = minim.loadFile("c3.wav");
  c4 = minim.loadFile("c4.wav");
  dSharp2 = minim.loadFile("d#2.wav");
  dSharp3 = minim.loadFile("d#3.wav");
  dSharp4 = minim.loadFile("d#4.wav");
  d2 = minim.loadFile("d2.wav");
  d3 = minim.loadFile("d3.wav");
  d4 = minim.loadFile("d4.wav");
  e2 = minim.loadFile("e2.wav");
  e3 = minim.loadFile("e3.wav");
  e4 = minim.loadFile("e4.wav");
  fSharp2 = minim.loadFile("f#2.wav");
  fSharp3 = minim.loadFile("f#3.wav");
  fSharp4 = minim.loadFile("f#4.wav");
  f2 = minim.loadFile("f2.wav");
  f3 = minim.loadFile("f3.wav");
  f4 = minim.loadFile("f4.wav");
  gSharp2 = minim.loadFile("g#2.wav");
  gSharp3 = minim.loadFile("g#3.wav");
  gSharp4 = minim.loadFile("g#4.wav");
  g2 = minim.loadFile("g2.wav");
  g3 = minim.loadFile("g3.wav");
  g4 = minim.loadFile("g4.wav");
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
