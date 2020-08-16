

int juego = 0;

PImage fondo1;
PImage fondo2;
PImage fondo3;
PImage p;
PImage huevo;
PImage manzana;
PImage arroz;
PImage leche;
PImage chocolate;

Inicio inicio;
PantallaJuego pj;
Personaje per;
Huevo[] egg = new Huevo[3];
Arroz[] rice = new Arroz[8];

void setup(){

  size(800, 600);
  
  fondo1 = loadImage("fondo-1.png");
   fondo2 = loadImage("fondo-2.png");
   fondo3 = loadImage("fondoclaro.png");
    p = loadImage("personaje_2.png");
    huevo = loadImage("comida-huevo4.png");
    arroz = loadImage("comida-arroz1.png");
    manzana = loadImage("comida-manzana1.png");
    leche = loadImage("comida-leche1.png");
    chocolate = loadImage("comida-chocolate1.png");
   
   inicio = new Inicio();
   pj = new PantallaJuego();
   per = new Personaje();
   
   for (int i=0; i < egg.length; i++){
    float poshx = int(random(0, 8))*100;
    float poshy = int(random(-8, 0))*100;
    egg[i] = new Huevo(poshx, poshy);
   }
   
   for (int i=0; i < rice.length; i++){
    float poshx = int(random(0, 8))*100;
    float poshy = int(random(-8, 0))*100;
    rice[i] = new Arroz(poshx, poshy);
   }
   
}

void draw(){
 
  inicio.display();
  inicio.comenzar();
  
  if(juego == 2){
  pj.display();
  
  per.display();
  per.move();
  
  for(int i = 0; i < egg.length; i++){
   egg[i].display();
   egg[i].move();
  }
  
    for(int i = 0; i < rice.length; i++){
   rice[i].display();
   rice[i].move();
  }
  
  }
}
