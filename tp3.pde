//ilusion optica tp3
//Jair Gonzalez
//legajo 88527/5
//https://www.youtube.com/watch?v=puEYjcsAO2g
int opc = 0;
int B = 0;
void setup() {
  size (500, 500);
}
void draw() {
  background(255);
  //opciones
  pushStyle();
  colorMode(HSB);
  fill(random(100, 150), 200, 200);
  rect(15, 15, 80, 25);
  rect(15, 50, 80, 25);
  rect(15, 85, 80, 25);
  rect(15, 120, 80, 25);
  rect(15, 155, 80, 25);
  popStyle();
  //texto opciones
  pushStyle();
  fill(0);
  text("Ilusion", 32, 32);
  text("Comprobar", 22, 67);
  text("Movimiento", 22, 102);
  text("Informacion", 22, 137);
  text("Atras", 37, 172);
  popStyle();
  //ilusion
  //lineas horizontales
  if (opc==1) {
    for (float a = 1; a<750; a = a * 1.1) {
      pushStyle();
      pushMatrix();
      rectMode(CENTER);
      fill(0);
      translate(width/2, -150);
      rect(0, 2.5*a, 40+a, 1+a/18);
      popMatrix();
      popStyle();
    }
    //lineas diagonales
    pushStyle();
    strokeWeight(8);
    line(width/2-30, 0, width/2-100, height);
    line(width/2+30, 0, width/2+100, height);
    line(width/2-30, 0, width/2-108, height);
    line(width/2+30, 0, width/2+108, height);
    popStyle();
    //lineas azules
    pushStyle();
    stroke(#03ADFF);
    strokeWeight(8);
    line(width/2-30, 60, width/2+30, 60);
    line(width/2-30, 395, width/2+30, 395);
    popStyle();
  }
  if (opc==2) {
    //lineas de comprobacion
    pushStyle();
    stroke(200, 0, 0);
    strokeWeight(8);
    line(width/2-40, 0, width/2-40, height);
    line(width/2+40, 0, width/2+40, height);
    popStyle();
    //lineas azules
    pushStyle();
    stroke(#03ADFF);
    strokeWeight(8);
    line(width/2-30, 60, width/2+30, 60);
    line(width/2-30, 395, width/2+30, 395);
    popStyle();
  }
  if (opc==3) {
    for (float a = 1; a<750; a = a * 1.1) {
      pushStyle();
      pushMatrix();
      rectMode(CENTER);
      fill(0);
      translate(width/2, -150);
      rect(0, 2.5*a, 40+a, 1+a/18);
      popMatrix();
      popStyle();
    }
    //lineas diagonales
    pushStyle();
    strokeWeight(8);
    line(width/2-30, 0, width/2-100, height);
    line(width/2+30, 0, width/2+100, height);
    line(width/2-30, 0, width/2-108, height);
    line(width/2+30, 0, width/2+108, height);
    popStyle();
    //lineas azules
    pushStyle();
    stroke(#03ADFF);
    strokeWeight(8);
    line(width/2-30, 130, width/2+30, 130);
    line(width/2-30, B, width/2+30, B);
    popStyle();
    B++;
    if (B>height) {
      B = 0;
    }
  }
  if (opc==4) {
    fill(0);
    String text = "La ilusión de Ponzo es un tipo de ilusión óptico-geométrica documentada por el psicólogo italiano Mario Ponzo (1882-1960) en 1911. Sugiere que la mente humana estima la medida de un objeto basándose en su entorno. Demostró este efecto dibujando dos líneas de igual longitud sobre un par de líneas convergentes, similares a los railes del ferrocarril vistos en perspectiva. La línea superior aparenta ser más larga porque la mente interpreta su tamaño de acuerdo con la perspectiva lineal, en la que las líneas paralelas convergen. En este contexto, los observadores interpretan que la línea superior está más alejada, por lo que consideran que es más larga, debido a que un objeto más lejano tendría que ser más largo que uno más cercano para que ambos produzcan una imagen sobre la retina de la misma medida";
    text(text, 150, 150, 300, 300);
    pushStyle();
    textSize(30);
    colorMode(HSB);
    fill(random(0, 255), 100, 150);
    text("Ilusión de Ponzo", 150, 100);
    popStyle();
  }
}
void mousePressed() {
  if ( mouseX>15 && mouseX<15+80 && mouseY>155 && mouseY<155+25 ) {
    opc = 0;
  }
  if ( mouseX>15 && mouseX<15+80 && mouseY>15 && mouseY<15+25 ) {
    opc = 1;
  }
  if ( mouseX>15 && mouseX<15+80 && mouseY>50 && mouseY<50+25 ) {
    opc = 2;
  }
  if ( mouseX>15 && mouseX<15+80 && mouseY>85 && mouseY<85+25 ) {
    opc = 3;
  }
  if ( mouseX>15 && mouseX<15+80 && mouseY>120 && mouseY<120+25 ) {
    opc = 4;
  }
}
