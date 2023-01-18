/*
SOUNDMAP TEMPLATE 
 
 This template is an example that can be altered to suit your project's style.
 Created by Connor Kingston
 Sounds from mixkit.co "https://mixkit.co/free-sound-effects/" and tabletopaudio.com "https://tabletopaudio.com/"
 
 For help with classes you can go to "https://happycoding.io/tutorials/processing/creating-classes" as I found it to be easy to understand and helps breakdown what a class is
 
 */


import ddf.minim.*; // adds the library to this sketch so that audio can be added


Hotspot h1, h2, h3, h4, h5, h6, h7; //creating different instances of the class

Minim minim; //start minim object (also deals with classes)

AudioPlayer t1, t2, t3, t4, t5, t6, t7, ambi; // using a class found in the minim library to create different instances

PImage img;

void setup() {
  //size(489, 694); //set the size of the sketch
  fullScreen();
  background(0); //set the color of the sketch
  //textAlign(CENTER); //makes the texts origin point in the center of it x and y value
  //textSize(100); //changes the texts size
  //text("Template", width/2, height/2); //adds text to the sketch

  minim = new Minim(this); //Sets the constructors variables to the class variables. See in class for better description

  t1 = minim.loadFile("sound_map_test_3.wav"); //loads file found in data folder with specific name as inputed
  t2 = minim.loadFile("bells-5-sec.mp3");
  t3 = minim.loadFile("mixkit-aggressive-beast-roar-13.wav");
  t4 = minim.loadFile("mixkit-melodical-flute-music-notification-2310.wav");
  t5 = minim.loadFile("harp-strum.wav");
  t6 = minim.loadFile("AtmosphereBell2.mp3");
  t7 = minim.loadFile("heart_beat_4_sec.mp3");
  ambi = minim.loadFile("99_Cavern_of_Lost_Souls.mp3"); // ambient track plays on start of sketch
  
  imageMode(CENTER);
  img = loadImage("ulethmap.PNG");
  
  //h1 = new Hotspot(420, 307); // this loads the instances with a constructor. The constructor can be many things but for this example it is the location of the ellipse
  //h2 = new Hotspot(890, 390);
  //h3 = new Hotspot(649, 479);
  //h4 = new Hotspot(197, 929);
  //h5 = new Hotspot(230, 627); 
  //h6 = new Hotspot(512, 676);
  //h7 = new Hotspot(836, 880); 
  
  //centering hotspots so you know which one's which, then position where you want them
  //h1 = new Hotspot(width/2, height/2 - 150);
  //h2 = new Hotspot(width/2, height/2 - 100);
  //h3 = new Hotspot(width/2, height/2 - 50);
  //h4 = new Hotspot(width/2, height/2);
  //h5 = new Hotspot(width/2, height/2 + 50); 
  //h6 = new Hotspot(width/2, height/2 + 100);
  //h7 = new Hotspot(width/2, height/2 + 150); 
  
  h1 = new Hotspot(width/2 - 180, height/2); // thumb
  h2 = new Hotspot(width/2 - 150, height/2 - 225); // index
  h3 = new Hotspot(width/2 - 60, height/2 - 275); // middle
  h4 = new Hotspot(width/2 + 40, height/2 - 265); // ring
  h5 = new Hotspot(width/2 + 125, height/2 - 195); // pinkie
  h6 = new Hotspot(width/2 + 25, height/2 + 25); // mid palm
  h7 = new Hotspot(width/2 - 65, height/2 + 100); // venus
}

void draw() {
    ambi.play(); // ambient track plays on start - independent of interaction
  //image(img, 0, 0);
    image(img, width/2, height/2);

/////////////////////////////////////////////////////////// grid start ///////////////////////
 //generate grid for help with locating hotspots: comment this code out when no longer needed
 // horizontal lines
int x1 = 0;
int lineW = width;

// vertical lines
int y1 = 0;       // Vertical location of each line
int lineH = height;     // Length of each line

int spacing = 50; // How far apart is each line

// grid
for (int y2 = 0; y2 <= width; y2 += spacing) { // same as y2 = y2 + spacing
  // horizontal lines repeat
  for (int x2 = 0; x2 <= height; x2 += spacing) {
    //line(x1, x2, x1 + lineW, x2);
    line(y2, y1, y2, y1 + lineH);
    line(x1, x2, x1 + lineW, x2);
  }
}
///////////////////////////////////////////////////// grid end ///////////////////////////  
  if (
  
    //mouseX >= 400 && mouseX <=440 && mouseY >= 287 && mouseY <= 327 || //This tells the cursor to change if it is within a range of the hotspots
    //mouseX >= 870 && mouseX <=910 && mouseY >= 370 && mouseY <= 410 ||
    //mouseX >= 629 && mouseX <=669 && mouseY >= 459 && mouseY <= 499 ||
    //mouseX >= 177 && mouseX <=217 && mouseY >= 909 && mouseY <= 949 ||
    //mouseX >= 210 && mouseX <=250 && mouseY >= 607 && mouseY <= 647 ||
    //mouseX >= 492 && mouseX <=532 && mouseY >= 656 && mouseY <= 696 ||
    //mouseX >= 816 && mouseX <=856 && mouseY >= 860 && mouseY <= 900) 
    
    mouseX >= width/2 - 195 && mouseX <= width/2 - 165 && mouseY >= height/2 - 15 && mouseY <= height/2 + 15 || //This tells the cursor to change if it is within a range of the hotspots
    mouseX >= width/2 - 165 && mouseX <= width/2 - 135 && mouseY >= height/2 - 240 && mouseY <= height/2 - 210 ||
    mouseX >= width/2 - 75 && mouseX <= width/2 - 45 && mouseY >= height/2 - 290 && mouseY <= height/2 - 260 ||
    mouseX >= width/2 + 25 && mouseX <= width/2 + 55 && mouseY >= height/2 - 280 && mouseY <= height/2 - 250 ||
    mouseX >= width/2 + 110 && mouseX <= width/2 + 140 && mouseY >= height/2 - 210 && mouseY <= height/2 - 180 ||
    mouseX >= width/2 + 5 && mouseX <= width/2 + 40 && mouseY >= height/2 + 10 && mouseY <= height/2 + 40  ||
    mouseX >= width/2 - 80 && mouseX <= width/2 - 50 && mouseY >= height/2 + 85 && mouseY <= height/2 + 115) 
    {
    
    cursor(CROSS); //change cursor to cross icon
  } 
  
  else {
    cursor(MOVE); //if it isnt in one of the designated areas then make the cursor the move icon
  }
  
  ///////////////////////////////////If you wish to have the audio stay on till another spot is triggered////////////////////////////////////////////////
  /*
if (mouseX >= 400 && mouseX <=440 && mouseY >= 287 && mouseY <= 327) { //activate functions if mouse is within this area
   t1.play(); //start the sound of the t1 object
   t1.loop(); //keep t1 looping
   if (t1.isPlaying()) { //if t1 is currently active then activate these functions
   t2.pause(); //pause t2 sound
   t2.rewind(); //rewind t2 back to the beginning of the sound file
   t3.pause();
   t3.rewind();
   t4.pause();
   t4.rewind();
   t5.pause();
   t5.rewind();
   t6.pause();
   t6.rewind();
   t7.pause();
   t7.rewind();
   }
   }
   */
  //////////////////////////////////////////////////////////////////////////////////  

  ////////////////////////////////////If you want the audio to only stay on while you hover over the trigger area//////////////////////////////////////////////
  //if (mouseX >= 400 && mouseX <=440 && mouseY >= 287 && mouseY <= 327) {//activate functions if mouse is within this area
   
   if (mouseX >= width/2 - 195 && mouseX <= width/2 - 165 && mouseY >= height/2 - 15 && mouseY <= height/2 + 15) {//thumb
    h1.colourChange(); // change colour of circle when mouse over
    t1.play();//start the sound of the t1 object
  } else { //if t1 isnt active have these active
    t1.pause(); //pause t1 sound
    t1.rewind(); //rewind t1 sound file back to beginning
  }

  if (mouseX >= width/2 - 165 && mouseX <= width/2 - 135 && mouseY >= height/2 - 240 && mouseY <= height/2 - 210) { // index
    t2.play();
  } else {
    t2.pause();
    t2.rewind();
  }

  if (mouseX >= width/2 - 75 && mouseX <= width/2 - 45 && mouseY >= height/2 - 290 && mouseY <= height/2 - 260) { //middle
    t3.play();
  } else {
    t3.pause();
    t3.rewind();
  }

  if ( mouseX >= width/2 + 25 && mouseX <= width/2 + 55 && mouseY >= height/2 - 280 && mouseY <= height/2 - 250) { // ring
    t4.play();
  } else {
    t4.pause();
    t4.rewind();
  }

  if (mouseX >= width/2 + 110 && mouseX <= width/2 + 140 && mouseY >= height/2 - 210 && mouseY <= height/2 - 180) { // pinkie
    t5.play();
  } else {
    t5.pause();
    t5.rewind();
  }

  if (mouseX >= width/2 + 5 && mouseX <= width/2 + 40 && mouseY >= height/2 + 10 && mouseY <= height/2 + 40 ) { // mid palm
    t6.play();
  } else {
    t6.pause();
    t6.rewind();
  }

  if (mouseX >= width/2 - 80 && mouseX <= width/2 - 50 && mouseY >= height/2 + 85 && mouseY <= height/2 + 115) { // venus
    t7.play();
  } else {
    t7.pause();
    t7.rewind();
  }
  //////////////////////////////////////////////////////////////////////////////////

  ////////////////////////////////////If you want the audio to stay on till completion and then reset once you move off the trigger area//////////////////////////////////////////////
  /*
if (mouseX >= 400 && mouseX <=440 && mouseY >= 287 && mouseY <= 327) {//activate functions if mouse is within this area
   t1.play(); //start the sound of the t1 object
   } else if (!t1.isPlaying()){ //if t1 is not playing then activate this
   t1.rewind(); //rewind t1 
   }
   */
  //////////////////////////////////////////////////////////////////////////////////


  h1.display(); //call upon the classes function in the draw loop
  h2.display();
  h3.display();
  h4.display();
  h5.display();
  h6.display();
  h7.display();
}



class Hotspot { //class for the different ellipses in this sketch
  float x; //class variable for the x location of the class
  float y; //class variable for the y location of the class


  Hotspot(float x, float y) { //this is the constructor which asks for the x and y values when iniatiated
    this.x = x; //sets the class variables as the parameter variable found in the argument(constructor). To avoid you could use different variables in the constructor but for ease of use it is best to use the same variables
    this.y = y;
  }

  void display() { //function that displays the classes visuals
    //ellipse(x, y, 10, 10); //ellipse created in diffderent locations depending on input in constructor
      fill(255, 75);
      ellipse(x, y, 30, 30);  
}

  void colourChange() { // function to change colour of circle if mouse over
      fill(255, 0, 0, 75);
      ellipse(x, y, 30, 30); 
}
}
