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

public class movingAline extends PApplet {

public void setup(){
  
}

int i = 0;

public void draw(){
  background(200);
  line(i%300, 0, i%300, 100);
  i++;
}
  public void settings() {  size(300, 100); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "movingAline" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
