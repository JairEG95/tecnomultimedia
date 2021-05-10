//Jair Emmanuel Gonzalez
//Circulo cromatico
//10/05/2021
//legajo 88527/5

//fondo
void settings() {
  size(600,600);
}

void setup() {
background(255);
}

void draw() {
//color primario amarrillo
fill(255,255,0);
triangle(0,100,175,0,300,300);
//color terciario naranja amarillento
fill(255,198,0);
triangle(175,0,325,0,300,300);
//color secundario naranja
fill(255,160,0);
triangle(325,0,500,0,300,300);
//color terciario rojo anaranjado
fill(255,90,0);
triangle(500,0,600,150,300,300);
//color primario rojo
fill(255,0,0);
triangle(600,150,600,300,300,300);
//color terciario violeta rojizo
fill(200,0,100);
triangle(600,300,600,450,300,300);
//color secundario violeta
fill(128,0,128);
triangle(600,450,500,600,300,300);
//color terciario azul violaceo
fill(135,10,255);
triangle(500,600,300,600,300,300);
//color primario azul
fill(0,0,255);
triangle(100,600,300,600,300,300);
//color terciario verde azulado
fill(0,160,140);
triangle(0,450,100,600,300,300);
//color secundario verde
fill(0,255,0);
triangle(0,275,0,450,300,300);
//color terciario verde amarilloso
fill(220,255,0);
triangle(0,100,0,275,300,300);

//Cirulo blanco exterior
noFill();
stroke(255);
strokeWeight(200);
circle(300,300,700);
strokeWeight(50);
circle(300,300,600);

//Cirulo blanco interior
noStroke();
fill(255);
circle(300,300,100);

//textos
textSize(12);
fill(0);
text("Amarrillo",85,105);
text("Naranja",220,35);
text("Amarillento",225,45);
text("Naranja",380,55);
text("Rojo",490,125);
text("Anaranjado",495,135);
text("Rojo",550,250);
text("Violeta",550,350);
text("Rojizo",555,360);
text("Violeta",500,470);
text("Azul",375,550);
text("Violaceo",380,560);
text("Azul",200,550);
text("Verde",75,475);
text("Azulado",75,485);
text("Verde",22,365);
text("Verde",3,200);
text("Amarilloso",8,210);
}
