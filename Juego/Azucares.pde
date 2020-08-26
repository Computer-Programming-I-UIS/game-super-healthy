class Azucares {                                                 //clase para los alimentos que pertenecen al grupo alimenticio grasas y azucares
  
  float posagx = int(random(0, 10))*100;               //variables
  float posagy = int(random(-40, 0))*100;
  float posmix  = int(random(0, 10))*100;
  float posmiy = int(random(-40, 0))*100;
  float velc = 1;
  
  Azucares(){
  }
  
  void display(){                        //se muestra
   
    image(aguacate, posagx, posagy);
    image(miel, posmix, posmiy);
 
  }
  
  void move(){
   
    posagy += velc;                      //se mueven
    posmiy += velc;
    
  }
   
  void reaparecer(){                       //que reaparezcan al salir de la pantalla

    if(posagy > height){
    posagy = int(random(-34, -32))*100;
    posagx = int(random(0, 8))*100;
   }
   if(posmiy > height){
    posmiy = int(random(-34, -32))*100;
    posmix = int(random(0, 8))*100;
   }

  }
  
  float getPosAguacateX(){                      // guardar las posiciones
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
