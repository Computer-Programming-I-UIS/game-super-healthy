class Cereales {                               //clase para los alimentos pertenecientes al grupo alimenticio cereales
  
  float posax = int(random(0, 10))*100;                 //variables
  float posay = int(random(-40, 0))*100;
  float pospastax = int(random(0, 10))*100;
  float pospastay = int(random(-40, 0))*100;
  float pospapax = int(random(0, 10))*100;
  float pospapay = int(random(-40, 0))*100;
  float pospanx = int(random(0, 10))*100;
  float pospany = int(random(-40, 0))*100;
  float vela = 1;
  
  Cereales(){
  }
  
  void display(){                 //se muestra
   
    image(arroz, posax, posay);
    image(pasta, pospastax, pospastay);
    image(papa, pospapax, pospapay);
    image(pan, pospanx, pospany);
  }
  
  void move(){                 //se mueve
   
    posay += vela;
    pospastay += vela;
    pospapay += vela;
    pospany += vela;
    
  }
  
  void reaparecer(){                //reaparece cuando sale de pantalla
   if(posay > height){
    posay = int(random(-34, -32))*100;
    posax = int(random(0, 8))*100;
   }
   if(pospastay > height){
    pospastay = int(random(-34, -32))*100;
    pospastax = int(random(0, 8))*100;
   }
   if(pospapay > height){
    pospapay = int(random(-34, -32))*100;
    pospapax = int(random(0, 8))*100;
   }
   if(pospany > height){
    pospany = int(random(-34, -32))*100;
    pospanx = int(random(0, 8))*100;
   }
  }
  
  float getPosArrozX(){                  //guardar variables de posicion
   return posax;
  }
  float getPosArrozY(){
   return posay;
  }
  
  float getPosPastaX(){
   return pospastax;
  }
  float getPosPastaY(){ //
   return pospastay;
  }
  
  float getPosPapaX(){
   return pospapax;
  }
  float getPosPapaY(){
   return pospapay;
  }
  
  float getPosPanX(){
   return pospanx;
  }
  float getPosPanY(){
   return pospany;
  }
}
