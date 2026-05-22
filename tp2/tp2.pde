int pantalla = 0;

int tiempo;

int textoX = 50;

// imagenes

PImage inicio;

PImage RE1a; // para Chris de RE1 
PImage RE1b; //para Jill de RE1

PImage RE2a; //para Leon de RE2
PImage RE2b; //para Jill de RE 2 y el 3 tmb 

PImage RE4a; //para Leon de RE4
PImage RE4b; //para Ashley de RE4

PImage RE5a; //para Chris de RE5
PImage RE5b; //para Sheeva 

PImage Umbrella;


// fuentes

PFont fuenteInicio;
PFont fuenteTexto;

void setup() {

  size(640, 480);

  // imagen inicio
  inicio = loadImage("Imagen 1 RE.png");

  // resident evil 1
  RE1a = loadImage("RE1a.png");
  RE1b = loadImage("RE1b.png");

  // resident evil 2 y 3
  RE2a = loadImage("RE2a.png");
  RE2b = loadImage("RE2b.png");

  // resident evil 4
  RE4a = loadImage("RE4a.png");
  RE4b = loadImage("RE4b.png");

  // resident evil 5
  RE5a = loadImage("RE5a.png");
  RE5b = loadImage("RE5b.png");

  // final
  Umbrella = loadImage("Imagen 2 RE.png");

  // fuentes
  fuenteInicio = loadFont("Resident_Evil.vlw");
  fuenteTexto = loadFont("Constantia-Italic-48.vlw");

  // tiempo
  tiempo = millis();
}

void draw() {

  background(0);

  // pantalla inicio

  if (pantalla == 0) {

    pantallaInicio();
  }

  // tiempo para pasar las pantallas

  if (millis() - tiempo > 8000 && pantalla >= 1 && pantalla < 5) {

    pantalla = pantalla + 1;

    tiempo = millis();

    textoX = 50;
  }

  // resident evil 1

  else if (pantalla == 1) {

    pantallaRE1();
  }

  // resident evil 2 y 3

  else if (pantalla == 2) {

    pantallaRE2();
  }

  // resident evil 4

  else if (pantalla == 3) {

    pantallaRE4();
  }

  // resident evil 5

  else if (pantalla == 4) {

    pantallaRE5();
  }

  // pantalla final

  else if (pantalla == 5) {

    pantallaFinal();
  }
}

// pantalla inicio

void pantallaInicio() {

  image(inicio, 0, 0, 640, 480);

  fill(255);

  textAlign(CENTER);

  textFont(fuenteInicio);

  textSize(25);

  text("PRESIONE ESPACIO PARA COMENZAR", 320, 450);
}

// resident evil 1

void pantallaRE1() {

  background(0);

  image(RE1a, 40, 90, 220, 300);

  image(RE1b, 380, 90, 220, 300);

  fill(180, 0, 0);

  textAlign(CENTER);

  textFont(fuenteTexto);

  textSize(55);

  text("Resident Evil 1", 320, 60);

  fill(255);

  textSize(22);

  textoX = textoX + 1;

  text("Chris y Jill investigan la mansion Spencer.", textoX, 440);
}

// resident evil 2 y 3

void pantallaRE2() {

  background(0);

  image(RE2a, 40, 90, 220, 300);

  image(RE2b, 380, 90, 220, 300);

  fill(180, 0, 0);

  textAlign(CENTER);

  textFont(fuenteTexto);

  textSize(55);

  text("Resident Evil 2 y 3", 320, 60);

  fill(255);

  textSize(22);

  textoX = textoX + 1;

  text("Raccoon City es destruida por el virus.", textoX, 440);
}

// resident evil 4

void pantallaRE4() {

  background(0);

  image(RE4a, 40, 90, 220, 300);

  image(RE4b, 380, 90, 220, 300);

  fill(180, 0, 0);

  textAlign(CENTER);

  textFont(fuenteTexto);

  textSize(55);

  text("Resident Evil 4", 320, 60);

  fill(255);

  textSize(22);

  textoX = textoX + 1;

  text("Leon rescata a Ashley Graham.", textoX, 440);
}

// resident evil 5

void pantallaRE5() {

  background(0);

  image(RE5a, 40, 90, 220, 300);

  image(RE5b, 380, 90, 220, 300);

  fill(180, 0, 0);

  textAlign(CENTER);

  textFont(fuenteTexto);

  textSize(55);

  text("Resident Evil 5", 320, 60);

  fill(255);

  textSize(22);

  textoX = textoX + 1;

  text("Chris enfrenta nuevas amenazas biologicas.", textoX, 440);
}

// pantalla final con el loguito de umbrella 

void pantallaFinal() {

  background(0);

  image(Umbrella, 120, 120, 400, 200);

  fill(255);

  textAlign(CENTER);

  textFont(fuenteTexto);

  textSize(40);

  text("LA SAGA CONTINUA...", 320, 80); //hay mas juegos pero eran muchos para poner en un solo sketch creo yo

  // boton

  fill(120, 0, 0);

  rect(220, 380, 200, 60);

  fill(255);

  textSize(28);

  text("REINICIAR", 320, 420);
}

// empezar con el espacio

void keyPressed() {

  if (pantalla == 0) {

    if (key == ' ') {

      pantalla = 1;

      tiempo = millis();
    }
  }
}

// para reiniciar

void mousePressed() {

  if (pantalla == 5) {

    if (mouseX > 220 && mouseX < 420 &&
      mouseY > 380 && mouseY < 440) {

      pantalla = 0;

      tiempo = millis();

      textoX = 50;
    }
  }
}
