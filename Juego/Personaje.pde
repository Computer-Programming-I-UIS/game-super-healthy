class Personaje {
  
  
  
 Personaje() {
   
 }
  
  
  void display(){
      image(p, posx, posy);
     
  }
  
  void move(){
   
    if(keyPressed && key == CODED && keyCode == LEFT && posx > 4){
     posx = posx - 2; 
    }
    
    if(keyPressed && key == CODED && keyCode == RIGHT && posx < width - 104){
     posx = posx + 2; 
    }
    
  }
  
  
}
