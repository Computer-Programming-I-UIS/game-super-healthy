class Personaje {
  
  float posx = 365;
  float posy = 480;
  
 Personaje() {
   
 }
  
  
  void display(){
      image(p, posx, posy);
     
  }
  
  void move(){
   
    if(keyPressed && key == CODED && keyCode == LEFT && posx > 4){
     posx = posx - 2; 
    }
    
    if(keyPressed && key == CODED && keyCode == RIGHT && posx < width - 74){
     posx = posx + 2; 
    }
    
  }
}
