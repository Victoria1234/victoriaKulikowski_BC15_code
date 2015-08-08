int x;
int y;

void setup() {
  size(500, 500);
  background(500, 500);
}

void draw() {

for (int y = -80; y <= 500; y += 20) {
  for (int x = -110; x <= 500; x +=20) {
    ellipse(x + y/5.0, y + x/10.0, 4, 7);
  }
}
}