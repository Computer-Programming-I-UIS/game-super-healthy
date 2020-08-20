class Proteina {
  
  float poshx = int(random(0, 8))*100;
  float poshy = int(random(-40, 0))*100;
  float pospezx = int(random(0, 8))*100;
  float pospezy = int(random(-40, 0))*100;
  float pospollox = int(random(0, 8))*100;
  float pospolloy = int(random(-40, 0))*100;
  float posfx = int(random(0, 8))*100;
  float posfy = int(random(-40, 0))*100;
  float velh = 1;
  
  Proteina(){
  }
  
  void display(){
   
    
    
    image(huevo, poshx, poshy);
    image(pescado, pospezx, pospezy);
    image(pollo, pospollox, pospolloy);
    image(filete, posfx, posfy);
    
  }
  
  void move(){
  
    poshy += velh;
    pospezy += velh;
    pospolloy += velh;
    posfy += velh;
    
  }
  
  void reaparecer(){
   if(poshy > height){
    poshy = int(random(-34, -32))*100;
    poshx = int(random(0, 8))*100;
   }
   if(pospezy > height){
    pospezy = int(random(-34, -32))*100;
    pospezx = int(random(0, 8))*100;
   }
   if(pospolloy > height){
    pospolloy = int(random(-34, -32))*100;
    pospollox = int(random(0, 8))*100;
   }
   if(posfy > height){
    posfy = int(random(-34, -32))*100;
    posfx = int(random(0, 8))*100;
   }
  }
  
  float getPosHuevoX(){
   return poshx;
  }
  float getPosHuevoY(){
   return poshy;
  }
  
  float getPosPezX(){
   return pospezx;
  }
  float getPosPezY(){
   return pospezy;
  }
  
  float getPosPolloX(){
   return pospollox;
  }
  float getPosPolloY(){
   return pospolloy;
  }
  
  float getPosFileteX(){
   return posfx;
  }
  float getPosFileteY(){
   return posfy;
  }
  
}


  
