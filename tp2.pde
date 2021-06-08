//Jair Gonzalez
//TP2 Creditos
//Estos creditos estan badados en: https://www.youtube.com/watch?v=KPlyoKb5o0M&ab_channel=ImmoralFlame
//minuto 4:15 del video de youtube. Para este trabajo fueron acortados.

int estado = 0;
int Subir = 0;
PFont font;
PImage inicio;
PImage fondoa;
PImage fondob;
PImage fondoc;
PImage fondod;
PImage fondoe;
PImage fin;

//if estado = 0 hacer pantalla para iniciar los creditos

void setup() {
  size(600, 330);
  font = loadFont("ComicSansMS-BoldItalic-48.vlw");
  inicio =loadImage("inicio.jpg");
  fondoa = loadImage("disgaea1.jpg");
  fondob = loadImage("disgaea2.jpg");
  fondoc = loadImage("disgaea3.jpg");
  fondod = loadImage("disgaea4.jpg");
  fondoe = loadImage("disgaea5.jpg");
  fin = loadImage("fin.jpg");
}

void draw() {
  if (estado==0) {
    image(inicio, 0, 0);
    textFont(font);
    textSize(16);
    textAlign(CENTER);
    fill(0);
    text("CREDITOS", 295, 212);
    fill(255);
    textSize(12);
    text("click para ver los creditos", 295, 240);
    Subir = 200;
  }

  if (estado==1) {
    image(fondoa, 0, 0);
    textSize(20);
    fill(255);

    text("Disgaea PC", 400, 600-Subir);

    text("STAFF", 400, 670-Subir);

    text("[Executive Producer]", 400, 740-Subir);
    text("Mitsuharu Hiraoka", 400, 765-Subir);

    text("[Localization Directers]", 400, 835-Subir);
    text("Toshi Beppu", 400, 860-Subir);
    text("Munenori Hirose", 400, 885-Subir);
    text("Fumihito Takahara", 400, 910-Subir);

    text("[Music Composer]", 400, 980-Subir);
    text("Tenpei Sato", 400, 1005-Subir);

    text("[Programming]", 400, 1075-Subir);
    text("Munenori Hirose", 400, 1100-Subir);
    text("Akio Sogawa", 400, 1125-Subir);
    text("Takuya Nii", 400, 1150-Subir);
    text("Shinya Kuno", 400, 1175-Subir);
    text("Tomoyuki Hasada", 400, 1200-Subir);

    text("[CG Design]", 400, 1270-Subir);
    text("Ryo Sotokawa", 400, 1295-Subir);
    text("Mika Oba", 400, 1320-Subir);
    text("Conforti Nardo", 400, 1345-Subir);
    text("Akiyoshi Kontani", 400, 1370-Subir);
    text("Fumika Matsushima", 400, 1395-Subir);
    text("Daichi Wakai", 400, 1420-Subir);

    //Cambio de fondo

    if (Subir>1300) {
      fondoa = fondob;
    }

    text("DISGAEA:HOUR OF DARKNESS", 400, 1800-Subir);

    text("[Localization]", 400, 1870-Subir);
    textSize(18);
    text("Disgaea: Hour of Darkness for PlayStation®2", 400, 1895-Subir);
    text("localized by Atlus U.S.A ,Inc.", 400, 1920-Subir);
    textSize(20);

    text("Disgaea: Afeternoon of Darkness", 400, 1990-Subir);
    text("(ENGLISH VERSION)", 400, 2020-Subir);
    text("LOCALIZATION TEAM", 400, 2050-Subir);

    text("[Localization Producers]", 400, 2130-Subir);
    text("Haru Akenaga", 400, 2155-Subir);
    text("Sohei Niikawa", 400, 2180-Subir);

    text("[Localization Directors]", 400, 2250-Subir);
    text("Jack Niida", 400, 2275-Subir);
    text("Tatsuya Izumi", 400, 2300-Subir);

    //Cambio de fondo
    
    if (Subir>2050) {
      fondoa = fondoc;
    }

    text("[Programing]", 400, 2400-Subir);
    text("Shoya Furuta", 400, 2430-Subir);
    text("Tsuyoshi Nakano", 400, 2460-Subir);

    text("[CG Disign]", 400, 2540-Subir);
    text("Hirokazu Itano", 400, 2565-Subir);

    text("[Translation]", 400, 2635-Subir);
    text("Jack Niida", 400, 2660-Subir);

    text("[Script Editor]", 400, 2730-Subir);
    text("Steven Carlton", 400, 2755-Subir);

    text("[Voice Director & Enginer]", 400, 2815-Subir);
    text("Keith Arem", 400, 2840-Subir);

    text("[Recorder At]", 400, 2910-Subir);
    text("PCB Productions. California", 400, 2935-Subir);

    text("[In Cooperation With]", 400, 3000-Subir);
    textSize(18);
    text("Sony Interactive Entretainment America Inc.", 400, 3025-Subir);
    textSize(20);

    //Cambio de fondo

    if (Subir>2850) {
      fondoa = fondod;
    }

    text("[Voice Cast]", 400, 3200-Subir);

    pushStyle();
    textSize(16);
    textAlign(RIGHT);
    text("Laharl", 380, 3225-Subir);
    text("Etna", 380, 3250-Subir);
    text("Flone", 380, 3275-Subir); 
    text("Prinny Squad", 380, 3300-Subir);
    text("Mid-Boss", 380, 3325-Subir);
    text("Hoggmeiser", 380, 3350-Subir);
    text("Archangel Vulcanus", 380, 3375-Subir);
    text("Seraph Lamington", 380, 3400-Subir);
    textAlign(LEFT);
    text("Kaori Mizuhashi", 400, 3225-Subir);
    text("Tomoe Handa", 400, 3250-Subir);
    text("Yuko Sasamoto", 400, 3275-Subir);
    text("Junji Majima", 400, 3300-Subir);
    text("Chihiro Suzuki", 400, 3325-Subir);
    text("Tomomichi Nishimura", 400, 3350-Subir);
    text("Hironori Miyata", 400, 3375-Subir);
    text("Junji Majima", 400, 3400-Subir);
    popStyle();

    text("[Sound Manager]", 400, 3475-Subir);
    text("Kentaro Furusho", 400, 3500-Subir);

    text("[Music]", 400, 3575-Subir);
    text("[Nightmare Heroine]", 400, 3600-Subir);
    text("Lyrics: Sohei Niikawa", 400, 3625-Subir);
    text("Composer/Arranger: Tenpei Sato", 400, 3650-Subir);
    text("Vocal: Miki", 400, 3675-Subir);

    //Cambio de fondo

    if (Subir>3650) {
      fondoa = fondoe;
    }

    text("[Cooperation]", 400, 3850-Subir);
    textSize(18);
    text("Sony Interactive Entertainment Inc.", 400, 3875-Subir);
    text("PARSLEY PROMOTION INC.", 400, 3900-Subir);
    text("SCITRON DIGITAL CONTENT Inc.", 400, 3925-Subir);
    text("Tenpei Artists Inc.", 400, 3950-Subir);
    text("Same Creative Inc.", 400, 3975-Subir);
    text("Artsvision Inc. [team Poligon]", 400, 4000-Subir);
    text("STUDIO BIHOU Inc.", 400, 4025-Subir);
    text("O-TWO inc.", 400, 4050-Subir);

    textSize(20);
    text("Logistics inc.", 400, 4200-Subir);

    text("RosenQueen co.", 400, 4240-Subir);

    text("[Director]", 400, 4280-Subir);
    text("Yoshitsuna Kobayashi", 400, 4310-Subir);

    text("[Producer]", 400, 4350-Subir);
    text("Sohei Niikawa", 400, 4380-Subir);

    text("[Executive Producer]", 400, 4420-Subir);
    text("Koichi Kitazumi", 400, 4450-Subir);

    textSize(22);
    text("[Planning & Produce]", 400, 4620-Subir);
    text("NIPPON ICHI SOFTWARE Inc.", 400, 4650-Subir);

    //Cambio de fondo

    if (Subir>4375) {
      fondoa = fin;
    }

    //   println (Subir);

    if (Subir<4460) {
      Subir = Subir + 1;
    } else {
      Subir = 4461;
    }
  }
}


void mousePressed() {
  if (estado==0) {
    estado = 1;
  }
}
