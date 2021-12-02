//tp final
//jair gonzalez
//Legajo (88527/5)
//link al video https://youtu.be/z4Zqhhgx0RQ

Aventura aventura;

void setup() {
  size(600, 600);
  aventura = new Aventura();
}
void draw() {
  aventura.menu();
}
void mousePressed() {
  aventura.click();
}
void keyPressed() {
  aventura.teclapresionada2();
}
void keyReleased() {
  aventura.teclasoltada2();
}
