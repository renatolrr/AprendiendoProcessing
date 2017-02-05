class Walker{
  //variables dentro de la clase
  int x;
  int y;
  
  //constructor
  Walker(){
    x = width/2;
    y = height/2;  
  }
  
  //mostrar
  void display(){
  stroke(0);
  point(x, y);
  }
  
  //andar
  void step(){
    int choice = int(random(5));
    if (choice ==0) {
      x++;
    } else if (choice == 1) {
      x--;
    } else if(choice == 2) {
      y++;
    } else {
      y--;
    }
  }
  
  void step1(){
    int stepx = int( random(3)) - 1;
    int stepy = int( random(3)) - 1;
    x += stepx;
    y += stepy;
  }
  
  void step2(){
    float stepx = random(-1, 1);
    float stepy = random(-1, 1);
    x += stepx;
    y += stepy;
  }
  
}