Catcher catcher;
Timer timer;
Drop[] drops;

int totalDrops = 0;

void setup(){
  size(400,400);
  catcher = new Catcher(32);
  drops = new Drop[1000];
  timer = Timer(300);
  timer.start();
}

void draw(){
  background(255);
  catcher.setLocation(mouseX, mouseY);
  catcher.display();

  if(timer.isFinished()){
    drops[totalDrops] = new Drop();
    totalDrops++;
    if(totalDrops >= drops.length){
      totalDrops = 0;
      
    }
    
  }
  
  if(ball1.intersect(ball2)){
    ball1.highlight();
    ball2.highlight();
  }

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
  color c = color(100, 50);
    
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
 
  void highlight(){
    c = color(0, 150);
  }
 
  void display(){
    stroke(0);
    fill(c);
    ellipse(x, y, r*2, r*2);
    c= color(100,50);
  }

boolean intersect(Ball b){
  float distance = dist( x, y, b.x, b.y);
  if (distance <= r + b.r){
    return true;
  }else{
    return false;
  }
}
}
