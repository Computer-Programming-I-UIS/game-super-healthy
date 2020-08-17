class Basura {
  
  float posbx  = int(random(0, 10))*100;
  float posby = int(random(-40, 0))*100;
  float posvx = int(random(0, 10))*100;
  float posvy = int(random(-40, 0))*100;
  float velb = 2;
  
  Basura(){
  }
  
  void display(){
   
    image(basura, posbx, posby);
    image(veneno, posvx, posvy);
    
    
  }
  
  void move(){
   
    posby += velb;
    posvy += velb;
    
  }
}
