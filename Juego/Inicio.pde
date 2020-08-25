class Inicio {
  
  
 Inicio(){
   
 }
  
  void display(){
    
   if(juego == 0){
        frameRate(6);
    image(images[ImageIndex], 0, 0);
    ImageIndex = (ImageIndex+1) % images.length;
    
   
   }
  }
  
  void comenzar(){
   if(juego == 0 && mousePressed && mouseX > 338 && mouseY < 484 && mouseY > 365 && mouseY < 410){
     juego = 1;
     
   }
   
   if(juego == 1){
     frameRate(6);
    image(images2[ImageIndex2], 0, 0);
    ImageIndex2 = (ImageIndex2+1) % images2.length;
   }
   
    if(juego == 1 && mouseX > 668 && mouseY > 38 && mousePressed && mouseX < 748 && mouseY < 78){
      siguiente = true;
      delay(50);
      if(siguiente == true){
    juego = 2;
    siguiente = false;
    delay(90);
      }
   }
   
   if(juego == 2){
     
    image(fondo2_1, 0, 0);
   
   }
   
  if(juego == 2 && mouseX > 668 && mouseY > 510 && mousePressed && mouseX < 748 && mouseY < 550){ 
    siguiente = true;
    delay(50);
    if(siguiente == true){
    juego = 3;
    siguiente = false;
    }
   } 
   
   if(juego == 4){
     frameRate(6);
    image(images3[ImageIndex3], 0, 0);
    ImageIndex3 = (ImageIndex3+1) % images3.length;
   
   
   if(mouseX > 264 && mouseY > 204 && mouseX < 536 && mouseY < 233 && mousePressed){ 
    
    volver = true;
    delay(50);
    if(volver == true){
    vida = 100;
    posx = 350;
    juego = 3;
    volver = false;
   
    }
   }
    
       if(mouseX > 677 && mouseY > 544 && mouseX < 764 && mouseY < 571 && mousePressed){ 
    
    volver = true;
    delay(50);
    if(volver == true){
    juego = 0;
    vida = 100;
    volver = false;
    
    }
    
       }
  

  }
  }
}
