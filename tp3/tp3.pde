// LINK a Youtube explicando: https://youtu.be/G8tDjLgvduc
//Hola profe te dejo las instrucciones para las teclas que usé para la ilusion:
// Con el mouse podes mover y cambiar la dirección
// Con el click del mouse se puede cambiar a un modo psicodelico con colores random. Volviendo a clikear se vuelve a blanco y negro
// Con el espacio podes reiniciar la ilusion y los colores a blanco y negro normal
// dejar el mouse aprox por en medio de la pantalla deja quieta la ilusion


PImage referencia;

float giro = 0;
float velocidad = 0.01;

boolean psicodelico = false;
boolean invertido = false;

void setup() {

  size(800, 400);

  referencia = loadImage("35.png");
}

void draw() {

  background(0);

  image(referencia, 0, 0, 350, 400);

  if (psicodelico) {
    for (int x = 360; x < width; x += 40) {
      for (int y = 20; y < height; y += 40) {
        fill(generarColor(0), 60);
        noStroke();
        ellipse(x, y, 4, 4);
      }
    }
  }

  translate(550, 200);

  float d = dist(mouseX, mouseY, width/2, height/2);

  float control = map(d, 0, width/2, 0, 1);
  control = constrain(control, 0, 1);

  velocidad = map(mouseX, 0, width, -0.05, 0.05);
  velocidad *= control; // frena en el centro

  if (invertido) {
    giro -= velocidad;
  } else {
    giro += velocidad;
  }

  rotate(giro);

  dibujarEspiral(300, 30);
}

void dibujarEspiral(int tamaño, int cantidad) {

  rectMode(CENTER);

  for (int i = 0; i < cantidad; i++) {

    pushMatrix();

    rotate(radians(i * 8));

    float escala = tamaño - i * 10;

    if (psicodelico) {

      fill(
        sin(frameCount*0.05 + i)*127 + 128,
        sin(frameCount*0.03 + i)*127 + 128,
        sin(frameCount*0.08 + i)*127 + 128
        );
    } else {

      if (i == cantidad - 1) {
        fill(255);
      } else if (i % 2 == 0) {
        fill(255);
      } else {
        fill(0);
      }
    }

    rect(0, 0, escala, escala);

    popMatrix();
  }
}

color generarColor(int n) {

  return color(
    random(50 + n, 255),
    random(50 + n, 255),
    random(50 + n, 255)
    );
}


// mouse
void mousePressed() {

  psicodelico = !psicodelico;
}


// teclado
void keyPressed() {

  if (key == ' ') {
    giro = 0;
    velocidad = 0.01;
    psicodelico = false;
    invertido = false;
  }

  if (key == 'r' || key == 'R') {
    invertido = !invertido;
  }
}
