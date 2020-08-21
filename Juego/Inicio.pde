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
   if(juego == 0 && mousePressed){
     juego = 1;
     
   }
   
   if(juego == 1){
     frameRate(60);
    image(images2[ImageIndex2], 0, 0);
    ImageIndex2 = (ImageIndex2+1) % images2.length;
   }
   
    if(juego == 1 && mouseX > 668 && mouseY > 38 && mousePressed && mouseX < 748 && mouseY < 78 && mousePressed){
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
    rect(668, 510, 80, 40);
   }
   
  if(juego == 2 && mouseX > 668 && mouseY > 510 && mousePressed && mouseX < 748 && mouseY < 550 && mousePressed){ 
    siguiente = true;
    delay(50);
    if(siguiente == true){
    juego = 3;
    siguiente = false;
    }
   } 
}
}
