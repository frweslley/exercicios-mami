void setup() {
  size(800, 500);
  noStroke();
  rectMode(CENTER);
}

void des_retangulo(float m) {
  fill(#009C3B);
  rect(width/2, height/2, m*20, m*14);
}

void des_losango(float m) {
  fill(#FFDF00);
  quad(width/2, height/2-m*14/2+m*1.7, width/2+m*20/2-m*1.7, height/2, width/2, height/2+m*14/2-m*1.7, width/2-m*20/2+m*1.7, height/2);
}

void des_circulo(float m) {
  fill(#002776);
  ellipse(width/2, height/2, m*3.5*2, m*3.5*2);
}

void draw() {
  background(255);
  float altura = mouseY;
  float modulo = altura/14;
  des_retangulo(modulo);
  des_losango(modulo);
  des_circulo(modulo);
  
}
