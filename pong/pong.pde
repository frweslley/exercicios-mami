int jogadorY = 0;
int bolaX = 10;
int bolaY = 300;
int dX = 5;
int dY = 5;

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  jogador();
  bola();
  colisao_jogador();
}

void jogador() {
  rect(570, jogadorY, 20, 100);
  if (keyPressed == true)
    if (keyCode == DOWN)
      jogadorY += 10;
    else if (keyCode == UP)
      jogadorY -= 10;
      
  //posicao
  if (jogadorY >= 500)
    jogadorY = 500;
  if (jogadorY <= 0)
    jogadorY = 0;
}


void bola() {
  ellipse(bolaX, bolaY, 20, 20);
  bolaX = bolaX + dX;
  bolaY = bolaY + dY;

  if (bolaX <= 10 || bolaX >= 590)
    dX = -dX;

  if ((bolaY >= 590) || (bolaY <= 10))
    dY = -dY;
}

void colisao_jogador () {
  if ((bolaX+10 == 570) && (bolaY >= jogadorY) && (bolaY <= jogadorY + 100)) {
    dX = -dX;
  }
}
