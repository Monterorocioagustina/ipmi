//variables:
PFont fuente0, fuente1;
PImage imagen0, imagen1, imagen2, imagen3, imagen4, imagen5, imagen6, imagen7;
int pantalla = 0;
int frameInicio = 0;
int intervaloFrames = 350;
float yPantalla1 = 480;
float yPantalla2 = -50;
float xPantalla3 = -300;
float xPantalla4 = 650;
float yPantalla5 = 10;
float yPantalla6 = 480;
float yPantalla7 = -50;

void setup() {
  size(640, 480);
  fuente1 = loadFont("Arial-Black-48.vlw");
  fuente0 = loadFont("Cambria-Bold-48.vlw");
  imagen0 = loadImage("Imagen0.jpeg");
  imagen1 = loadImage("Imagen1.jpeg");
  imagen2 = loadImage("Imagen2.jpeg");
  imagen3 = loadImage("Imagen3.jpeg");
  imagen4 = loadImage("Imagen4.jpeg");
  imagen5 = loadImage("Imagen5.jpeg");
  imagen6 = loadImage("Imagen6.jpeg");
  imagen7 = loadImage("Imagen7.jpeg");
}
void draw() {
  background(0);
  if (pantalla == 0) {
    image(imagen0, 0, 0, width, height);
    //boton para empezar:
    fill(255);
    rect(540, 20, 80, 30);
    fill(81,128,185);
    textFont(fuente0, 17);
    textAlign(CENTER, CENTER);
    text("Iniciar", 580, 35);
  }
//primera pantalla:
  else if (pantalla == 1) {
    image(imagen1, 0, 0, width, height);
    textFont(fuente1, 14);
    fill(250,10,10);
    textAlign(CENTER);
    text("En la isla de Berk, los vikingos viven peleando contra dragones.", width/2, yPantalla1);
    text("Hipo, el hijo del jefe Estoico, quiere demostrar que puede ser un gran guerrero,", width/2, yPantalla1 + 40);
    text(" aunque todos lo ven débil y diferente.", width/2, yPantalla1 + 80);
    if (yPantalla1 > 200) {
      yPantalla1 -= 1.5;
    }
  }
  //segunda pantalla:
  else if (pantalla == 2) {
    image(imagen2, 0, 0, width, height);
    textFont(fuente1, 14);
    fill(0, 0, 255);
    textAlign(CENTER);
    text("Una noche, Hipo logra derribar a un dragón muy raro llamado Furia Nocturna.", width/2, yPantalla2);
    text("Cuando lo encuentra herido en el bosque, no puede matarlo y decide ayudarlo.", width/2, yPantalla2 + 40);
    text("Así conoce a Chimuelo.", width/2, yPantalla2 + 80);
    if (yPantalla2 < 200) {
      yPantalla2 += 2;
    }
  }
  //tercera pantalla:
  else if (pantalla == 3) {
    image(imagen3, 0, 0, width, height);
    textFont(fuente1, 15);
    fill(255);
    textAlign(LEFT);
    text("Mientras entrena para luchar contra dragones,", xPantalla3, height/2);
    text("Hipo empieza a descubrir que en realidad no son monstruos malos.", xPantalla3, height/2 + 40);
    text("Con Chimuelo aprende cómo piensan y cómo convivir con ellos.", xPantalla3, height/2 + 80);
    if (xPantalla3 < 50) {
      xPantalla3 += 2;
    }
  }
  //cuarta pantalla:
  else if (pantalla == 4) {
    image(imagen4, 0, 0, width, height);
    textFont(fuente1, 14);
    fill(0);
    textAlign(LEFT);
    text("Hipo y Chimuelo se vuelven inseparables y comienzan a volar juntos. ", xPantalla4, 120);
    text("Pero los demás vikingos descubren al dragón y creen que es una amenaza. ", xPantalla4, 160);
   if (xPantalla4 > 50) {
      xPantalla4 -= 2;
    }
  }
  //quinta pantalla:
  else if (pantalla == 5) {
    image(imagen5, 0, 0, width, height);
    textFont(fuente1);
    textSize(yPantalla5);
    fill(255);
    textAlign(CENTER);
    text("Estoico se decepciona de su hijo y decide atacar el nido de dragones.", width/2, height/2 - 30);
    text("Durante la batalla final, Hipo y Chimuelo trabajan juntos para derrotar al ", width/2, height/2);
    text("gran dragón que controlaba a todos los demás.", width/2, height/2 + 30);
    if (yPantalla5 < 15) {
      yPantalla5 += 1;
    }
  }
  //sexta pantalla:
  else if (pantalla == 6) {
    image(imagen6, 0, 0, width, height);
    textFont(fuente1, 16);
    fill(255);
    textAlign(CENTER);
    text("Después de eso, los vikingos entienden", width/2, yPantalla6);
    text("que humanos y dragones pueden vivir en paz,", width/2, yPantalla6 + 40);
    text("y Hipo finalmente encuentra su lugar.", width/2, yPantalla6 + 80);
   if (yPantalla6 > 200) {
      yPantalla6 -= 1.5;
    }
  }
  //septima pantalla:
  else if (pantalla == 7) {
    image(imagen7, 0, 0, width, height);
    if (yPantalla7 < 80) {
      yPantalla7 += 2;
    }
    //boton para reiniciar:
    fill(255);
    rect(520, 420, 100, 35);
    fill(0);
    textAlign(CENTER, CENTER);
    text("Reiniciar", 570, 437);
  }
  //transiciones:
  if (pantalla > 0 && pantalla < 7) {
    if (frameCount - frameInicio > intervaloFrames) {
      pantalla++;
      frameInicio = frameCount;
      yPantalla1 = 480;
      yPantalla2 = -50;
      xPantalla3 = -300;
      xPantalla4 = 650;
      yPantalla5 = 10;
      yPantalla6 = 480;
      yPantalla7 = -50;
    }
  }
}
void mouseClicked() {
  //boton para empezar:
  if (pantalla == 0 &&
    mouseX >= 540 && mouseX <= 620 &&
    mouseY >= 20 && mouseY <= 50) {
    pantalla = 1;
    frameInicio = frameCount;
  }
  //boton reiniciar:
  if (pantalla == 7 &&
    mouseX >= 520 && mouseX <= 620 &&
    mouseY >= 420 && mouseY <= 455) {
    pantalla = 0;
    frameInicio = frameCount;
    yPantalla1 = 480;
    yPantalla2 = -50;
    xPantalla3 = -300;
    xPantalla4 = 650;
    yPantalla5 = 10;
    yPantalla6 = 480;
    yPantalla7 = -50;
  }
}
