import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class force extends PApplet {


class Mover{
  PVector location;
  PVector velocity;
  PVector acceleration;

  float mass;

  Mover(float m, float x, float y){
    mass = m;
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }

  public void applyForce(PVector force){
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }

  public void update(){
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  public void display(){
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, mass*16, mass*16);
  }

  public void checkEdges(){
    if(location.x > width){
      location.x = width;
      velocity.x *= -1;
    }else if(location.x < 0){
      velocity.x *= -1;
      location.x = 0;
    }
    if(location.y > height){
      velocity.y *= -1;
      location.y = height;
    }
  }
}

Mover[] movers = new Mover[100];

public void setup(){
  
  for(int i = 0; i < movers.length; i++){
    movers[i]= new Mover(random(0.1f, 5), i * 10, 0);
  }
}

public void draw(){
  // background(255);

  PVector wind = new PVector(0.01f, 0);
  PVector gravity = new PVector(0, 0.1f);
  for(int i = 0; i < movers.length; i++){
    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);
    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();

  }
}
  public void settings() {  size(1000, 400); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "force" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
