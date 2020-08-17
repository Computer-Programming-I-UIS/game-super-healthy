class Lacteos {
  
  float poslx = int(random(0, 10))*100;
  float posly = int(random(-40, 0))*300;
  float posqx = int(random(0, 10))*100;
  float posqy = int(random(-40, 0))*300;
  float posyx = int(random(0, 10))*100;
  float posyy = int(random(-40, 0))*300;
  float vell = 2;
  
  Lacteos(){
    
  }
  
  void display(){
   
    image(leche, poslx, posly);
    image(queso, posqx, posqy);
    image(yogurt, posyx, posyy);
  }
  
  void move(){
   
    posly += vell;
    posqy += vell;
    posyy += vell;
    
  }
}
