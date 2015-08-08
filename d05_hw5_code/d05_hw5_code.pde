int x;

void setup() {
  size(500, 500);
  
}

void draw() {
 background(30, 200, 50);
 stroke(0, 0, 255);
 for (int x = -30; x<500; x +=10) {
   line(x, 0, x+15, 500);
 }
 stroke(255, 255, 0);  
 for (int x = 20; x <=500; x +=5) {
   line(20, x, 500, x);
 }
}