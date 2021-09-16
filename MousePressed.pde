//aca van las interacciones con los botones

void mousePressed() {

  if (pantalla==0) {
    //opciones de inicio
    if (ColisionBotonRect(width/5, height/2, 100, 50)) {
      //iniciar
      pantalla = 1;
    } else if (ColisionBotonRect(width/5, height/2+75, 135, 50)) {
      //Creditos
      pantalla = 18;
    }
  } else if (pantalla==1) {
    //pantalla de inicio de la aventura
    if (ColisionBotonRect(30, height-200, 120, 40)) {
      //Supervivientes
      pantalla = 2;
    } else if (ColisionBotonRect(width-150, height-200, 120, 40)) {
      //Recursos
      pantalla = 3;
    }
  } else if (pantalla==2) {
    //Supervivientes    
    if (ColisionBotonRect(30, height-200, 128, 40)) {
      //Intento liberarlo
      pantalla = 9;
    } else if (ColisionBotonRect(width-150, height-200, 120, 40)) {
      //Lo abandono
      pantalla = 8;
    }
  } else if (pantalla==3) {
    //Recursos 
    if (ColisionBotonRect(30, height-200, 150, 40)) {
      //FIN 1
      pantalla = 4;
    } else if (ColisionBotonRect(width-160, height-200, 130, 40)) {
      //Cocina del avion
      pantalla = 5;
    }
  } else if (pantalla==4) {
    //Volver a empezar
    ColisionBotonRect(width/2-75, height-200, 150, 40);
    pantalla = 0;
  } else if (pantalla==5) {
    //Siguiente
    if (ColisionBotonRect(width-160, height-200, 130, 40)) {
      pantalla = 6;
    }
  } else if (pantalla==6) {
    //FIN 2
    if (ColisionBotonRect(width-160, height-200, 130, 40)) {
      pantalla = 7;
    }
  } else if (pantalla==7) {
    //Volver a empezar
    if (ColisionBotonRect(width/2-75, height-200, 150, 40)) {
      pantalla = 0;
    }
  } else if (pantalla==8) {
    //Salir del avion
    if (ColisionBotonRect(width-160, height-200, 130, 40)) {
      pantalla = 7;
    } else if (ColisionBotonRect(30, height-200, 150, 40)) {
      //Recursos
      pantalla = 3;
    }
  } else if (pantalla==9) {
    //Afuera 1    
    if (ColisionBotonRect(30, height-200, 128, 40)) {
      //Tratar
      pantalla = 11;
    } else if (ColisionBotonRect(width-150, height-200, 120, 40)) {
      //Volver al avion
      pantalla = 10;
    }
  } else if (pantalla==10) {
    //Volver a empezar
    if (ColisionBotonRect(width/2-75, height-200, 150, 40)) {
      pantalla = 0;
    }
  } else if (pantalla==11) {
    //Siguiente
    if (ColisionBotonRect(width-160, height-200, 130, 40)) {
      pantalla = 12;
    }
  } else if (pantalla==12) {
    //Rio
    if (ColisionBotonRect(width-160, height-200, 130, 40)) {
      pantalla = 13;
    } else if (ColisionBotonRect(30, height-200, 150, 40)) {
      //Recursos
      pantalla = 14;
    }
  } else if (pantalla==13) {
    //Volver a empezar FIN 4
    if (ColisionBotonRect(width/2-75, height-200, 150, 40)) {
      pantalla = 0;
    }
  } else if (pantalla==14) {
    if (ColisionBotonRect(width-160, height-200, 130, 40)) {
      //Continuo caminando FIN 4
      pantalla = 13;
    } else if (ColisionBotonRect(30, height-200, 145, 40)) {
      //Atrapar
      pantalla = 15;
    }
  } else if (pantalla==15) {
    if (ColisionBotonRect(width-160, height-200, 120, 40)) {
      //Acampo
      pantalla = 16;
    } else if (ColisionBotonRect(30, height-200, 130, 40)) {
      //Continuo
      pantalla = 17;
    }
  } else if (pantalla==16) {
    //Volver a empezar FIN 5
    if (ColisionBotonRect(width/2-75, height-250, 150, 40)) {
      pantalla = 0;
    }
  } else if (pantalla==17) {
    //Volver a empezar FIN 6
    if (ColisionBotonRect(width/2-75, height-250, 150, 40)) {
      pantalla = 0;
    }
  } else if (pantalla==18) {
    //creditos
    if (ColisionBotonRect(width-150, height-50, 120, 40)) {
      pantalla = 0;
    }
  }
}
