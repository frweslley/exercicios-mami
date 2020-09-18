PImage entrada;
PImage saida;
color corEntrada, corSaida;
float r, g, b;

void setup() {
  size(420, 650);
  entrada = loadImage("leminski.jpg");
  saida = createImage(420, 650, RGB);
  
  saida = filtroRuido(entrada);
  saida = filtroCinza(saida);
  saida = filtroVermelho(saida);
  saida = filtroAmarelo(entrada);

  image(saida, 0, 0);
}

PImage filtroRuido(PImage img) {
  for (int x = (img.width - 1); x >= 0; x--) {
    for (int y = (img.height - 1); y >= 0; y--) {
      int flag = (int)random(1, 10);
      if (flag <= 3) {
        corEntrada = img.get(x, y);
        corSaida = color(random(255), random(255), random(255));
        img.set(x, y, corSaida);
      } else {
        corEntrada = img.get(x, y);
        r = red(corEntrada);
        g = green(corEntrada);
        b = blue(corEntrada);
        corSaida = color(r, g, b);
        img.set(x, y, corSaida);
      }
    }
  }
  return img;
}

PImage filtroCinza(PImage img) {
  for (int x = (img.width - 1); x >= 0; x--) {
    for (int y = (img.height - 1); y >= 0; y--) {
      corEntrada = img.get(x, y);
      r = 0.3 * red(corEntrada);
      g = 0.59 * green(corEntrada);
      b = 0.11 * blue(corEntrada);
      corSaida = color(r + g + b);
      img.set(x, y, corSaida);
    }
  }
  return img;
}

PImage filtroVermelho(PImage img) {
  for (int x = (img.width - 1); x >= 0; x--) {
    for (int y = (img.height - 1); y >= 0; y--) {
      corEntrada = img.get(x, y);
      r = red(corEntrada);
      corSaida = color(r, 0, 0);
      img.set(x, y, corSaida);
    }
  }
  return img;
}

PImage filtroAmarelo(PImage img) {
  for (int x = (img.width - 1); x >= 0; x--) {
    for (int y = (img.height - 1); y >= 0; y--) {
      corEntrada = img.get(x, y);
      r = red(corEntrada);
      corSaida = color(r, r, 0);
      img.set(x, y, corSaida);
    }
  }
  return img;
}
