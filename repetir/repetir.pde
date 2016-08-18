// ejemplo by renatolrr

void setup() {
  size(200, 200);
}
 
void draw() {
  float n = (mouseX+mouseY)/2;
  println(n);
  background(255);
  rectMode(CENTER);
  for(int y = 9; y < height; y += 20){
    for(int x = 9; x < width; x += 20){
      for(int d = 18; d > 0; d -= 4){
        if(((x < n) || ( y < n))||(x > width-n) || ( y > height-n)) {
          ellipse(x, y, d, d);
        }else{
          rect(x, y, d, d);
        }
      } 
    }   
  } 
}