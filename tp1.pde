/* Chaparro,Nazarena (comision 3)
 tp1 - El Jardin De Las Historias
 */

PImage imagen1, imagen2, imagen3;
PFont fuente;
PFont fuente1;
int botoninicio;
float y = 50;
float x = 50;
float velocidad = 1;
int imagen = 1;


void setup () {
  background (0);
  size (640, 480);
  //frameRate(20);
  fuente= loadFont ("Arial-Black-50.vlw");  //texto para las pantallas
  //textMode(CENTER);
  imagen1 = loadImage("imagen1.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");
  fuente1 = loadFont ("Arial-BoldMT-48.vlw");   //inicio boton
}
void draw () {
  textFont (fuente);
  imageMode(CENTER);
  image(imagen1, 348, 259, 695, 600);
  textFont (fuente1);
  textSize (25);
  text("inicio", 80, 425);
  fill (0);

  if (mousePressed == true) {
    fill(0);
  } else {
    fill(255);
  }
  rect(60, 390, 100, 50, 20);
}
/*if (imagen == 1) {
 image(imagen1, 0, 0, 640, 480);
 fill (255);
 text ("Se trata de una instalación interactiva con una gran pantalla \n\y la proyección de un bosque virtual, cuyos árboles se componen de frases. Cada árbol y cada rama representan un relato, construyéndo una historia con la participación de diferentes personas.",    text ("Se trata de una instalación interactiva con una gran pantalla y la proyección de un bosque virtual, cuyos árboles se componen de frases. Cada árbol y cada rama representan un relato, construyéndo una historia con la participación de diferentes personas.",
 
 */
