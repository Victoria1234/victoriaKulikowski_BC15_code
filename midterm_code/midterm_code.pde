import processing.sound.*; //<>// //<>// //<>//
SoundFile file;
PFont yuppy;



boolean drawWinter = false;
boolean ellipse1 = false;
boolean ellipse2 = false;
boolean ellipse3 = false;
boolean ellipse4 = false;
boolean ellipse5 = false;
boolean ellipse6 = false;
boolean ellipse7 = false;
boolean ellipse8 = false;
boolean ellipse9 = false;
boolean ellipse10 = false;
boolean ellipse11 = false;
boolean ellipse12 = false;
boolean ellipse13 = false;
boolean ellipse14 = false;
boolean ellipse15 = false;
boolean ellipse16 = false;
boolean ellipse17 = false;
boolean ellipse18 = false;
boolean tree = false;
boolean stump = false;


float[] xCoords = new float[500];
float[] yCoords = new float[500];
float[] xMove = new float[500];
float[] yMove = new float[500];


void setup() {
  size (500, 500);
  background(0);
  yuppy = createFont("YuppyTC-Regular", 48);
  textFont(yuppy);
  
  file = new SoundFile(this, "Wind-Mark_DiAngelo-1940285615.mp3");
  file.play();

  for (int i = 0; i < 500; i++) {
    xCoords[i] = random(width);
    yCoords[i] = random(height);
    yMove[i] = random(5, 10); //openprocessing.org snowfall array test
}
}

void draw() {
  
  if (drawWinter == true) {
    text("Happy Winter!", 180, 180);
    }
  if (ellipse1 == true) { //1st snowman
     ellipse(60,420, 75, 75);
   }
  if (ellipse2 == true) {
     ellipse(60, 360, 50, 50);
 }
  if (ellipse3 == true) {
    fill(0);
    ellipse(70, 360, 5, 5);
  }
  if (ellipse4 == true) {
    ellipse(50, 360, 5, 5);
  }
  if (ellipse5 == true) {
      ellipse(60, 400, 2, 2);
  }
  if (ellipse6 == true) {
      ellipse(60, 420, 2, 2);
  }
  if (ellipse7 == true) {
      ellipse(60, 440, 2, 2);
  }
  if (ellipse8 == true) { // 2nd snowman
      fill(255);
      ellipse(190, 420, 75, 75);
  }
  if (ellipse9 == true) {
      ellipse(190, 360, 50, 50);
  }
  if (ellipse10 == true) {
      fill(0);
      ellipse(180, 360, 5, 5);
  }
  if (ellipse11 == true) {
      ellipse(200, 360, 5, 5);
  }
  if (ellipse12 == true) {
      ellipse(190, 400, 2, 2);
  }
  if (ellipse13 == true) {
      ellipse (190, 415, 2, 2);
  }
  if (ellipse14 == true) {
      ellipse (190, 430, 2, 2);
  }
  if (ellipse15 == true) {
      fill(0);
      rect(35, 330, 50, 10);
  }
  if (ellipse15 == true) {
      rect(43, 300, 35, 30);
  }
  if (ellipse16 == true) {
      rect(165, 330, 50, 10);
  }
  if (ellipse17 == true) {
      rect(173, 300, 35, 30);
  }
  if (tree == true) {
      fill(0, 255, 0);
      triangle(300, 400, 370, 200, 450, 400);
  }
  if (stump ==true) {
    fill (165, 42, 42);
    rect(365, 400, 10, 20);
  }
  
  fill(255);
  for (int i = 0; i < 500; i++) {
    ellipse(xCoords[i], yCoords[i], 5, 5);
    xCoords[i] +=xMove[i];
    yCoords[i] +=yMove[i];
    
     xCoords[i] += random(-5, 1);
 
    if (yCoords[i] > height) {
      yCoords[i] = 0;
    }
    if (xCoords[i] < 0) {
      xCoords[i] = width;
    }
  }
}

void keyPressed() {
  if ((key == 'W' || (key == 'w'))) {
    drawWinter = true;
  }
  if ((key == 'Q' || (key == 'q'))) {
    ellipse1 = true;
  }
  if ((key == 'E' || (key == 'e'))) {
    ellipse2 = true;
  }
  if ((key == 'R' || (key == 'r'))) {
    ellipse3 = true;
  }
  if ((key == 'T' || (key == 't'))) {
    ellipse4 = true;
  }
  if ((key == 'Y' || (key == 'y'))) {
    ellipse5 = true;
  }
  if ((key == 'U' || (key == 'u'))) {
    ellipse6 = true;
  }
  if ((key == 'I' || (key == 'i'))) {
    ellipse7 = true;
  }
  if ((key == 'O' || (key == 'o'))) {
    ellipse8 = true;
  }
  if ((key == 'P' || (key == 'p'))) {
    ellipse9 = true;
  }
  if ((key == 'A' || (key == 'a'))) {
    ellipse10 = true;
  }
  if ((key == 'S' || (key == 's'))) {
    ellipse11 = true;
  }
  if ((key == 'D' || (key =='d'))) {
    ellipse12 = true;
  }
  if ((key == 'F' || (key == 'f'))) {
    ellipse12 = true;
  }
  if ((key == 'G' || (key == 'g'))) {
    ellipse13 = true;
  }
  if ((key == 'H' || (key == 'h'))) {
    ellipse14 = true;
  }
  if ((key == 'J' || (key == 'j'))) {
    ellipse15 = true;
  }
  if ((key == 'K' || (key == 'k'))) {
    ellipse16 = true;
  }
  if ((key == 'L' || (key == 'l'))) {
    ellipse17 = true;
  }
  if ((key == 'Z' || (key == 'z'))) {
    ellipse18 = true;
  }
  if ((key == 'X' || (key =='x'))) {
    tree = true;
  }
  if ((key == 'C' || (key == 'c'))) {
    stump = true;
  }
}
 

    

  
  