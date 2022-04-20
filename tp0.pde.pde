void setup() {
size(500 ,500); 


}


void draw() {
  strokeWeight(5);
fill(255, 182 , 193);
point(random(width),random(height));
background(255);

ellipse(240 ,240 ,280 , 280);
ellipse(360 , 138, 12 , 43);
ellipse(270 , 100 ,12 ,43);
ellipse(383 , 250 , 20 ,90 );
ellipse (290 , 210 , 10,10);
ellipse(339 ,210,10,10);
ellipse(200,390,29,60);
ellipse(300,390,29,60);

bezier(20,90,40,240,120,40,110,180);
}
