class NoComer {
  
  float poschocolatex  = int(random(0, 10))*100;
  float poschocolatey = int(random(-40, 0))*100;
  float posdulcex = int(random(0, 10))*100;
  float posdulcey = int(random(-40, 0))*100;
  float pospizzax  = int(random(0, 10))*100;
  float pospizzay = int(random(-40, 0))*100;
  float poshamburguesax  = int(random(0, 10))*100;
  float poshamburguesay = int(random(-40, 0))*100;
  float posperrox  = int(random(0, 10))*100;
  float posperroy = int(random(-40, 0))*100;
  float posgaseosax = int(random(0, 10))*100;
  float posgaseosay = int(random(-40, 0))*100;
  float pospapasfx  = int(random(0, 10))*100;
  float pospapasfy = int(random(-40, 0))*100;
  float posdonax  = int(random(0, 10))*100;
  float posdonay = int(random(-40, 0))*100;
  float velc = 1;
  
  NoComer(){
  }
  
  void display(){
   
    image(chocolate, poschocolatex, poschocolatey);
    image(dulce, posdulcex, posdulcey);
    image(pizza, pospizzax, pospizzay);
    image(hamburguesa, poshamburguesax, poshamburguesay);
    image(perro, posperrox, posperroy);
    image(gaseosa, posgaseosax, posgaseosay);
    image(papasfritas, pospapasfx, pospapasfy);
    image(dona, posdonax, posdonay);   
  }
  
  void move(){
   
    poschocolatey += velc;
    posdulcey += velc;
    pospizzay += velc;
    poshamburguesay += velc;
    posperroy += velc;
    posgaseosay += velc;
    pospapasfy += velc;
    posdonay += velc;
    
  }
  
  void reaparecer(){
   
    if(poschocolatey > height){
    poschocolatey = int(random(-34, -32))*100;
    poschocolatex = int(random(0, 8))*100;
   }
   if(posdulcey > height){
    posdulcey = int(random(-34, -32))*100;
    posdulcex = int(random(0, 8))*100;
   }
   if(pospizzay > height){
    pospizzay = int(random(-34, -32))*100;
    pospizzax = int(random(0, 8))*100;
   }
   if(poshamburguesay > height){
    poshamburguesay = int(random(-34, -32))*100;
    poshamburguesax = int(random(0, 8))*100;
   }
   if(posperroy > height){
    posperroy = int(random(-34, -32))*100;
    posperrox = int(random(0, 8))*100;
   }
   if(posgaseosay > height){
    posgaseosay = int(random(-34, -32))*100;
    posgaseosax = int(random(0, 8))*100;
   }
   if(pospapasfy > height){
    pospapasfy = int(random(-34, -32))*100;
    pospapasfx = int(random(0, 8))*100;
   }
   if(posdonay > height){
    posdonay = int(random(-34, -32))*100;
    posdonax = int(random(0, 8))*100;
   }
  }
  
  float getPosChocolateX(){
   return poschocolatex;
  }
  float getPosChocolateY(){
   return poschocolatey;
  }
  
  float getPosDulceX(){
   return posdulcex;
  }
  float getPosDulceY(){
   return posdulcey;
  }
  
  float getPosPizzaX(){
   return pospizzax;
  }
  float getPosPizzaY(){
   return pospizzay;
  }
  
  float getPosHamburguesaX(){
   return poshamburguesax;
  }
  float getPosHamburguesaY(){
   return poshamburguesay;
  }
  float getPosPerroX(){
   return posperrox;
  }
  float getPosPerroY(){
   return posperroy;
  }
  
  float getPosGaseosaX(){
   return posgaseosax;
  }
  float getPosGaseosaY(){
   return posgaseosay;
  }
  
  float getPosPapasFX(){
   return pospapasfx;
  }
  float getPosPapasFY(){
   return pospapasfy;
  }
  
  float getPosDonaX(){
   return posdonax;
  }
  float getPosDonaY(){
   return posdonay;
  }
}
