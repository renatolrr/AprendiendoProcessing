
Mover[] movers = new Mover[20];

void setup(){
  size(640, 360);
  for(int i = 0; i < movers.length; i++){
    movers[i] = new Mover();
  }
}

void draw(){
  background(255);
  
  for(int i = 0; i < movers.length; i++){
    movers[i].update();
    movers[i].checkEdges();
    movers[i].display();
  }
}

class Mover{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  
  Mover(){
    location = new PVector(random(width), random(height));
    velocity = new PVector(0, 0);
    //acceleration = new PVector(-0.001, 0.01);
    topspeed = 10;
  }
  
  void update(){

    //acceleration = PVector.random2D();
    
    PVector mouse = new PVector(mouseX, mouseY);
    PVector dir = PVector.sub(mouse, location);
    
    dir.normalize();
    
    dir.mult(0.5);
    
    acceleration = dir;
    
    
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }

  void display(){
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 16, 16);
  }
  
  void checkEdges(){
    if(location.x > width){
      location.x = 0;
    }else if(location.x < 0){
      location.x = width;
    }
    if(location.y > height){
      location.y = 0;
    }else if(location.y < 0){
      location.x = height;
    }
  }
}