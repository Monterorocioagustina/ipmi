//intervencion colores
//-colores cuadrado
float rojo = 255;
float verde = 255;
float azul = 0;

//-colores fondo
float violeta = 255;
float rosa = 255;
float blanco = 0;

void mouseMoved() {
  float distancia= dist(mouseX, mouseY,595,50);
  //-cuadrado 
  if (distancia < 100) {
    rojo = 0;
    verde = 0;
    azul = 255;
  } else if (mouseY > 300) {
    rojo = 0;
    verde = 255;
    azul = 0;
  } else {
    rojo = 255;
    verde = 255;
    azul = 0;
  }

  //-fondo
  if (mouseX < 500) {
    violeta = 255;
    rosa = 0;
    blanco = 255;
  } else if (mouseX > 700) {
    violeta = 0;
    rosa = 255;
    blanco = 255;
  } else {
    violeta = 255;
    rosa = 255;
    blanco = 0;
  }
}

//intervencion sentido
//-borde del cuadrado
boolean sentidoborde = false;
boolean sentidodiagonal= false;
boolean cuadradogirado= false;
void mousePressed() {
  if (mouseX > 400 + 6*17 &&
      mouseX < 400 + 17*17 &&
      mouseY > 6*17 &&
      mouseY < 17*17) {
    sentidoborde = !sentidoborde;
  }
  //-diagonales fondo
else if(mouseX>  400){
  sentidodiagonal= !sentidodiagonal;
}
}
//intervencion diagonales del centro letra l
boolean diagonalescentro = false;

void keyPressed() {

  if (key == 'l' || key == 'L') {
    diagonalescentro = !diagonalescentro;
  }

  if (key == 'r' || key == 'R') {
    rojo = 255;
    verde = 255;
    azul = 0;
    violeta = 255;
    rosa = 255;
    blanco = 0;
    sentidoborde = false;
    sentidodiagonal = false;
    diagonalescentro = false;
    cuadradogirado = false;
  }
//intervencion cuadrado en el medio letra c
  if (key == 'c' || key == 'C') {
    cuadradogirado = !cuadradogirado;
  }
}
