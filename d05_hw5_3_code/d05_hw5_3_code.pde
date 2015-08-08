float x;
float y;
float d;

void setup() {
  size(500, 500);
   background(255, 0, 0);
}

void draw() {
 
  rectMode(CENTER);
  for (int y = 9; y < height; y += 20);
    for (int x = 9; x < width; x += 20) {
      for(int d = 18; d > 0; d -= 4) {
        rect(x, y, d, d);
        
        y++;
      }
    }
}