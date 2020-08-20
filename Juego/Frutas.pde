class Frutas {
  
  float posmx = int(random(0, 10))*100;
  float posmy = int(random(-40, 0))*100;
  float posbrox = int(random(0, 10))*100;
  float posbroy = int(random(-40, 0))*100;
  float posbax = int(random(0, 10))*100;
  float posbay = int(random(-40, 0))*100;
  float velm = 1;
  
  Frutas(){
  }
  
  void display(){
   
    image(manzana, posmx, posmy);
    image(brocoli, posbrox, posbroy);
    image(banano, posbax, posbay);
  }
  
  void move(){
   
    posmy += velm;
    posbroy += velm;
    posbay += velm;
  }
  
  void reaparecer(){
   
    if(posmy > height){
    posmy = int(random(-34, -32))*100;
    posmx = int(random(0, 8))*100;
   }
   if(posbroy > height){
    posbroy = int(random(-34, -32))*100;
    posbrox = int(random(0, 8))*100;
   }
   if(posbay > height){
    posbay = int(random(-34, -32))*100;
    posbax = int(random(0, 8))*100;
   }
   
  }
  
 float getPosManzanaX(){
   return posmx;
  }
  float getPosManzanaY(){
   return posmy;
  }
  
  float getPosBrocoliX(){
   return posbrox;
  }
  float getPosBrocoliY(){
   return posbroy;
  }
  
  float getPosBananoX(){
   return posbax;
  }
  float getPosBananoY(){
   return posbay;
  }
}
