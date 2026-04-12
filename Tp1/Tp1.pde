PImage img;

void setup() {
  size(800, 400);
  img = loadImage("piramides.jpg");
  noiseDetail(3, 0.5);
}

void draw() {
  background(255);

  image(img, 0, 0, 400, 400);

  for (int y = 0; y < 240; y++) {
    float t = map(y, 0, 240, 0, 1);
    stroke(lerpColor(color(130,170,210), color(200,220,240), t));
    line(400, y, 800, y);
  }

  for (int x = 400; x < 800; x++) {
    for (int y = 240; y < 400; y++) {
      float n = noise(x*0.015, y*0.02);
      stroke(lerpColor(color(220,190,140), color(240,210,160), n));
      point(x, y);
    }
  }

  noStroke();

  piramide(700, 170, 120, 140, color(210,180,130));
  piramide(600, 130, 170, 200, color(200,170,120));
  piramide(520, 190, 100, 120, color(190,160,110));

  piramide(460, 260, 60, 70, color(200,170,120));
  piramide(500, 260, 55, 65, color(195,165,115));
  piramide(540, 260, 50, 60, color(185,155,105));
}

void piramide(float x, float y, float base, float alto, color c) {
  fill(c);
  triangle(x-base/2, y+alto, x+base/2, y+alto, x, y);

  fill(red(c)*0.85, green(c)*0.85, blue(c)*0.85);
  triangle(x, y, x+base/2, y+alto, x, y+alto);

  stroke(0,30);
  for (int i = 0; i < alto; i += 10) {
    float a = i/(float)alto;
    float x1 = lerp(x-base/2, x, a);
    float y1 = lerp(y+alto, y, a);
    float x2 = lerp(x+base/2, x, a);
    float y2 = lerp(y+alto, y, a);
    line(x1, y1, x2, y2);
  }
  noStroke();
}
