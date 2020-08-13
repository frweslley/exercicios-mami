PImage imagem_1;
PImage imagem_2;
PImage imagem_3;
PImage imagem_4;

void setup() {
  size(800, 400);
  surface.setResizable(true);
  imagem_1 = loadImage("00.png");
  imagem_2 = loadImage("01.png");
  imagem_3 = loadImage("02.png");
  imagem_4 = loadImage("03.png");
  imageMode(CENTER);
}

void draw() {
  background(#3d7b27);
  adapta(imagem_1, imagem_2, imagem_3, imagem_4);
}

void adapta(PImage a, PImage b, PImage c, PImage d) {
  int tela = width;
  if(tela <= 400){
    image(d, width/2, height/2);
  }
  else{
    if(tela <= 500 && tela > 400){
      image(c, width/2, height/2);
    }
    else{
      if(tela <= 600 && tela > 500){
        image(b, width/2, height/2);
      }
      else{
        if(tela > 600){
          image(a, width/2, height/2);
        }
      }
    }
  }
  
  
  
  
}
