/*VIDEO JUEGO: SUPER HEALTHY, se debe comer saludable

Dayanna Navarrro
Nestor Andrés Galvis*/

int juego = 0;                                        //Declaración de las variables a usar
boolean siguiente = false;                            //de pantallla y boolean
boolean suma = false;
boolean resta = false;
boolean volver = false;
boolean sonar = false;

PImage barra;                                         //imagenes a usar

PImage fondo1;
PImage personajeinicio;

PImage fondo2;
PImage fondo3;
PImage fondo2_1;
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

PImage agua;
PImage pesa;

float posx = 350;
float posy = 500;

boolean pa = true;

PImage pausa;
PImage play;

boolean sonido = true;
PImage on;
PImage off;
PImage botonmenu;

int maxImages = 17;                         //inicio                              //animaciones
int ImageIndex = 0;

PImage [] images = new PImage[maxImages];   

int maxImages2 = 12;                       //instrucciones
int ImageIndex2 = 0;

PImage [] images2 = new PImage[maxImages2];

int maxImages3 = 6;                         //game over
int ImageIndex3 = 0;

PImage [] images3 = new PImage[maxImages3];

int maxImages4 = 24;                         //guia
int ImageIndex4 = 0;

PImage [] images4 = new PImage[maxImages4];

int maxImages5 = 6;                         //personaje guia
int ImageIndex5 = 0;

PImage [] images5 = new PImage[maxImages5];

PImage creditos;                                  //imagenes auxiliares
  
PImage mute;
PImage muteno;

PFont fuente;

float vida = 100;

float puntaje = 0;  

import ddf.minim.*;                               //minim para el sonido

Minim minim;
AudioPlayer player;                               //declaración de sonidos, guardarlos en variables
AudioPlayer player2;
AudioPlayer player3;

Minim soundengine;
AudioSample sonido1;
AudioSample sonido2;

Inicio inicio;                                          //objetos y arrays de objetos(comida que cae)
PantallaJuego pj;
Personaje per;
Proteina[] prot = new Proteina[2];
Cereales[] cereal = new Cereales[2];
Frutas[] fru = new Frutas[3];
Lacteos[] lac = new Lacteos[3];
Azucares[] azu = new Azucares[3];
NoComer[] fast = new NoComer[5];
Agua[] ag = new Agua[3];

Barras barras;

void setup(){
  
  size(800, 600);
  
  minim = new Minim(this);                                               //sonnidos guardarlos en las variables
  player = minim.loadFile("Stargazing.mp3");
  player2 = minim.loadFile("gameover.mp3");
  player3 = minim.loadFile("Adventure.mp3");
  
  soundengine = new Minim(this);
  sonido1 = soundengine.loadSample("correct-ding.mp3", 1024);
  
  soundengine = new Minim(this);
  sonido2 = soundengine.loadSample("chicharra-error-incorrecto-.mp3", 1024);
  
  fuente = createFont("Minecraft.ttf", 40);
  
  for(int i = 0; i < images.length; i++){                                              //animaciones
   images[i] = loadImage("INICIOO_" + i + ".png"); 
  }
  
  for(int i = 0; i < images2.length; i++){
   images2[i] = loadImage("instruccioness_" + i + ".png"); 
  }
  
  for(int i = 0; i < images3.length; i++){
   images3[i] = loadImage("Game Over_" + i + ".png"); 
  }
  
  for(int i = 0; i < images4.length; i++){
   images4[i] = loadImage("GUIA_" + i + ".png"); 
  }
  
  for(int i = 0; i < images5.length; i++){
   images5[i] = loadImage("SH ANIMADO_" + i + ".png"); 
  }
  
  mute = loadImage("mute.jpeg");                                                //guardar imagenes en variables
  muteno = loadImage("muteno.jpeg");
  
  creditos = loadImage("FONDO CREDITOS_0.png");
   barra = loadImage("vida2.png");
 
   botonmenu = loadImage("botonmenu1.png");
 
   fondo2_1 = loadImage("2DAS INSTRUCCIONES_0.png");
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
    
    agua = loadImage("agua2.png");
    pesa = loadImage("pesa1.png");
    
    pausa = loadImage("pausa.png");
    play = loadImage("play.png");
    
    on = loadImage("on.png");
    off = loadImage("off.png");
     
     inicio = new Inicio();                                                         //clases
     pj = new PantallaJuego();
     per = new Personaje();
     barras = new Barras();

   for (int i=0; i < prot.length; i++){                                            //clases de las comidas en arrays
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
   
   for (int i=0; i < ag.length; i++){
    ag[i] = new Agua();
   }
   
}

void draw(){                          
  
  if(pa == true){                                    //si no está pausado
   
    inicio.display();                                //corre con normalidad
    inicio.comenzar();
 
      if(juego == 3){                                //pantalla de juego
        frameRate(60);
        pj.display();
        pj.puntos();
        player3.pause();                             //se muestra la pantalla de juego, se para el audio anterior
        
         if(sonido == true){                        //reproduce el siguiente audio
          image(off, 600, 10);   
          player.play();
          image(off, 600, 10);                      //imagen de mute o sonido
          if(player.isPlaying() == false){
            player.play();
          }
         }
         if(sonido == false){
          player.pause(); 
          image(on, 700, 10);
         }
         
        
        for(int i = 0; i < prot.length; i++){                 //comidas que caen
           prot[i].display();
           prot[i].move();
           prot[i].reaparecer();
        }
        
         for(int i = 0; i < cereal.length; i++){
           cereal[i].display();
           cereal[i].move();
           cereal[i].reaparecer();
        }
        
        for(int i = 0; i < fru.length; i++){
           fru[i].display();
           fru[i].move();
           fru[i].reaparecer();
        }
        
        for(int i = 0; i < lac.length; i++){
           lac[i].display();
           lac[i].move();
           lac[i].reaparecer();
        }
        
        for(int i = 0; i < azu.length; i++){
           azu[i].display();
           azu[i].move();
           azu[i].reaparecer();
        }
        
        for(int i = 0; i < fast.length; i++){
           fast[i].display();
           fast[i].move();
           fast[i].reaparecer();
        }
        
        for(int i = 0; i < ag.length; i++){
           ag[i].display();
           ag[i].move();
           ag[i].reaparecer();
        }
         
        per.display();                                                            //se muestra al personaje y su movimiento 
        per.move(); 
        
        barras.display();                                                         //se muestra la barra superior
        
        pj.puntosmostrar();
        
        for(int i = 0; i < prot.length; i++){                                                                                   //sumar puntos tomando valores de posicion de las comidas
          barras.vidasumaprot(prot[i].getPosHuevoX(),prot[i].getPosHuevoY(),prot[i].getPosPezX(),prot[i].getPosPezY(),
          prot[i].getPosPolloX(),prot[i].getPosPolloY(),prot[i].getPosFileteX(),prot[i].getPosFileteY());
        }
        
        for(int i = 0; i < cereal.length; i++){
           barras.sumapuntoscereal(cereal[i].getPosArrozX(), cereal[i].getPosArrozY(), cereal[i].getPosPastaX(), cereal[i].getPosPastaY(),
           cereal[i].getPosPapaX(), cereal[i].getPosPapaY(), cereal[i].getPosPanX(), cereal[i].getPosPanY());
        }
        
        for(int i = 0; i < fru.length; i++){
           barras.sumapuntosfrutas(fru[i].getPosManzanaX(), fru[i].getPosManzanaY(), fru[i].getPosBrocoliX(), fru[i].getPosBrocoliY(),
           fru[i].getPosBananoX(), fru[i].getPosBananoY());
        }
        
        for(int i = 0; i < lac.length; i++){
           barras.sumapuntoslacteos(lac[i].getPosLecheX(), lac[i].getPosLecheY(), lac[i].getPosQuesoX(), lac[i].getPosQuesoY(),
           lac[i].getPosYogurtX(), lac[i].getPosYogurtY());
        }
        
        for(int i = 0; i < azu.length; i++){
           barras.sumapuntosazucares(azu[i].getPosAguacateX(), azu[i].getPosAguacateY(), azu[i].getPosMielX(), azu[i].getPosMielY());
        }
        
        for(int i = 0; i < fast.length; i++){
           barras.bajapuntosfast(fast[i].getPosChocolateX(), fast[i].getPosChocolateY(), fast[i].getPosDulceX(), fast[i].getPosDulceY(),
           fast[i].getPosPizzaX(), fast[i].getPosPizzaY(), fast[i].getPosHamburguesaX(), fast[i].getPosHamburguesaY(),
           fast[i].getPosPerroX(), fast[i].getPosPerroY(), fast[i].getPosGaseosaX(), fast[i].getPosGaseosaY(),
           fast[i].getPosPapasFX(), fast[i].getPosPapasFY(), fast[i].getPosDonaX(), fast[i].getPosDonaY());
        }
        
        for(int i = 0; i < ag.length; i++){
           barras.sumapuntosagua(ag[i].getPosAguaX(), ag[i].getPosAguaY(), ag[i].getPosPesaX(), ag[i].getPosPesaY());
        }
        
        barras.gameover();                                          //cuando se pierde(puntos llegan a 0)
      }
  }
}

void mousePressed(){                                      //botones para pausar/play al juego y para mute/sonido
  
  if(juego == 3 && mouseX > 700 && mouseY > 10 && mousePressed && mouseX < 780 && mouseY < 40){     //si esta en la pantalla de juego y se presiona el boton de pausa
    
    if(pa == true){                                   
      pa = false;                           //el juego se pausa
      image(play, 700, 10);                  //cambia el boton
      delay(70);
      
      if(player.isPlaying()){                  //para la musica
       player.pause(); 
      }
    }else{
      pa = true;                            //si se da play, se pone la imagen del boton de pausa
      image(pausa, 700, 10);
      delay(70);
    }
  }
  
  if(juego == 3 && mouseX > 600 && mouseY > 10 && mousePressed && mouseX < 680 && mouseY < 40){                //si se está en la pantalla de juego y se presiona el boton para mute
    
    if(sonido == true){            //cambia la b=varaiable de la que depende el sonido
     
      sonido = false;
      
    }else{
      sonido = true;              
    }
  }
  
  if(juego == 0 && mouseX > 371 && mouseY > 495 && mousePressed && mouseX < 451 && mouseY < 525){                       //si se está en inicio y se quiere mutear
    
    if(sonido == true){
      sonido = false;
      
    }else{
      sonido = true;
    }
  }
}
