class Frutas {
  
  float posmx = int(random(0, 10))*100;
  float posmy = int(random(-40, 0))*400;
  float posbrox = int(random(0, 10))*100;
  float posbroy = int(random(-40, 0))*400;
  float posbax = int(random(0, 10))*100;
  float posbay = int(random(-40, 0))*400;
  float poszx = int(random(0, 10))*100;
  float poszy = int(random(-40, 0))*400;
  float velm = 2;
  
  Frutas(){
  }
  
  void display(){
   
    image(manzana, posmx, posmy);
    image(brocoli, posbrox, posbroy);
    image(banano, posbax, posbay);
    image(zanahoria, poszx, poszy);
  }
  
  void move(){
   
    posmy += velm;
    posbroy += velm;
    posbay += velm;
    poszy += velm;
  }
}
