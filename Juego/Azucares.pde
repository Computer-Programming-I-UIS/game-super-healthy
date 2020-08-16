class Azucares {
  
  float poscx  = int(random(0, 10))*100;
  float poscy = int(random(-40, 0))*100;
  float posdx = int(random(0, 10))*100;
  float posdy = int(random(-40, 0))*100;
  float velc = 2;
  
  Azucares(){
  }
  
  void display(){
   
    image(chocolate, poscx, poscy);
    image(dulce, posdx, posdy);
    
    
  }
  
  void move(){
   
    poscy += velc;
    posdy += velc;
    
  }
}
