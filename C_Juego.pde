//Declaraciond de la clase juego
class Juego {
  Fondo fondo;
  Enemigo[] enemigo;
  Boton boton1, boton2, boton3;
  int cantEnemigos;
  int puntos = 0;
  int tempo = 0;
  int seg;
  int min;
  int correrTexto;
  String estadoJuego;
  int maximosfondos = 5;
  PImage[] images = new PImage[maximosfondos];
  Juego() {
    //botones
    estadoJuego = "inicio";
    boton1 = new Boton ("Empezar", 150, 200, 200, 75, 40);
    boton2 = new Boton ("Creditos", 450, 200, 200, 75, 40);
    boton3 = new Boton ("Volver", 525, 50, 90, 35, 25);
    //enemigos
    cantEnemigos = 3;
    enemigo = new Enemigo[cantEnemigos];
    for (int i=0; i<cantEnemigos; i++) {
      enemigo[i] = new Enemigo();
    }
    //jugador
    p = new Player();
    //fondos
    fondo = new Fondo();
    for (int i = 0; i < images.length; i++) {
      images[i] = loadImage("fondo_"+ i + ".jpg");
      //ponerle de nombre fondoX.jpg
    }
  }
  //aca voy a declarar botones y estados
  void menu() {
    actualizar();
  }
  void actualizar() {
    if (estadoJuego.equals("inicio")) {
      image(images[1], 0, 0, height, width);
      boton1.actualizar();
      boton2.actualizar();
    } else if (estadoJuego.equals("jugando")) {
      //mostrando lo que corresponde a jugar
      jugando_();
      text(puntos, 50, 50);
      boton3.actualizar();
      textoExplicativo();
      tempo();
    } else if (estadoJuego.equals("creditos")) {
      //mostrando lo que corresponde a creditos
      image(images[3], 0, 0, height, width);
      //Creditos
      Textoenmedio(150, 35, "TP#5 - Juego");
      Textoenmedio(200, 35, "Comision 3");
      Textoenmedio(250, 35, "Profesor: David Bedoian");
      Textoenmedio(300, 35, "Alumno: Jair Gonzalez (88527/5)");
      Textoenmedio(450, 25, "Juego Original");
      Textoenmedio(480, 15, "Las imagenes fueron recolectadas de distintas fuentes");
      boton3.actualizar();
    } else if (estadoJuego.equals("gano")) {
      //mostrando lo que corresponde a creditos
      image(images[2], 0, 0, height, width);
      Textoenmedio(300, 100, "¡GANASTE!");
      boton3.actualizar();
    } else if (estadoJuego.equals("perdio")) {
      //pantalla perdiste
      image(images[4], 0, 0, height, width);
      boton3.actualizar();
    }
  }
  void click() {
    if (estadoJuego.equals("inicio")) {
      if (boton1.estaEncima()) {
        cambiarEstado("jugando");
        puntos = 0;
        min = 0;
        frameCount = 0;
      } else if (boton2.estaEncima()) {
        cambiarEstado("creditos");
      }
    } else if (estadoJuego.equals("jugando")) {
      //mostrando lo que corresponde a jugar
      if (boton3.estaEncima()) {
        cambiarEstado("inicio");
      }
    } else if (estadoJuego.equals("creditos")) {
      //mostrando lo que corresponde a creditos
      if (boton3.estaEncima()) {
        cambiarEstado("inicio");
      }
    } else if (estadoJuego.equals("gano")) {
      //mostrando lo que corresponde a creditos
      if (boton3.estaEncima()) {
        cambiarEstado("inicio");
      }
    } else if (estadoJuego.equals("perdio")) {
      //mostrando lo que corresponde a creditos
      if (boton3.estaEncima()) {
        cambiarEstado("inicio");
      }
    }
  }
  //metodos para ejecutar cambios de estado:
  void cambiarEstado(String nuevoEstado_) {
    estadoJuego = nuevoEstado_;
    if (nuevoEstado_.equals("inicio")) {
      //
    } else if (nuevoEstado_.equals("jugando")) {
      //
    } else if (nuevoEstado_.equals("perdio")) {
      //
    } else if (nuevoEstado_.equals("gano")) {
      //
    }
  }
  //
  void jugando_() {
    //el juego en si
    background(255);
    fondo.draw_();
    for (int i=0; i<cantEnemigos; i++) {
      enemigo[i].actualizar();
      //colision
      if (enemigo[i].colision(p.x, p.y, p.ancho, p.alto)) {
        puntos++;
        println(puntos);
      }
      p.move();
      p.draw_();
    }      
    //para ganar o perder
    if (puntos==30) {
      estadoJuego = "gano";
      puntos = 0;
    } else if (seg == 30) {
      estadoJuego = "perdio";
      frameCount = 0;
    }
  }
  void Textoenmedio(float y1_, float tam_, String texto) {
    pushStyle();
    fill(0);
    textSize(tam_);
    textAlign(CENTER, CENTER);
    text(texto, width/2, y1_);
    popStyle();
  }
  void textoExplicativo() {
    pushMatrix();
    pushStyle();
    fill(#FF86F3);
    rect(0, height-25, width, 25);
    fill(0);
    textSize(15);
    textAlign(CENTER, CENTER);
    text("¡Atrapa 30 peces con la red para ganar! Antes que pasen 30 segundos. Usa las flechas del teclado para mover la red", width/2+300-correrTexto, height-15);
    if (correrTexto < 1000) {
      correrTexto++;
    } else {
      correrTexto = -450;
    }
    popStyle();
    popMatrix();
  }
  void tempo() {
    //tiempo
    textAlign(CENTER);
    textSize(40);
    if (seg<=59) {
      text(min+":"+seg, width/2, 40);
      seg = 0 + frameCount/60;
    } else {
      min = + 1;
      seg = 0;
      text(min+":"+seg, width/2, 40);
    }
  }
}
