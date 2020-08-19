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
  }
}
