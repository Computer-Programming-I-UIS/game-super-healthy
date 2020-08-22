class Barras {
  
 Barras(){
   
 }
  
  
  void display(){
   
    noStroke();
    fill(#CBC5C5);
    rect(0, 0, 800, 50);
    
    image(pausa, 700, 10);
    
    
     if(sonido){
      player.play(); 
      image(off, 600, 10);
     }
     else{
      player.pause();
      image(on, 600, 10);
     }
    
    if(vida >= 0){
    vida = vida - 0.03;
    }
    fill(255);
    rect(14, 16, 14 + (vida*2), 10);
    image(barra, 8, 10);
    
    
    
  }
  
  void vidasumaprot(float poshuevox, float poshuevoy, float pospezx, float pospezy, float pospollox, float pospolloy, float posfiletex, float posfiletey){
    if((poshuevox > posx - 20 && poshuevox < posx + 70 && poshuevoy + 70 > posy + 10 && poshuevoy + 70 < posy + 70) ||
    (pospezx > posx - 20 && pospezx < posx + 70 && pospezy + 70 > posy + 10 && pospezy + 70 < posy + 70) || 
    (pospollox > posx - 20 && pospollox < posx + 70 && pospolloy + 70 > posy + 10 && pospolloy + 70 < posy + 70) ||
    (posfiletex > posx - 20 && posfiletex < posx + 70 && posfiletey + 70 > posy + 10 && posfiletey + 70 < posy + 70)) {
      suma =!suma;
    } 
    if(suma == true && vida <= 100){
         vida = vida + 0.2; 
     suma = false; 
    }
    if(suma == true && vida <= 100){
     vida = vida + 0.2; 
    }
}

void sumapuntoscereal(float posarrozx, float posarrozy, float pospastax, float pospastay, float pospapax, float pospapay, float pospanx, float pospany){
  if((posarrozx > posx - 20 && posarrozx < posx + 70 && posarrozy + 70 > posy + 10 && posarrozy + 70 < posy + 70) ||
    (pospastax > posx - 20 && pospastax < posx + 70 && pospastay + 70 > posy + 10 && pospastay + 70 < posy + 70) || 
    (pospapax > posx - 20 && pospapax < posx + 70 && pospapay + 70 > posy + 10 && pospapay + 70 < posy + 70) ||
    (pospanx > posx - 20 && pospanx < posx + 70 && pospany + 70 > posy + 10 && pospany + 70 < posy + 70)) {
      suma =!suma;
    } 
    if(suma == true && vida <= 100){
         vida = vida + 0.2; 
     suma = false; 
    }
    if(suma == true && vida <= 100){
     vida = vida + 0.2; 
    }
}


void sumapuntosfrutas(float posmanx, float posmany, float posbrox, float posbroy, float posbax, float posbay){
  if((posmanx > posx - 20 && posmanx < posx + 70 && posmany + 70 > posy + 10 && posmany + 70 < posy + 70) ||
    (posbrox > posx - 20 && posbrox < posx + 70 && posbroy + 70 > posy + 10 && posbroy + 70 < posy + 70) ||
    (posbax > posx - 20 && posbax < posx + 70 && posbay + 70 > posy + 10 && posbay + 70 < posy + 70)) {
      suma =!suma;
    } 
    if(suma == true && vida <= 100){
         vida = vida + 0.2; 
     suma = false; 
    }
    if(suma == true && vida <= 100){
     vida = vida + 0.2; 
    }
}

void sumapuntoslacteos(float poslechex, float poslechey, float posquesox, float posquesoy, float posyogurtx, float posyogurty){
  if((poslechex > posx - 20 && poslechex < posx + 70 && poslechey + 70 > posy + 10 && poslechey + 70 < posy + 70) ||
    (posquesox > posx - 20 && posquesox < posx + 70 && posquesoy + 70 > posy + 10 && posquesoy + 70 < posy + 70) ||
    (posyogurtx > posx - 20 && posyogurtx < posx + 70 && posyogurty + 70 > posy + 10 && posyogurty + 70 < posy + 70)) {
      suma =!suma;
    } 
    if(suma == true && vida <= 100){
         vida = vida + 0.2; 
     suma = false; 
    }
    if(suma == true && vida <= 100){
     vida = vida + 0.2; 
    }
}

void sumapuntosazucares(float posagx, float posagy, float posmielx, float posmiely){
  if((posagx > posx - 20 && posagy < posx + 70 && posagy + 70 > posy + 10 && posagy + 70 < posy + 70) ||
    (posmielx > posx - 20 && posmielx < posx + 70 && posmiely + 70 > posy + 10 && posmiely + 70 < posy + 70)) {
      suma =!suma;
    } 
    if(suma == true && vida < 100){
         vida = vida + 0.2; 
     suma = false; 
    }
    if(suma == true && vida < 100){
     vida = vida + 0.2; 
    }
}

void bajapuntosfast(float poschox, float poschoy, float posdulx, float posduly, float pospizzax, float pospizzay, 
float poshamx, float poshamy, float posperrox, float posperroy, float posgaseosax, float posgaseosay,
float pospapasfx, float pospapasfy, float posdonax, float posdonay){
  if((poschox > posx - 20 && poschoy < posx + 70 && poschoy + 70 > posy + 10 && poschoy + 70 < posy + 70) ||
    (posdulx > posx - 20 && posdulx < posx + 70 && posduly + 70 > posy + 10 && posduly + 70 < posy + 70) ||
    (pospizzax > posx - 20 && pospizzax < posx + 70 && pospizzay + 70 > posy + 10 && pospizzay + 70 < posy + 70) ||
    (poshamx > posx - 20 && poshamx < posx + 70 && poshamy + 70 > posy + 10 && poshamy + 70 < posy + 70) ||
    (posperrox > posx - 20 && posperrox < posx + 70 && posperroy + 70 > posy + 10 && posperroy + 70 < posy + 70) ||
    (posgaseosax > posx - 20 && posgaseosax < posx + 70 && posgaseosay + 70 > posy + 10 && posgaseosay + 70 < posy + 70) ||
    (pospapasfx > posx - 20 && pospapasfx < posx + 70 && pospapasfy + 70 > posy + 10 && pospapasfy + 70 < posy + 70) ||
     (posdonax > posx - 20 && posdonax < posx + 70 && posdonay + 70 > posy + 10 && posdonay + 70 < posy + 70)){
      resta =!resta;
    } 
    if(resta == true && vida >= 0){
         vida = vida - 0.2; 
     resta = false; 
    }
    if(resta == true && vida >= 0){
     vida = vida - 0.2; 
    }
}

}
