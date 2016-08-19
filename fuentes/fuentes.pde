// ejemplo by renatolrr

PFont zigBlack;
float x = 33;
float y = 60;

void setup() {
  size(400,200);
  zigBlack=createFont("Serto Jerusalem Outline", 48);
  textFont(zigBlack);
  noStroke();
}

void draw() {
  fill(204, 120);
  rect(0, 0, width, height );
  fill( 0);
  if((mouseX >= x) && (mouseX <= x+55 ) && (mouseY >= y-24 ) && (mouseY <= y)){
  x += random(-2, 2);
  y += random(-2, 2);
  }
  text("Hola Mundo", x, y);
}