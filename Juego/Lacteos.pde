class Lacteos {
  
  float poslx = int(random(0, 10))*100;
  float posly = int(random(-40, 0))*100;
  float posqx = int(random(0, 10))*100;
  float posqy = int(random(-40, 0))*100;
  float posyx = int(random(0, 10))*100;
  float posyy = int(random(-40, 0))*100;
  float vell = 1;
  
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
  
  void reaparecer(){
    
    if(posly > height){
    posly = int(random(-34, -32))*100;
    poslx = int(random(0, 8))*100;
   }
   if(posqy > height){
    posqy = int(random(-34, -32))*100;
    posqx = int(random(0, 8))*100;
   }
   if(posyy > height){
    posyy = int(random(-34, -32))*100;
    posyx = int(random(0, 8))*100;
   }
   
  }
  
  float getPosLecheX(){
   return poslx;
  }
  float getPosLecheY(){
   return posly;
  }
  
  float getPosQuesoX(){
   return posqx;
  }
  float getPosQuesoY(){
   return posqy;
  }
  
  float getPosYogurtX(){
   return posyx;
  }
  float getPosYogurtY(){
   return posyy;
  }
  
}
