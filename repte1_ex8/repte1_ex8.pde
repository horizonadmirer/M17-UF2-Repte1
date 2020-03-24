// Variables que guardaràn un nombre enter 
// ràndom per canviar el color del cercle.
int randomR;
int randomG;
int randomB;
// Amplada del cercle.
int widthCercle = 50;    
// Posició inicial del cercle.
float posicioX, posicioY; 
// Velocitats fixes del moviment del cercle.
float velocitatX = 2.8;  
float velocitatY = 2.8; 
// Direccions del moviment del cercle (dreta & esquerra i nord & sud).
int direccioX = 1;
int direccioY = 1;

void setup() 
{
  // Creem la finestra amb una mida fixa i donem un número de fps predeterminat.
  size(840, 560);
  frameRate(60);
  ellipseMode(RADIUS);
  
  // Incialment, posem el cercle al mig de la finestra.
  posicioX = width/2;
  posicioY = height/2;
  // Generem de manera ràndom el primer color que tindrà el cercle.
  randomR = int(random(255));
  randomG = int(random(255));
  randomB = int(random(255));
}

void draw() 
{
  // Pintem el fons negre.
  background(0);
  
  // Anem movent el cercle per la pantalla.
  posicioX = posicioX + ( velocitatX * direccioX );
  posicioY = posicioY + ( velocitatY * direccioY );
  
  // Canviem la direcció i el color del cercle en funció d'on rebota.
  if (posicioX > width-widthCercle || posicioX < widthCercle) {
    direccioX *= -1;
    randomR = int(random(255));
    randomG = int(random(255));
    randomB = int(random(255));
  }
  if (posicioY > height-widthCercle || posicioY < widthCercle) {
    direccioY *= -1;
    randomR = int(random(255));
    randomG = int(random(255));
    randomB = int(random(255));
  }

  // Dibuixem el cercle i el pintem amb el color ràndom.
  fill(randomR,randomG,randomB);
  ellipse(posicioX, posicioY, widthCercle, widthCercle);
  
  // Debug de la posicióX per proves.
  print("X." + int(posicioX)+"-");
}
