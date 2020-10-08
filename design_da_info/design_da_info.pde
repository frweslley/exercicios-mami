void setup() {

  size(260, 400);
  background(255);
  
  fill(25);
  textSize(12);
  text("Vendedor 1", 60, 265);
  text("Vendedor 2", 60, 295);
  text("Vendedor 3", 60, 325);
  
  fill(255, 0, 0, 100);
  ellipse(40, 260, 10, 10);
  fill(0, 255, 0, 100);
  ellipse(40, 290, 10, 10);
  fill(0, 0, 255, 100);
  ellipse(40, 320, 10, 10);
  
  beginShape();
    fill(255, 0, 0, 100);
    vertex(20, 200);
    for (int mes = 1; mes <= 12; mes++) {
      int vendas = int (random (11) );
      int x = mes*20;
      int y = 200 - vendas*20;
      vertex(x, y);
      println("VENDEDOR 1 - mes: " + mes + " / vendas: " + vendas);
    }
    vertex(240, 200);
  endShape(CLOSE);
  
   beginShape();
    fill(0, 255, 0, 100);
    vertex(20, 200);
    for (int mes = 1; mes <= 12; mes++) {
      int vendas = int (random (11) );
      int x = mes*20;
      int y = 200 - vendas*20;
      vertex(x, y);
      println("VENDEDOR 2 - mes: " + mes + " / vendas: " + vendas);
    }
    vertex(240, 200);
  endShape(CLOSE);
  
  beginShape();
    fill(0, 0, 255, 100);
    vertex(20, 200);
    for (int mes = 1; mes <= 12; mes++) {
      int vendas = int (random (11) );
      int x = mes*20;
      int y = 200 - vendas*20;
      vertex(x, y);
      println("VENDEDOR 3 - mes: " + mes + " / vendas: " + vendas);
    }
    vertex(240, 200);
  endShape(CLOSE);
  
}
