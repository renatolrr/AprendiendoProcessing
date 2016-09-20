Catcher catcher;

void setup(){
  size(400,400);
  catcher = new Catcher(32);
}

void draw(){
  background(255);
  catcher.setLocation(mouseX, mouseY);
  catcher.display();
}

class Catcher{
  float r;
  float x;
  float y;
  
  Catcher(float tempR){
    r = tempR;
    x = 0;
    y = 0;
   }
   
   void setLocation(float tempX, float tempY){
     x = tempX;
     y = tempY;
   }
   
   void display(){
     stroke(0);
     fill(175);
     ellipse(x, y, r*2, r*2);
   }
}
