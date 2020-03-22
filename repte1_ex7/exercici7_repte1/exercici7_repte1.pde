PImage textura;
int numeroImgMaxim;
int imgActual = 0;
int widthTextura;
int heightTextura;

void setup() {
  // Carreguem la textura
  textura = loadImage("textura.png");
  // Creem una finestra de 750x750.
  size(750,750);
  // Calculem l'amplada i la llargada.
  widthTextura = textura.width;
  heightTextura = textura.height;
  // Calculem el número d'imatges que cabrien x fila en la finestra.
  numeroImgMaxim = width/textura.width;
}

void draw() {
  // Dibuixem la primera imatge en la posició 0,0.
  image(textura, 0, 0);
  
  // Fem un bucle for per les files i un altre per les columnes 
  // i anem pintant la finestra.
  for (int f=1; f <= numeroImgMaxim; f++) {
    image(textura, 0, f*widthTextura);
    for (int c=1; c <= numeroImgMaxim; c++) { 
      image(textura, widthTextura*f, widthTextura*c);
      image(textura, c*widthTextura, 0);
    } 
  }
  
  // Primer intent amb bucles while (seria molt ineficient). 
  /*while(imgActual < numeroImgMaxim) {
    image(textura, widthTextura, 0);
    imgActual++;
    widthTextura += textura.width;
  }
  imgActual = 0;
  widthTextura = textura.width;
  while(imgActual < numeroImgMaxim) {
    image(textura, widthTextura, heightTextura);
    imgActual++;
    widthTextura += textura.width;
  } 
  heightTextura = textura.height; */
}
