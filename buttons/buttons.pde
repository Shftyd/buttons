// Global Variables
float buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColor , yellow=#FEFF00 , purple=#A900FF , white=#FFFFFF , reset=white;

void setup () {
  fullScreen(displayWidth, displayHeight);
  //population
  buttonX = displayWidth*1/4;
  buttonY = displayHeight*1/3;
  buttonWidth = displayWidth*1/2;
  buttonHeight = displayHeight*1/3;
}//End setup()

void draw() {
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
}//End draw()

void mousePressed() {
}//End mousePressed()

void keyPressed() {
}//End keyPressed()
