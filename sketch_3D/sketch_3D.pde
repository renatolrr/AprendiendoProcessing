// ejemplo by renatolrr

void setup() {
  size(100,100,P3D);
  noStroke();
  background(0);
  lights();
  translate(0, height/2, -height/2);
  fill(153);
  box(50);
  translate(width, 0, 0);
  fill(255);
  sphere(50);
  
}

void draw() {

}