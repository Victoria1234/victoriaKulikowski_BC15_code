PImage face;

void setup() {
  size(500, 500);
  face = loadImage("face.jpg");
  
}

void draw() {
 imageMode(CORNER);
 image(face, 0, 0, 500, 500);
 strokeWeight(30);
 stroke(255, 0, 0);
 ellipse(mouseX-10, mouseY+10, 100, 100);
 ellipse(mouseX+200, mouseY-5, 100, 100);
   if(mousePressed == true) {
     fill(0, 255, 0);
   } else {
     fill(0);
   }
}