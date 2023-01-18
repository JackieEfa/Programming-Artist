// use 3 buttons on Arduino to display 3 images in Processing


int switchPin1 = 6; // declare what pins your buttons are attached to
int switchPin2 = 7;
int switchPin3 = 9;
 
void setup() {
  pinMode(switchPin1, INPUT); // set buttons as inputs
  pinMode(switchPin2, INPUT);
  pinMode(switchPin3, INPUT);
  Serial.begin(9600);
 }
 
 
void loop() {

  // statements to control info sent depending on which button pressed

  if(digitalRead(switchPin1)==HIGH && digitalRead(switchPin2)==LOW && digitalRead(switchPin3)==LOW)
 {
   Serial.print("a"); // if button 2 pressed send a 1
   delay(100);// wait 1 sec in case of any latency
 }
 
  if(digitalRead(switchPin2)==HIGH && digitalRead(switchPin1)==LOW && digitalRead(switchPin3)==LOW)
 {
   Serial.print("b"); // if button 2 pressed send a 2
  delay(100);
 }

 if(digitalRead(switchPin3)==HIGH && digitalRead(switchPin1)==LOW && digitalRead(switchPin2)==LOW)
 {
   Serial.print("c"); // if button 3 pressed send a 3
  delay(100);
 }
 
 
  delay(100);
 }
