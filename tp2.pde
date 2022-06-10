//https://youtu.be/DcrxBcRuojI

int cant = 5;
int tam,tam2;
int posx=0;
int posy=100;
int mousex;
int mousey;
int posx2=0;
int posy2=300;


void setup (){
size (500 , 500);
tam = 10;
tam2=height;

}


void draw(){
  noStroke();
background(255);
for(int i=0;i<30;i++){
  fill(0);
rect(tam*2*i ,0,tam,tam2);
}

rect(posx,posy,70,35);
fill(255);

rect(posx2,posy2,70,35);
if(posx>=0 && posy2>=0){
posx++;
posx2++;
} if(posx+70>=499 && posx2+70>=499){
  posx--;
  posx2--;
}

}
