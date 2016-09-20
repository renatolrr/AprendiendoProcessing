Catcher catcher;

Ball ball1;
Ball ball2;

void setup(){
  size(400,400);
  catcher = new Catcher(32);

  ball1 = new Ball(64);
  ball2 = new Ball(32);
}

void draw(){
  background(255);
  catcher.setLocation(mouseX, mouseY);
  catcher.display();

  ball1.move();
  ball2.move();
  ball1.display();
  ball2. display();
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

class Ball{
  float r;
  float x,y;
  float xspeed, yspeed;
  
  Ball(float tempR){
    r = tempR;
    x = random(width);
    y = random(height);
    xspeed = random(-5, 5);
    yspeed = random(-5, 5);
  }

  void move(){
    x += xspeed;
    y += yspeed;
    
    if(x > width || x < 0){
      xspeed *= -1;
    }
    
    if(y > height || y < 0){
      yspeed *= -1;
    }
  }
  void display(){
    stroke(0);
    fill(0, 50);
    ellipse(x, y, r*2, r*2);
  }
}
