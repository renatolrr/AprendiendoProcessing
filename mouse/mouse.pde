// ejemplo by renatolrr
float x = 0.0;

void setup() {
  size(100, 100);
  noLoop();
}
 
void draw() {
  
  frameRate(60);
  
  background(204);
 
  if (x < 80){
    if (x < 40){
      ellipse(50, 50, 20, 20);
    }else{
      ellipse(50, 50, 60, 60);
    }
    }else{
      rect(20, 20, 60, 60);
    }
    line(x, 0, x, 100);
    x += 0.25;
}