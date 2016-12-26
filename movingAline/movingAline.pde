void setup(){
  size(300, 100);
}

int i = 0;

void draw(){
  background(200);
  line(i%300, 0, i%300, 100);
  i++;
}
