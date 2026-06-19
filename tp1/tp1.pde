//Hola profe este es el recuperatorio del TP1, lo hice más básico y creo que quedó hasta mejor. Dijiste que te gusta que dejemos anotaciones asi que dejé un par para indicaciones. Gracias!!
PImage img;

void setup() {
  size(800, 400);
  img = loadImage("piramides.jpg");
}
void draw() {
  background(255);
println(mouseX, mouseY); //esto lo recomendaste para usar las coordenadas

  // las piramides
  image(img, 0, 0, 400, 400);

  noStroke();

  // cielo y arena de abajo
  fill(170, 200, 230);
  rect(400, 0, 400, 280);

  fill(235, 210, 170);
  rect(400, 280, 400, 120);

  // piramides
  fill(200, 170, 120);
  triangle(650, 300, 780, 300, 715, 150);
  fill(180, 150, 100);
  triangle(715, 150, 780, 300, 715, 300);
  fill(210, 180, 130);
  triangle(560, 300, 680, 300, 620, 180);
  fill(190, 160, 110);
  triangle(620, 180, 680, 300, 620, 300);
  fill(190, 160, 110);
  triangle(500, 300, 580, 300, 540, 220);
  fill(170, 140, 90);
  triangle(540, 220, 580, 300, 540, 300);
  fill(180, 150, 100);
  triangle(450, 300, 500, 300, 475, 260);
  fill(170, 140, 90);
  triangle(500, 300, 540, 300, 520, 270);
  fill(160, 130, 85);
  triangle(540, 300, 580, 300, 560, 280);
}
