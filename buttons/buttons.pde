// Global Variables
float buttonX, buttonY, buttonWidth, ButtonHeight;
int wordX, wordY, wordWidth, wordHeight;
String word = "word";
PFont wordFont;
color buttonColor, teal=#19D5DE, green=#19FA35, white=#FFFFFF, reset=white;

void setup () {
  fullScreen();
  String [] fontList = PFont.list();
  printArray(fontList);
  wordFont = createFont("Harrington", 55);
  //population
  
  
  wordX = displayWidth*1/4;
  wordY = displayHeight*1/3;
  wordWidth = displayWidth*1/2;
  wordHeight = displayHeight*1/3;
  buttonX = displayWidth*1/4;
  buttonY = displayHeight*1/3;
  buttonWidth = displayWidth*1/2;
  ButtonHeight = displayHeight*1/3;
}//End setup()

void draw() {
  background(white);
  //println(mouseX, mouseY);
  if (mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+ButtonHeight ) {
    buttonColor = teal;
  } else {
    buttonColor = green;
  }//End IF button color
  textAlign(CENTER, CENTER);
  text(wordX, wordY, wordWidth, wordHeight);
  
  fill(buttonColor);
  rect(buttonX, buttonY, buttonWidth, ButtonHeight);
  fill(reset);
}//End draw()

void mousePressed() {
  if (mouseX >= buttonX && mouseY >= buttonY && mouseX <= buttonX+buttonWidth && mouseY <= buttonY+ButtonHeight ) exit();
}//End mousePressed()

void keyPressed() {
}//End keyPressed()
