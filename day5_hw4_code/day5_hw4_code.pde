PImage joy;
float speed = 0.05;
float size;
float r = 5;
float x;
int heart;
int s;
int value = 0;
PFont yuppy;
boolean drawWord = false;

void setup() {
  size(500, 500);
  background(255);
  joy = loadImage("joy.png");
  imageMode(CENTER);
  colorMode(HSB, 360, 100, 100);
  yuppy = loadFont("YuppyTC-Regular-48.vlw");
  textFont(yuppy);
  fill(0);
}

void draw() {
  
  float speed = map(mouseX, 0, width, 0.001, 0.1);
  float sinOfTime = sin(frameCount*speed);
  float hue = map(mouseX, 100, 500, 0, 360);
  
  float y = r*sin(frameCount*speed);
  
  //fill(0,150,255);
  //noStroke();
  //ellipse(x + width/2, y + height/2, 30, 30);
   s = 0;
  
  
  beginShape();
  vertex(250, 300+s); //bottom point
  bezier(250, 300+s, 250, 300+s, 300+s, 250, 300+s, 225-0.5*s); //long right side
  bezier(300+s, 225-0.5*s, 300+s, 212-0.76*s, 300+s, 200-s, 275+0.5*s, 200-s); //outside right curve
  bezier(275+0.5*s, 200-s, 255+0.1*s, 200-s, 250, 225-0.5*s, 250, 225-0.5*s); //inside right curve
  bezier(250, 225-0.5*s, 250, 225-0.5*s, 245-0.1*s, 200-s, 225-0.5*s, 200-s); //inside left curve
  bezier(225-0.5*s, 200-s, 200-s, 200-s, 200-s, 212-0.76*s, 200-s, 225-0.5*s); //outside left curve
  bezier(200-s, 225-0.5*s, 200-s, 250, 250, 300+s, 250, 300+s); //long left side
  vertex(250, 300+s); //bottom point
  endShape();

  x = size*cos(frameCount*speed+30);
  
  if (drawWord == true) {
    text("LOVE", 250, 250);
  }
  
  tint(hue, 100, 100, random(100));
  image(joy, width/2, height/2);
  
  saveFrame();
}

void keyPressed() {
  if ((key == 'L') || (key == 'l')) {
    drawWord = true;
  }
}