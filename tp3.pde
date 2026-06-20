//link al video; https://youtu.be/SX2g0GVI1Zk
PImage imagen;

void setup() {
  size(800, 400);
  imagen = loadImage("imagen 29.png");
}
void draw() {
  background(0);
  image(imagen, 0, 0, 400, 400);

  int tam = 17;
  int mitad = tam / 2;

  //1era capa: fondo
  for (int y = 0; y < 400; y += tam) {
    for (int x = 400; x < 800; x += tam) {
      int columna = (x - 400) / tam;
      int fila = y / tam;

      noStroke();
      fill(violeta, rosa, blanco);
      rect(x, y, tam, tam);

      int patron = calcularpatron(fila, columna);

      fill(0);

      if (patron == 1) {
        rect(x, y, tam, tam);
      }

      if (patron == 0) {
        rect(x, y + mitad, mitad, mitad);
      }

      if (patron == 2) {
        rect(x + mitad, y, mitad, mitad);
      }
    }
  }

  //2da capa: cuadrado del centro
  fill(rojo, verde, azul);
  noStroke();
  rect(400 + 6 * tam, 6 * tam, 11 * tam, 11 * tam);

  //3era capa: diagonales interiores
  fill(0);
  for (int inicioColumna = 7; inicioColumna <= 25; inicioColumna += 3) {
    for (int paso = 0; paso < 11; paso++) {
      int columnaInterior;

      if(cuadradogirado){
        continue;
      }
      if (diagonalescentro){
        columnaInterior= inicioColumna;
      }else{
        columnaInterior=inicioColumna-paso;
      }
      int filaInterior = 6 + paso;

      if (columnaInterior >= 6 && columnaInterior <= 16 &&
          filaInterior >= 6 && filaInterior <= 16) {

        int x = 400 + columnaInterior * tam;
        int y = filaInterior * tam;

        rect(x, y, tam, tam);
        rect(x - mitad, y + mitad, mitad, mitad);
        rect(x + tam, y, mitad, mitad);
        rect(x, y + tam, mitad, mitad);
      }
    }
  }

  //detalles tapados
  fill(violeta, rosa, blanco);
  noStroke();
  rect(400 + 7 * tam, 17 * tam, tam, tam);
  rect(400 + 10 * tam, 17 * tam, tam, tam);
  rect(400 + 13 * tam, 17 * tam, tam, tam);
  rect(400 + 16 * tam, 17 * tam, tam, tam);

  //4ta capa: bordes del cuadrado
  //borde de arriba
  int yBorde = 5 * tam;

  fill(violeta, rosa, blanco);
  rect(400 + 5 * tam, yBorde - 1, 13 * tam, 18);

  fill(0);

  if (sentidoborde == false) {
    rect(400 + 5 * tam, yBorde - 1, tam, 18);

    for (int xBorde = 400 + 5 * tam + tam + tam + mitad;
         xBorde < 400 + 18 * tam;
         xBorde += tam * 3) {
      rect(xBorde, yBorde - 1, tam + mitad, 18);
    }

  } else {
    rect(400 + 6 * tam, yBorde - 1, tam, 18);

    for (int xBorde = 400 + 6 * tam + tam + tam + mitad;
         xBorde < 400 + 18 * tam;
         xBorde += tam * 3) {
      rect(xBorde, yBorde - 1, tam + mitad, 18);
    }
  }

  //borde lado izquierdo
  int xBordeIzq = 400 + 5 * tam;

  fill(violeta, rosa, blanco);
  rect(xBordeIzq - 1, 5 * tam, 18, 13 * tam);

  fill(0);

  if (sentidoborde == false) {
    rect(xBordeIzq - 1, 5 * tam, 18, tam);

    for (int yBordeIzq = 5 * tam + tam + tam + mitad;
         yBordeIzq < 18 * tam;
         yBordeIzq += tam * 3) {
      rect(xBordeIzq - 1, yBordeIzq, 18, tam + mitad);
    }

  } else {
    rect(xBordeIzq - 1, 6 * tam, 18, tam);

    for (int yBordeIzq = 6 * tam + tam + tam + mitad;
         yBordeIzq < 18 * tam;
         yBordeIzq += tam * 3) {
      rect(xBordeIzq - 1, yBordeIzq, 18, tam + mitad);
    }
  }

  //borde lado derecho
  int xBordeDer = 400 + 17 * tam;

  fill(violeta, rosa, blanco);
  rect(xBordeDer, 5 * tam, tam, 13 * tam);

  fill(0);

  if (sentidoborde == false) {
    for (int fila = 17; fila >= 5; fila -= 3) {
      int x = xBordeDer;
      int y = fila * tam;

      rect(x, y, tam, tam + mitad);
      rect(x - mitad, y + mitad, mitad, mitad);
    }

  } else {
    for (int fila = 16; fila >= 5; fila -= 3) {
      int x = xBordeDer;
      int y = fila * tam;

      rect(x, y, tam, tam + mitad);
      rect(x - mitad, y + mitad, mitad, mitad);
    }
  }

  //borde de abajo
  fill(violeta, rosa, blanco);
  rect(400 + 16 * tam + mitad, 17 * tam, tam, tam);
  rect(400 + 17 * tam, 18 * tam, mitad, tam);

  int yBordeAbajo = 17 * tam;

  fill(violeta, rosa, blanco);
  rect(400 + 5 * tam, yBordeAbajo, -1, 13 * tam, tam);

  fill(0);

  if (sentidoborde == false) {
    for (int columna = 17; columna >= 5; columna -= 3) {
      int x = 400 + columna * tam;
      int y = yBordeAbajo;

      rect(x, y, tam, tam);
    }

  } else {
    for (int columna = 16; columna >= 5; columna -= 3) {
      int x = 400 + columna * tam;
      int y = yBordeAbajo;

      rect(x, y, tam, tam);
    }
  }

  //detalles de la grilla
  stroke(198, 42, 42);
  for (int x = 400; x <= 800; x += tam) {
    dibujarlineavertical(x);
  }

  stroke(167, 162, 162);
  for (int y = -1; y <= 400; y += tam) {
    line(400, y, 800, y);
}
//funcion rotate 
if(cuadradogirado){
  translate(595,195);
  rotate(radians(45));
  fill(0);
  rect(-15,-15,30,30);
  }
}
//funcion con retorno y parametros
int calcularpatron(int fila, int columna) {
  if (sentidodiagonal == false) {
    return (fila - columna + 100) % 3;
  } else {
    return (fila + columna + 100) % 3;
  }
}
//funcion sin retorno con parametros
void dibujarlineavertical(int x) {
  line(x, 0, x, 400);
}
