// ejemplo by renatolrr

void setup() {
  size(400,400,P3D);
  fill(204);
  strokeWeight(2);
}

void draw() {
  lights();
  background(0);

  if(mousePressed == true){
    directionalLight(255, 255, 255,0, 1, 0);
  }else{
    directionalLight(255, 255, 255, 1, 0, 0);
  };
  
  float r = map(mouseX, 0, width, 0 , 255);
  ambient(r, r, 126);

  
  float x = mouseY*2;
  camera(x, x, 120.0, 0.0, 1.0, 0.0, 0.0, 1.0, 0.0);
  noStroke();
  box(60);
  translate (100, 100, 0);
  sphere(60);
}