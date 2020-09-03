final int PARADO = 0;
final int MARTELANDO = 1;
final int PULANDO = 2;
final int PULANDO_MARTELANDO = 3;
final int MARTELA_PULANDO = 4;

int estadoMario = PARADO;

PImage imgParado, imgMartelando, imgPulando;

void setup() {
  size(600, 600);
  imgParado = loadImage("parado.png");
  imgMartelando = loadImage("martelando.png");
  imgPulando = loadImage("pulando.png");
}

void draw() {

  mostraMario(estadoMario);
  MEF();
  println(estadoMario);
}

void MEF() {
  
  if (keyPressed == true) { 
    
    if (keyCode == UP) {
      if (estadoMario ==PARADO) {
        estadoMario = PULANDO;

      } else if (estadoMario == MARTELANDO) {
        estadoMario = PULANDO_MARTELANDO;
      }
    }
    else if (key == ' ') {
      if (estadoMario ==PARADO) 
        estadoMario =MARTELANDO;
      else if (estadoMario ==PULANDO)
        estadoMario =MARTELA_PULANDO;
    }
    
   
  } else {
    estadoMario = PARADO;
  }
}

void mostraMario(int estado) {
  background(255);
  if (estado == PARADO) {
    image(imgParado, 250, 200);
  } else if (estado == MARTELANDO) {
    image(imgMartelando, 250, 200);
  } else if (estado == PULANDO) {
    image(imgPulando, 250, 50);
  } else if (estado == PULANDO_MARTELANDO) {
    image(imgMartelando, 250, 50);
  } else if (estado == MARTELA_PULANDO) {
    image(imgMartelando, 250, 200);
  }
  
}
