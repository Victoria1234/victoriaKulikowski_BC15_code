PFont text;
PImage butterflyweed;
PImage joy;

void setup() {
  size(500, 500);
  text = loadFont("Weibei-TC-Bold-48.vlw");
  butterflyweed = loadImage("butterflyweed.jpg");
  joy = loadImage("joy.png");
}
  
  void draw() {
    
    float speed = map(mouseX, 0, width, 0.001, 0.1);
    float sinOfTime = sin(frameCount * speed);
    float scale = map(sinOfTime, -1, 1, 100, 500);
    
    image(joy, 0, 0, scale, scale);
    
    fill(0);
    textFont(text, 48);
    text("Cute puppy", 250, 475);
    
    int x = int(random(butterflyweed.width));
    int y = int(random(butterflyweed.height));
    int loc = x + y * (butterflyweed.width);
    loadPixels();
    float r = red(butterflyweed.pixels[loc]);
    float g = green(butterflyweed.pixels[loc]);
    float b = blue(butterflyweed.pixels[loc]);
    noStroke();
    fill(r, g, b, 100);
    ellipse(x, y, 10, 10);
    
    translate(width/2, height/2);
    
    if(keyPressed) {
      if(key == ' ') {
        saveFrame();
      }
    }
    
    
  }
    