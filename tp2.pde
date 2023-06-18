//Chaparro,Nazarena 91573/6
// Comision 3
// TP2


PImage imagen;

int cant=10;
int tam, xtam, ytam;


void setup () {
  size (800, 400);
  background (0);
  imagen = loadImage ("ilusion_optica.png");
  tam=width/cant;   //80 valor
}

void draw () {
  image (imagen, 0, 0, 400, 400);
  translate (400, 0);
  for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) {
      if ((x+y)%2 ==0) {
        fill(255);
        circle (x*tam, y*tam, 20);
      }
    }
  }
}

void LineasGrillas () {
  push();
  strokeWeight(5);
  for (int x=0; x<cant; x++){
    for (int y=0; y<cant; y++){
      rect (x*tam,y*tam,tam,tam);
      pop ();
    }
    }
}


 
