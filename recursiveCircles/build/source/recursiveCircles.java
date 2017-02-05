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

public class recursiveCircles extends PApplet {

public void setup(){
  
}

public void draw(){
  background(255);
  drawCircle1(width/2, height/2, 200);
  drawCircle2(width/2, height/2, 200);

}

public void drawCircle1(float x, float y, float radius){
  stroke(0);
  noFill();
  ellipse( x, y, radius, radius);
  if(radius > 2){
    drawCircle1(x + radius/2, y, radius/2);
    drawCircle1(x - radius/2, y, radius/2);
  }
}

public void drawCircle2(float x, float y, float radius){
  stroke(0);
  noFill();
  ellipse( x, y, radius, radius);
  if(radius > 2){
    drawCircle2(x , y + radius/2, radius/2);
    drawCircle2(x , y - radius/2, radius/2);
  }
}
  public void settings() {  size(640, 640); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "recursiveCircles" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
