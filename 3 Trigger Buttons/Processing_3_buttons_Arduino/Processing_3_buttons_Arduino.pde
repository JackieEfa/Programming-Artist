
 // use 3 buttons on Arduino to display 3 images in Processing

import processing.serial.*; // serial communication library
Serial myPort; // Create object from Serial class

PImage img1; // declare variables for images
PImage img2;
PImage img3;

char val; // variable to control data received from the serial port

void setup() {
  size(700, 600);
  imageMode(CENTER);

  img1=loadImage("a.jpg"); // load images
  img2=loadImage("b.jpg");
  img3=loadImage("c.jpg");

  // next two lines will tell you available serial ports (pick the one that matches your arduino port)
  println(Serial.list()); //list serial ports
  printArray(Serial.list());


  //String portName = Serial.list()[0]; // will differ from computer to compter 
  String portName = Serial.list()[0]; // from the printArray info select port number for your Arduino
  myPort = new Serial(this, portName, 9600); // initialize Serial object, set to baud rate 9600
}

void draw() {
  background(0); // black background

  if ( myPort.available() > 0) {  // If data is available,
    val = myPort.readChar();         // read it and store it in val

  }


  if (val == 'a') { 
    image(img1, width/2, height/2); // then display this image
  } 
  else if (val == 'b') {
    image(img2, width/2, height/2);
  } 
  else if (val == 'c') {
    image(img3, width/2, height/2);
  }
  
}
