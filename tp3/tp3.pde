int pantallas[] = new int [15];
PImage fondo;
PFont texto;
PFont fuente1;

void setup () {
  size (600, 600);
  fondo = loadImage ( "fondo.jng");
  fuente1=loadFont ("Candara-48.vlw");
  imageMode(CENTER);
  for (int i=0; i<pantallas.length; i++) {
    pantallas[i]=0;
  }
  textAlign(CENTER);
}



void draw () {
  background(0);
  textFont(fuente1);
  fill(255);
  //text("menu", posX, posY);
  //text("victoria", posX1, posY1);
  if (pantallas[0]==0) {
    menu();
  }
  if (pantallas[1]==1) {
    inicio();
  } else if (pantallas[2]==1) {
    creditos();
  }
  
  void finalbueno() {
 
  
  }

  void finalmalo() {
  }

  void finalnormal () {
  }

  void mousePressed () {
 if ( pantallas==0 ) {
    pantallas = 1;
  } else if ( pantallas==1 ) {
    pantallas = 2;
  } else if ( pantallas==2 ) {
    pantallas = 3;
  } else if ( pantallas==3) {
    pantallas = 4;
  }
  else if (pantallas==4) {
    pantallas=5;
  }
  else if (pantallas==5) {
    pantallas=6;
  }
  else if (pantallas==6) {
    pantallas=7;
  }
  else if (pantallas==7) {
    pantallas=8;
  }
  else if (pantallas==8) {
    pantallas=9;
  }
  else if (pantallas==10) {
    pantallas=11;
  }
  else if (pantallas==11) {
    pantallas=12;
  }
  else if (pantallas==12) {
    pantallas=13;
  }
  else if (pantallas==13) {
    pantallas=14;
  }
  
  
  
  }

void menu() {
    textSize(30);
  text("menu", width/2, 120);
  boton(width/2-70, height-170, "inicio");
  boton(width/2-70, height-100, "Creditos");
  if (click) {
    if (dist(mouseX, mouseY, width/2-40, height-170)<70) {
      pantallas[1]=1;
    }
    if (dist(mouseX, mouseY, width/2-40, height-100)<70) {
      pantallas[2]=1;
    }
  }
  click=false;
}
  
  
}


void inicio () {
  
  
  
}

void creditos () {
    background(255);
  text("Creditos", 50, 50);
  
}

void boton(float posXbot, float posYbot, String texto) {
  noStroke();
  fill(255);
  rect(posXbot, posYbot, 150, 50, 20);
  fill(0);
  text(texto, posXbot+80, posYbot+35);
