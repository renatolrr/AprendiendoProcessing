// ejemplo by renatolrr

void setup() {
  size(600, 600);
}
 
void draw() {
  background(0);
  stroke(102);
  line(0, height/2, width, height/2);
  noStroke();
  int d = mouseY/2+10;
  fill(0, 0, d);
  ellipse( mouseX, height/2, d, d);
  int iX = width - mouseX;
  int iY = height - mouseY;
  int iD = (iY/2) + 10;
  fill(0, iY, 0);
  ellipse( iX, height/2, iD, iD);  
}