//tp final
//jair gonzalez

Aventura aventura;
Player p;

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
  p.setMove(keyCode, true);
}
void keyReleased() {
  p.setMove(keyCode, false);
}
