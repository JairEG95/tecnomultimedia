//tp4 aventura grafica
//jair gonzalez 
//Legajo (88527/5)
//Link al video: https://youtu.be/XewSKdQcKHc

int pantalla = 0;
String [] textos;
PImage[] fondos;
int r = 0;
int g = 0;
int b = 0;

void setup() {
  size(600, 600);
  textos = loadStrings("data/textos.txt");  
  fondos = new PImage[50];
  //  for (int i = 0; i<= 50; i++) {
  //    fondos[i] = loadImage("fondos"+ i +".jpg");
  // para cargar en los if image(fondos[pantalla], 0, 0);
  //los nombres tienen que ser fondosX.jpg
  //}
}

void draw() {
  if (pantalla==0) {
    //opciones de inicio
    for (int i = 0; i<height; i++) {
      //dibuja un degrade en el fondo
      stroke(i, i, i);
      line(0, i, width, i);
    }
    TextoDeCrediros(150, 35, "Aventura Gráfica: perdido");
    BotonRect(width/5, height/2, 135, 50, 30, "Iniciar", 5);
    BotonRect(width/5, height/2+75, 135, 50, 30, "Creditos", 5);
  } else if (pantalla==1) {
    //pantalla de inicio de la aventura
    background(255);
    CuadradoDeTexto(150, 15, textos[1]);
    BotonRect(30, height-200, 120, 40, 15, "Supervivientes", 3);
    BotonRect(width-150, height-200, 120, 40, 15, "Recursos", 3);
  } else if (pantalla==2) {
    //Supervivientes
    background(255);
    CuadradoDeTexto(150, 15, textos[7]);
    BotonRect(30, height-200, 128, 40, 15, "Intento liberarlo", 3);
    BotonRect(width-150, height-200, 120, 40, 15, "Lo abandono ", 3);
  } else if (pantalla==3) {
    //Recursos
    background(255);
    CuadradoDeTexto(150, 15, textos[2]);
    BotonRect(30, height-200, 150, 40, 15, "Bodega de equipaje", 3);
    BotonRect(width-160, height-200, 130, 40, 15, "Cocina del avion", 3);
  } else if (pantalla==4) {
    //FIN 1
    background(255);
    CuadradoDeTexto(150, 15, textos[3]);
    BotonRect(width/2-75, height-200, 150, 40, 15, "Volver a empezar", 3);
  } else if (pantalla==5) {
    //Cocina del avion
    background(255);
    CuadradoDeTexto(150, 15, textos[4]);
    BotonRect(width-160, height-200, 130, 40, 15, "Siguiente", 3);
  } else if (pantalla==6) {
    //Siguiente
    background(255);
    CuadradoDeTexto(150, 15, textos[5]);
    BotonRect(width-160, height-200, 130, 40, 15, "Siguiente", 3);
  } else if (pantalla==7) {
    //FIN 2
    background(255);
    CuadradoDeTexto(150, 15, textos[6]);
    BotonRect(width/2-75, height-200, 150, 40, 15, "Volver a empezar", 3);
  } else if (pantalla==8) {
    //Salir del avion
    background(255);
    CuadradoDeTexto(150, 15, textos[8]);
    BotonRect(30, height-200, 150, 40, 15, "Buscar recursos", 3);
    BotonRect(width-160, height-200, 130, 40, 15, "Salir del avion", 3);
  } else if (pantalla==9) {
    //Liberacion
    background(255);
    CuadradoDeTexto(150, 13, textos[9]);
    BotonRect(30, height-200, 120, 40, 15, "Tratar el pie", 3);
    BotonRect(width-160, height-200, 130, 40, 15, "Volver al avion", 3);
  } else if (pantalla==10) {
    //FIN 3
    background(255);
    CuadradoDeTexto(150, 15, textos[10]);
    BotonRect(width/2-75, height-200, 150, 40, 15, "Volver a empezar", 3);
  } else if (pantalla==11) {
    //Tratamiento
    background(255);
    CuadradoDeTexto(150, 13, textos[11]);
    BotonRect(width-160, height-200, 130, 40, 15, "Siguiente", 3);
  } else if (pantalla==12) {
    //Tratamiento Siguiente
    background(255);
    CuadradoDeTexto(150, 13, textos[12]);
    BotonRect(30, height-200, 120, 40, 15, "Descansas", 3);
    BotonRect(width-160, height-200, 130, 40, 15, "Continuar", 3);
  } else if (pantalla==13) {
    //Continuar caminando FIN 4
    background(255);
    CuadradoDeTexto(150, 15, textos[13]);
    BotonRect(width/2-75, height-200, 150, 40, 15, "Volver a empezar", 3);
  } else if (pantalla==14) {
    //Peces en el rio
    background(255);
    CuadradoDeTexto(150, 15, textos[14]);
    BotonRect(30, height-200, 145, 40, 15, "Intento capturarlos", 3);
    BotonRect(width-160, height-200, 130, 40, 15, "Sigo caminando", 3);
  } else if (pantalla==15) {
    //Peces en el rio 2
    background(255);
    CuadradoDeTexto(150, 15, textos[15]);
    BotonRect(30, height-200, 120, 40, 15, "Acampo", 3);
    BotonRect(width-160, height-200, 130, 40, 15, "Sigo caminando", 3);
  } else if (pantalla==16) {
    //Acampo FIN 5 
    background(255);
    CuadradoDeTexto(200, 15, textos[17]);
    BotonRect(width/2-75, height-250, 150, 40, 13, "Volver a empezar", 3);
  } else if (pantalla==17) {
    //Acampo FIN 6 (Mejor final)
    background(255);
    CuadradoDeTexto(200, 15, textos[16]);
    BotonRect(width/2-75, height-250, 150, 40, 13, "Volver a empezar", 3);
  } else if (pantalla==18) {
    //Creditos
    for (int i = 0; i<height; i++) {
      //dibuja un degrade en el fondo
      stroke(i, r, b);
      line(0, i, width, i);
    }
    TextoDeCrediros(150, 25, "TP#4 - Aventura Gráfica");
    TextoDeCrediros(200, 25, "Comision 3");
    TextoDeCrediros(250, 25, "Profesor: David Bedoian");
    TextoDeCrediros(300, 25, "Alumno: Jair Gonzalez (88527/5)");
    TextoDeCrediros(450, 15, "Historia Original");
    //TextoDeCrediros(480, 12, "Las imagenes fueron recolectadas de distintas fuentes");
    BotonRect(width-150, height-50, 120, 40, 30, "Volver", 3);
  }
  //ver que pantalla estoy
  //fill(255, 0, 0);
  //text(pantalla, 25, 25);
}
