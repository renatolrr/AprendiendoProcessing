// ejemplo by renatolrr

void setup() {
  size(400, 400);
}
 
void draw() {
  background(255);
  rectMode(CENTER);
  for(int y = 9; y < height; y += 20){
    for(int x = 9; x < width; x += 20){
      for(int d = 18; d > 0; d -= 4){
        if( x == 1){
          ellipse(x, y, d, d);
        }else{
          rect(x, y, d, d);
        }
      } 
    }   
  } 
}