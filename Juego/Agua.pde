class Agua {                                                 //clase para los alimentos que pertenecen al grupo alimenticio grasas y azucares
  
  float posaguax = int(random(0, 10))*100;               //variables
  float posaguay = int(random(-40, 0))*100;
  float pospesax  = int(random(0, 10))*100;
  float pospesay = int(random(-40, 0))*100;
  float velc = 1;
  
  Agua(){
  }
  
  void display(){                        //se muestra
   
    image(agua, posaguax, posaguay);
    image(pesa, pospesax, pospesay);
 
  }
  
  void move(){
   
    posaguay += velc;                      //se mueven
    pospesay += velc;
    
  }
   
  void reaparecer(){                       //que reaparezcan al salir de la pantalla

    if(posaguay > height){
    posaguay = int(random(-34, -32))*100;
    posaguax = int(random(0, 8))*100;
   }
   if(pospesay > height){
    pospesay = int(random(-34, -32))*100;
    pospesax = int(random(0, 8))*100;
   }

  }
  
  float getPosAguaX(){                      // guardar las posiciones
   return posaguax;
  }
  float getPosAguaY(){
   return posaguay;
  }
  
  float getPosPesaX(){
   return pospesax;
  }
  float getPosPesaY(){
   return pospesay;
  }
}
