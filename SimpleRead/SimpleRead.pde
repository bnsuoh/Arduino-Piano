/*  ----------- 
    Electronic Piano
    by Bensu Sicim
---------------  */
import ddf.minim.*;
import processing.serial.*;
Minim minim;
AudioPlayer[] keys;
Serial serialCon;  // Create object from Serial class
int val,prev;      // Data received from the serial port
void setup() {
  size(200, 200);
  minim=new Minim(this);
  keys=new AudioPlayer[36];
  keys[0]=minim.loadFile("c2.wav");
  keys[1]=minim.loadFile("c#2.wav");
  keys[2]=minim.loadFile("d2.wav");
  keys[3]=minim.loadFile("d#2.wav");
  keys[4]=minim.loadFile("e2.wav");
  keys[5]=minim.loadFile("f2.wav");
  keys[6]=minim.loadFile("f#2.wav");
  keys[7]=minim.loadFile("g2.wav");
  keys[8]=minim.loadFile("g#2.wav");
  keys[9]=minim.loadFile("a2.wav");
  keys[10]=minim.loadFile("a#2.wav");
  keys[11]=minim.loadFile("b2.wav");
  keys[12]=minim.loadFile("c3.wav");
  keys[13]=minim.loadFile("c#3.wav");
  keys[14]=minim.loadFile("d3.wav");
  keys[15]=minim.loadFile("d#3.wav");
  keys[16]=minim.loadFile("e3.wav");
  keys[17]=minim.loadFile("f3.wav");
  keys[18]=minim.loadFile("f#3.wav");
  keys[19]=minim.loadFile("g3.wav");
  keys[20]=minim.loadFile("g#3.wav");
  keys[21]=minim.loadFile("a3.wav");
  keys[22]=minim.loadFile("a#3.wav");
  keys[23]=minim.loadFile("b3.wav");
  keys[24]=minim.loadFile("c4.wav");
  keys[25]=minim.loadFile("c#4.wav");
  keys[26]=minim.loadFile("d4.wav");
  keys[27]=minim.loadFile("d#4.wav");
  keys[28]=minim.loadFile("e4.wav");
  keys[29]=minim.loadFile("f4.wav");
  keys[30]=minim.loadFile("f#4.wav");
  keys[31]=minim.loadFile("g4.wav");
  keys[32]=minim.loadFile("g#4.wav");
  keys[33]=minim.loadFile("a4.wav");
  keys[34]=minim.loadFile("a#4.wav");
  keys[35]=minim.loadFile("b4.wav");
  serialCon = new Serial(this, "/dev/tty.usbmodem1421", 9600);
}

void draw(){
  val=0;
  if ( serialCon.available() > 0) { 
    val = serialCon.read();         
    delay(10);
  }
  background(255);             
  if (val == 0) {
    prev=0;    
  }
  else if(prev!=val){
    fill(random(250));
    keys[val-1].rewind();
    keys[val-1].play();
    prev=val;
  }
  /*if(val==1&&prev!=1){                      
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
  }*/
  rect(50, 50, 100, 100);
}
