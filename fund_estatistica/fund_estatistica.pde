PImage img;
float t=0, mediaT, somaT = 0;
float v = 0, somaV = 0, mediaV;
String a, b, c;

void setup() {
  
  size(640, 480);
  
  img = loadImage("cinza3.png");
  for (int x=0; x<640; x++) {    
    for (int y=0; y<480; y++) {
      color cor = img.get(x, y);
      t = red(cor);
      somaT = somaT + t;
    }
  }
  mediaT = somaT/(640*480);

  
  for (int x=0; x<640; x++) {    
    for (int y=0; y<480; y++) {
      color cor = img.get(x, y);
      t = red(cor);
      v = (t-mediaT)*(t-mediaT);
      somaV = somaV + v;
    }
  }
  mediaV = somaV/(640*480);

  a = "Média: " + str(mediaT);
  b = "Variância: " + str(mediaV);
  c = "Desvio Padrão: " + str(sqrt(mediaV));
  println("Média:", mediaT);
  println("Variância:", mediaV);
  println("Desvio Padrão:", sqrt(mediaV));
}

void draw() {  

  image(img, 0, 0);
  
  
  fill(200, 10, 200);
  textSize(18);
  text(a, 32, 50); 
  text(b, 32, 78); 
  text(c, 32, 106); 
}
