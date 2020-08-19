class Azucares {
  
  float poscx  = int(random(0, 10))*100;
  float poscy = int(random(-40, 0))*100;
  float posdx = int(random(0, 10))*100;
  float posdy = int(random(-40, 0))*100;
  float posacx  = int(random(0, 10))*100;
  float posacy = int(random(-40, 0))*100;
  float velc = 1;
  
  Azucares(){
  }
  
  void display(){
   
    image(aguacate, poscx, poscy);
    image(miel, posdx, posdy);
    //image(aceite, posacx, posacy);
   
  }
  
  void move(){
   
    poscy += velc;
    posdy += velc;
    posacy += velc;
    
  }
}
