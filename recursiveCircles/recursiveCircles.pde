void setup(){
  size(640, 640);
}

void draw(){
  background(255);
  drawCircle1(width/2, height/2, 200);
  drawCircle2(width/2, height/2, 200);

}

void drawCircle1(float x, float y, float radius){
  stroke(0);
  noFill();
  ellipse( x, y, radius, radius);
  if(radius > 2){
    drawCircle1(x + radius/2, y, radius/2);
    drawCircle1(x - radius/2, y, radius/2);
  }
}

void drawCircle2(float x, float y, float radius){
  stroke(0);
  noFill();
  ellipse( x, y, radius, radius);
  if(radius > 2){
    drawCircle2(x , y + radius/2, radius/2);
    drawCircle2(x , y - radius/2, radius/2);
  }
}
