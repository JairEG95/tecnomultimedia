//fondo en movimiento
class Fondo {
  PImage imgFondo;
  float y;
  float velY;
  Fondo() {
    imgFondo = loadImage("fondo2.jpg");
    y = 0;
    velY = -2;
  }
  void draw_() {
    image(imgFondo, 0, y, 600, 7000);
    y+=velY;
    if (y==-6400) {
      y = 0;
    }
  }
}
