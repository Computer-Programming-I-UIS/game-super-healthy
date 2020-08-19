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
    //image(aceite, posacx, posacy);
   
  }
  
  void move(){
   
    posagy += velc;
    posmiy += velc;
    
    
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
