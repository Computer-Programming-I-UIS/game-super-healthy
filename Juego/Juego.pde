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
PImage zanahoria;

PImage arroz;
PImage pasta;
PImage papa;
PImage pan;

PImage leche;
PImage queso;
PImage yogurt;

PImage chocolate;
PImage dulce;

PImage basura;
PImage veneno;

Inicio inicio;
PantallaJuego pj;
Personaje per;
Proteina[] prot = new Proteina[3];
Cereales[] cereal = new Cereales[8];
Frutas[] fru = new Frutas[5];
Lacteos[] lac = new Lacteos[4];
Azucares[] azu = new Azucares[2];
Basura[] bas = new Basura[3];

void setup(){

  size(800, 600);
  
  fondo1 = loadImage("fondo-inicio1.jpeg");
  personajeinicio = loadImage("SUPER.gif");
  
   fondo2 = loadImage("fondo-2.png");
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
    zanahoria = loadImage("comida-zanahoria1.png");
    
    leche = loadImage("comida-leche1.png");
    queso = loadImage("comida-queso1.png");
    yogurt = loadImage("comida-yogurt1.png");
    
    chocolate = loadImage("comida-chocolate1.png");
    dulce = loadImage("comida-dulce1.png");
    
    basura = loadImage("basura1.png");
    veneno = loadImage("veneno2.png");
   
   inicio = new Inicio();
   pj = new PantallaJuego();
   per = new Personaje();
   
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
   
   for (int i=0; i < bas.length; i++){
    bas[i] = new Basura();
   }
   
}

void draw(){
 
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
  
  for(int i = 0; i < bas.length; i++){
   bas[i].display();
   bas[i].move();
  }
  
  per.display();
  per.move();
  
  }
}
