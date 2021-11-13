//tp5 juego
//jair gonzalez 
//Legajo (88527/5)
//Link al video: https://youtu.be/EWIAagCjbaw

Juego juego;
Player p;

void setup() {
  size(600, 600);
  juego = new Juego();
}
void draw() {
  juego.menu();
}
void keyPressed() {
  p.setMove(keyCode, true);
}
void keyReleased() {
  p.setMove(keyCode, false);
}
void mousePressed() {
  juego.click();
}
