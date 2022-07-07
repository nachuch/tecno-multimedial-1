//https://youtu.be/yuAdNjcXsEU

// ENEMIGO//
float posXEn, posYEn;
PImage zombie;

// PERSONAJE //
float posXPj, posYPj;
// PROYECTILES //
float posXPro, posYPro;
PImage fondo; 
PImage planta;
int objetivo=10;
PFont texto;
int posX;
int posX1;
int posY;
int posY1;
boolean disparar=false;

int pantallas[] = new int [5];

void setup() {
  fondo = loadImage ( "fondo.png"); 
  planta = loadImage ( "planta.png"); 
  zombie = loadImage ( "zombie.png"); 
  size(800, 500);
  posXEn=width+100;
  posYEn=random(30, height-30);
  posXPj=300;
  posYPj= height/2;
  posXPro=posXPj+10;
  posYPro= posYPj-5;
  imageMode(CENTER);
  for (int i=0; i<pantallas.length; i++) {
    pantallas[i]=0;
  }
}
void draw() {
  background(0);
fill(255);
text("menu",posX,posY);
text("victoria",posX1,posY1);
  //for (int i=0; i<pantallas.length; i++) {
   // pantallas[i]=0;
  //}
  if (pantallas[0]==0){
    menu();
  }
  if (pantallas[1]==1) {
    juego();
  } else if (pantallas[2]==1) {
    victoria();
  }
}
void zombies() {
  for (int i=0; i<3; i++) {
    image(zombie, posXEn, posYEn*i+50, 50, 60);
    if (dist(posXPro, posYPro, posXEn, (posYEn+30)*i)<50) {
      posXPro=posXPj+10;
      posYPro=posYPj-5;
      disparar=false;
      posXEn=width+100;
      objetivo--;
    }
  }
if (posXEn>width+20) {
    posYEn=random(30, height-30);
  }
  if (posXEn<0) {
    posXEn=width+100;
  }            
  posXEn-=3;
}
void victoria() {
  background(0);
  text("ganaste", width/2, 120);
   objetivo=10;
}
void keyPressed() {
  if (keyCode==UP) {
    posYPj-=5;
  } else if (keyCode==DOWN) {
    posYPj+=5;
  } else if ( keyCode==' ') {
    disparar=true;
    pantallas[1]=1;
    
  }else if (keyCode=='r'|| keyCode=='R'){
    pantallas[0]=0;
    pantallas[1]=0;
    pantallas[2]=0;
    pantallas[3]=0;
    pantallas[4]=0;
     }
  }
void juego() {
  image(fondo, width/2, height/2, width, height); 
  fill(0, 255, 0);
  circle(posXPro, posYPro, 10);  
  image(planta, posXPj, posYPj, 50, 50); 
  zombies();
  textSize(20);
  fill(255);
  text("Elimina esta cantidad  " + objetivo, 20, 20);
  if (disparar) {
    posXPro+=5;
  }
  if (posXPro > width) {
    posXPro=posXPj+10;
    posYPro=posYPj-5;
    disparar=false;
  }
  if (posXPro<=310) {
    posYPro=posYPj-5;
  }
  if (objetivo==0) {
    pantallas[2]=1;
    pantallas[1]=0;
  }
}
void derrota(){
  }
void menu(){
  textSize(30);
  text("menu",width/2,120);
  }
