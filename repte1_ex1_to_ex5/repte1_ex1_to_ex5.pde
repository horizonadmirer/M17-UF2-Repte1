//Variables per fer el tracking del cursor.
float x; float y;
float easing = 1;

void setup(){
  //Posem una mida fixa de la pantalla. 
  size(600,600);
}

void draw(){
  //Pintem el fons de blanc.
  background(255);
  
  //Dibuixem i pintem un triangle.
  fill(200,50,125);
  triangle(60, 150, 116, 40, 172, 150);
  
  //Dibuixem i pintem un cercle.
  fill(120,10,100);
  circle(50, 40, 55);
  
  //Dibuixem i pintem un quadrat.
  fill(125,150,200);
  square(200, 100, 40);
  
  //Dibuixem, pintem i fem seguir l'el·lipse al cursor.
  float targetX = mouseX;
  float dx = targetX - x;
  x = x + dx * easing;
  float targetY = mouseY;
  float dy = targetY - y;
  y = y + dy * easing;
  fill(5,150,200);
  ellipse(x, y, 25, 25);
}
