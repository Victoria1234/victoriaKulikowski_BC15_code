PFont cochin;

float y = 0.0;
float x = 0.0;
color ellipseColor;
int ellipseColorH;

void setup () {
  size(500, 500);
  colorMode(HSB, 360, 100, 100);
  cochin = createFont("Cochin-Bold-48.vlw", 48);
  textFont(cochin);
}

void draw () {
  background(204, 40, 100);
  line(0, y, 500, y);
  y = y + 0.5;
  
  ellipseColor = color (ellipseColor, mouseX, mouseY);
  fill(ellipseColor);
  ellipse(mouseX, mouseY, 70, 70);
  
  strokeWeight(10);
  line(mouseX, mouseY, 0, 500);
   
  if (mouseButton == LEFT) {
    text("Hi", width/2, height/2);
  } else if (mouseButton == RIGHT) {
    text("Bye", width/2, height/2+40);
  }
  saveFrame();
}