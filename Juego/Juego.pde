int juego = 0;

PImage fondo1;
PImage personajeinicio;

PImage fondo2;
PImage fondo3;
PImage p;

PImage huevo;
PImage pescado;
PImage pollo;
PImage filete;

PImage manzana;
PImage brocoli;
PImage banano;

PImage arroz;
PImage pasta;
PImage papa;
PImage pan;

PImage leche;
PImage queso;
PImage yogurt;

PImage aguacate;
PImage miel;

PImage chocolate;
PImage dulce;
PImage pizza;
PImage hamburguesa;
PImage perro;
PImage gaseosa;
PImage papasfritas;
PImage dona;

float posx = 350;
float posy = 500;

boolean pa = true;

PImage pausa;
PImage play;

int maxImages = 17;
int ImageIndex = 0;

PImage [] images = new PImage[maxImages];
  
Inicio inicio;
PantallaJuego pj;
Personaje per;
Proteina[] prot = new Proteina[3];
Cereales[] cereal = new Cereales[3];
Frutas[] fru = new Frutas[3];
Lacteos[] lac = new Lacteos[3];
Azucares[] azu = new Azucares[3];
NoComer[] fast = new NoComer[6];

Barras barras;

void setup(){

  
  size(800, 600);
  
  fondo1 = loadImage("fondo-inicio1.jpeg");
  
  for(int i = 0; i < images.length; i++){
   images[i] = loadImage("inicio_" + i ".png"); 
  }
  
   fondo2 = loadImage("circulo-grupos-alimenticios 1.png");
   fondo3 = loadImage("colores.jpeg");
   
    p = loadImage("personaje-juego.png");
    
    huevo = loadImage("comida-huevo4.png");
    pescado = loadImage("comida-pescado1.png");
    pollo = loadImage("comida-pollo1.png");
    filete = loadImage("comida-filete1.png");
    
    arroz = loadImage("comida-arroz1.png");
    pasta = loadImage("comida-pasta1.png");
    papa = loadImage("comida-papa.png");
    pan = loadImage("comida-pan1.png");
    
    manzana = loadImage("comida-manzana1.png");
    brocoli = loadImage("comida-brocoli1.png");
    banano = loadImage("comida-banano1.png");
    
    leche = loadImage("comida-leche1.png");
    queso = loadImage("comida-queso1.png");
    yogurt = loadImage("comida-yogurt1.png");
    
    aguacate = loadImage("comida-aguacate1.png");
    miel = loadImage("comida-miel1.png");
    
    chocolate = loadImage("comida-chocolate1.png");
    dulce = loadImage("comida-dulce1.png");
    pizza = loadImage("comida-pizza1.png");
    hamburguesa = loadImage("comida-hamburguesa1.png");
    perro = loadImage("comida-hotdog1.png");
    gaseosa = loadImage("comida-gaseosa1.png");
    papasfritas = loadImage("comida-papasf1.png");
    dona = loadImage("comida-dona1.png");
    
    pausa = loadImage("pausa.png");
    play = loadImage("play.png");
    
   
   inicio = new Inicio();
   pj = new PantallaJuego();
   per = new Personaje();
   barras = new Barras();

   
   for (int i=0; i < prot.length; i++){
    prot[i] = new Proteina();
   }
   
   for (int i=0; i < cereal.length; i++){
    cereal[i] = new Cereales();
   }
   
   for (int i=0; i < fru.length; i++){
    fru[i] = new Frutas();
   }
   
   for (int i=0; i < lac.length; i++){
    lac[i] = new Lacteos();
   }
   
   for (int i=0; i < azu.length; i++){
    azu[i] = new Azucares();
   }
   
   for (int i=0; i < fast.length; i++){
    fast[i] = new NoComer();
   }
   
}



void draw(){
 
  if(pa == true){
  
  inicio.display();
  inicio.comenzar();

  if(juego == 2){
  pj.display();
  
  for(int i = 0; i < prot.length; i++){
   prot[i].display();
   prot[i].move();
  }
  
   for(int i = 0; i < cereal.length; i++){
   cereal[i].display();
   cereal[i].move();
  }
  
  for(int i = 0; i < fru.length; i++){
   fru[i].display();
   fru[i].move();
  }
  
  for(int i = 0; i < lac.length; i++){
   lac[i].display();
   lac[i].move();
  }
  
  for(int i = 0; i < azu.length; i++){
   azu[i].display();
   azu[i].move();
  }
  
  for(int i = 0; i < fast.length; i++){
   fast[i].display();
   fast[i].move();
  }
  
  per.display();
  per.move();
  
  barras.display();
  
  }
}

println(pa, juego);
}

void mousePressed(){
  
  if(juego == 2 && mouseX > 700 && mouseY > 10 && mousePressed && mouseX < 780 && mouseY < 40){
    
    if(pa == true){
      pa = false;
      image(play, 700, 10);
      delay(70);
      
    }else{
      pa = true;
      image(pausa, 700, 10);
      delay(70);
    }
  
  }
  
}
