class Personaje {
  
  
  
 Personaje() {
   
 }
  
  
  void display(){
      image(p, posx, posy);
     
  }
  
  void move(){
   
    if(keyPressed && key == CODED && keyCode == LEFT && posx > 0){
     posx = posx - 2; 
    }
    
    if(keyPressed && key == CODED && keyCode == RIGHT && posx < width - 100){
     posx = posx + 2; 
    }
    
  }
  
  
}
