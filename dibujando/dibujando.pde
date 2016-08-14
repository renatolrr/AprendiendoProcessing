// ejemplo by renatolrr
Diagonals da, db;

void setup() {
  size(400, 400);
  da = new Diagonals(0,80,1,2,0);
  db = new Diagonals(0,55,2,6,255);  
}
 
void draw() {    
  background(#502376);
  fill(204, 255);
  rect(115, 115, 140, 140);
  fill(204, 220);
  rect(105, 105, 130, 130);
  fill(153);
  bezier(132, 120, 180, 105, 180, 175, 130, 175);
  fill(102);
  bezier(85, 20, 40, 10, 60, 90, 15, 80);
  //da.update();
  //db.update();
}

class Diagonals{
  int x, y, speed, thick, gray;
  Diagonals(int xpos, int ypos, int s, int t, int g){
     x = xpos;
     y = ypos;
     speed = s;
     thick = t;
     gray = g;
  }
  void update(){
     strokeWeight(thick);
     stroke(gray);
     line(x, y , x+20, y-40);
     line(x+10, y, x+30, y-40);
     line(x+20, y, x+40, y-40);
     x = x +  speed;
     if (x >100){
        x = -100;
     }
  }
}