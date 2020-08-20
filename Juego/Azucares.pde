class Azucares {
  
  float posagx = int(random(0, 10))*100;
  float posagy = int(random(-40, 0))*100;
  float posmix  = int(random(0, 10))*100;
  float posmiy = int(random(-40, 0))*100;
  float velc = 1;
  
  Azucares(){
  }
  
  void display(){
   
    image(aguacate, posagx, posagy);
    image(miel, posmix, posmiy);
 
  }
  
  void move(){
   
    posagy += velc;
    posmiy += velc;
    
  }
  
  void reaparecer(){

    if(posagy > height){
    posagy = int(random(-34, -32))*100;
    posagx = int(random(0, 8))*100;
   }
   if(posmiy > height){
    posmiy = int(random(-34, -32))*100;
    posmix = int(random(0, 8))*100;
   }

  }
  
  float getPosAguacateX(){
   return posagx;
  }
  float getPosAguacateY(){
   return posagy;
  }
  
  float getPosMielX(){
   return posmix;
  }
  float getPosMielY(){
   return posmiy;
  }
}
