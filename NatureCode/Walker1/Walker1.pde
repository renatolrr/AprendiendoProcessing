//crear w como objeto walker1

Walker w;

//setup
void setup(){
  size(640, 360);
  w = new Walker();
  background(255);
}

//draw
void draw(){
  w.step2();
  w.display();
}
  