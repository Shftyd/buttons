// Global Variables
float buttonX, buttonY, buttonWidth, ButtonHeight;
color buttonColor, yellow=#FEFF00, purple=#A900FF, white=#FFFFFF, reset=white;

void setup () {
  fullScreen();
  //population
  buttonX = displayWidth*1/4;
  buttonY = displayHeight*1/3;
  buttonWidth = displayWidth*1/2;
  ButtonHeight = displayHeight*1/3;
}//End setup()

void draw() {
  background(white);
  //println(mouseX, mouseY);
  if (mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+ButtonHeight ) {
    buttonColor = yellow;
  } else {
    buttonColor = purple;
  }//End IF button color
  fill(buttonColor);
  rect(buttonX, buttonY, buttonWidth, ButtonHeight);
  fill(reset);
}//End draw()

void mousePressed() {
  if (mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+ButtonHeight ) exit();
}//End mousePressed()

void keyPressed() {
}//End keyPressed()
