

int juego = 0;

PImage fondo1;
PImage fondo2;
PImage fondo3;
PImage p;
PImage huevo;

Inicio inicio;
PantallaJuego pj;
Personaje per;
Huevo[] egg = new Huevo[4];

void setup(){

  size(800, 600);
  
  fondo1 = loadImage("fondo-1.png");
   fondo2 = loadImage("fondo-2.png");
   fondo3 = loadImage("fondo-3.png");
    p = loadImage("personaje_2.png");
    huevo = loadImage("comida_huevo.png");
   
   inicio = new Inicio();
   pj = new PantallaJuego();
   per = new Personaje();
   
   for (int i=0; i < egg.length; i++){
    float poshx = random(4, width-104);
    float poshy = random(-400, 0);
    
    egg[i] = new Huevo(poshx, poshy);
    
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
  
  }
}
