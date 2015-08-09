int mode = 1;
int lastMode = 20;

PFont yuppy;
PImage snowflake;
boolean drawWinter = false;

void setup() {
  size(500, 500);
  background(132, 200, 255);
  yuppy = createFont("YuppyTC-Regular", 48);
  textFont(yuppy);
}

void draw() {

  if (mode == 1) { // 1st snowman
  fill(255);
  ellipse(60,420, 75, 75);
  } else if (mode == 2) {
  ellipse(60, 360, 50, 50);
  } else if (mode == 3) {
    fill(0);
   ellipse(70, 360, 5, 5);
  } else if (mode == 4) {
    ellipse(50, 360, 5, 5);
  } else if (mode == 5) {
    ellipse(60, 400, 2, 2);
  } else if (mode == 6) {
    ellipse(60, 420, 2, 2);
  } else if (mode == 7) {
    ellipse(60, 440, 2, 2);
  } else if (mode == 8) { //2nd snowman
    fill(255);
    ellipse(190, 420, 75, 75);
  } else if (mode == 9) {
    ellipse(190, 360, 50, 50);
  } else if (mode == 10) {
    fill(0);
    ellipse(180, 360, 5, 5);
  } else if (mode == 11) {
    ellipse(200, 360, 5, 5);
  } else if (mode == 12) {
    ellipse(190, 400, 2, 2);
  } else if (mode == 13) {
    ellipse (190, 415, 2, 2);
  } else if (mode == 14) {
    ellipse (190, 430, 2, 2);
  } else if (mode == 15) { // 1st hat
    rect(35, 330, 50, 10);
  } else if (mode == 16) {
    rect(43, 300, 35, 30);
  } else if (mode == 17) { //2nd hat
    rect(165, 330, 50, 10);
  } else if (mode == 18) {
    rect(173, 300, 35, 30);
  }
  
  if (drawWinter == true) {
    text("Happy Winter!", 180, 180);
  }
  
  //fill(255);
  //ellipse(random(500),random(500),10,10);
  //noStroke();
  
}

  




void mousePressed() {
  mode++;
  if (mode > lastMode) {
    mode = 1;
  }
}

void keyPressed() {
  if ((key == 'W' || (key == 'w'))) {
    drawWinter = true;

  }
}





  