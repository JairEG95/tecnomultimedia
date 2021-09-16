//funciones

void BotonRect(float x_, float y_, float x1_, float y1_, float tam_, String texto, float x3_) {
  //dibuja un boton rectangular con texto
  pushMatrix();
  pushStyle();
  translate(x_, y_);
  fill(#4BC1FF);
  rect(0, 0, x1_, y1_, 10);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(tam_);
  text(texto, x1_/2, y1_/2-x3_);
  popStyle();
  popMatrix();
}
void CuadradoDeTexto(float y1_, float tam_, String texto) {
  //texto de dialogos
  pushMatrix();
  pushStyle();
  fill(#484848);
  rect(0, width, height, -y1_);
  fill(255);
  textSize(tam_);
  text(texto, 15, height-y1_+24, width-24, height-10);
  popStyle();
  popMatrix();
}

boolean ColisionBotonRect(float x_, float y_, float x1_, float y1_) {
  //colision del mouse con para el rectangulo
  if ( mouseX>x_ && mouseX<x_+x1_&& mouseY>y_ && mouseY<y_+y1_) {
    return true;
  } else {
    return false;
  }
}

void TextoDeCrediros(float y1_, float tam_, String texto) {
  pushStyle();
  fill(255);
  textSize(tam_);
  textAlign(CENTER, CENTER);
  text(texto, width/2, y1_);
  popStyle();
}
