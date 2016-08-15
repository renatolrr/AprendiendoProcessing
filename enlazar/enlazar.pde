// ejemplo by renatolrr
int n;
Cuadrado da;
Circulo db;

void setup() {
  size(400, 400);
  n = 8;
  da = new Cuadrado(25,25,50);
  db = new Circulo(25,25,25);  
}
 
void draw() {    
  background(#502376);
 // da.dibuja(3);
  da.dibuja(1);
  db.dibuja();
}

class Cuadrado{
  int x, y, ancho,despl, s;
  Cuadrado(int xpos, int ypos, int xancho){
     x = xpos;
     y = ypos;
     ancho = xancho;
  }
  void dibuja(int xdespl){
    despl = xdespl;
    ancho = ancho/2;
    s=s-ancho;
    s=s+(despl*ancho*2);
    rect(x+s,y+s,x+s,y+s);
  }
}

class Circulo{
  float x, y, radio;
  Circulo(float xpos, float ypos, float xradio){
     x = xpos;
     y = ypos;
     radio = xradio;
  }
  void dibuja(){
    ellipseMode(RADIUS);
    ellipse(x,y,radio,radio);
     
  }
}