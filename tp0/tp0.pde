PImage imagen; 
PImage loadImage;


void setup() {
  size (800, 400);  
  background (255);
  imagen = loadImage ("data/yo.png");
}

void draw() {

  image (imagen, 400, 0, 400, 400);
  fill (255, 250, 232); //color piel
  circle (200, 150, 200); //rostro
  fill (0);
  circle (150, 60, 50); //pelo
  circle (175, 60, 50);
  fill (156, 157, 157);
  rect(130, 92, 60, 8, 7);  //ceja izquierda
  fill (0);
  circle (250, 60, 50);
  circle (225, 60, 50);
  fill (156, 157, 157);
  rect(215, 92, 60, 8, 7);  //ceja derecha
  fill(0);
  circle (220, 60, 50);
  circle (275, 90, 50);
  circle (120, 90, 50);
  circle (115, 250, 50);
  circle (115, 220, 50);
  circle (115, 120, 50);
  circle (115, 115, 50); 
  circle (115, 190, 50);
  circle (115, 160, 50);
  circle (300, 160, 50);
  circle (300, 196, 50);
  circle (300, 230, 50);
  circle (300, 250, 50);
  circle (300, 125, 50);

  fill (255);  // color ojo blanco
  ellipse (150, 125, 50, 30); //ojo izquierdo
  fill (0);
  circle (115, 120, 50);
  fill(82, 47, 3);
  circle (149, 124, 20); // pupila izquierda
  fill(255);
  circle (149, 125, 9); // punto pupila 
  fill(255);
  ellipse (245, 125, 50, 30); // ojo derecho
  fill(82, 47, 3);
  circle (245, 124, 20); //pupila derecha
  fill(255);
  circle (245, 125, 9); //punto pupila
  fill(255, 198, 231);
  circle (180, 210, 25); //labios
  circle (205, 210, 25);  //labios
  fill (250,242,214);
  circle (188,175,12);  //fosas nasales
  circle (200,175,12);
  rect(186, 120, 15, 55, 7);  //tabique de nariz
 
}
