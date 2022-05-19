PImage fondo;
PFont texto;
int numFrames = 5; // Número de imagenes en la animación
int frame = 0;
PImage imagen0,imagen1,imagen2,imagen3,imagen4;
int posy=600;
int posy1=600;
int posy2=600;
int posy3=600;
int posy4=600;
int posy5=600;
int posy6=600;


void setup(){
background(20 , 50 , 50); 
size(400 , 400);
fondo = loadImage ( "fondo.jpg"); 
texto = loadFont("GameOfSquids-48.vlw");
textMode(CENTER);

imagen0 = loadImage("imagen0.jpg");
imagen1 = loadImage("imagen1.jpg");
imagen2 = loadImage("imagen2.jpg");
imagen3 = loadImage("imagen3.jpg");
imagen4 = loadImage("imagen4.jpg");
}


void draw(){
imageMode(CORNER);
textSize(10);
textFont(texto);
image(fondo, 0, 0, 400, 400); 
fill(#FC8FC4);
 

image(imagen0,0,posy,400,400);
image(imagen1,0,posy1,400,400);
image(imagen2,0,posy4,400,400);
image(imagen3,0,posy3,400,400);
image(imagen4,0,posy2,400,400);
text("musica y direccion",0,posy6);
text("   actores\nprincipales",0,posy5);
posy5--;
if(posy5<100 && posy2>-400){
  posy5=100;}

posy--;
if(posy<-400){
posy=-400;
posy2--;

}
if (posy2<-400){
  posy5--;
  posy1=-400;
  posy1--;}

if(posy1<-400){
posy2=-400;
posy3--;

}
if (posy3<-400){
  posy3=-400;
  posy4--;}
} 




  







  


  
  
  
  
  
  
