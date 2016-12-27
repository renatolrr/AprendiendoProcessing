void setup(){
  size(300, 100);
  // frameRate(120);
}

int i = 0;

void draw(){
  background(200);
  // line(i%300, 0, i%300, 100);
  // i++;
  line(mouseX, 0, mouseX, 100);
}
