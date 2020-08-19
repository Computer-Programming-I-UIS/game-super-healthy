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
     juego = juego + 1;
   }
   
   if(juego == 1){
     frameRate(60);
    image(fondo2, 0, 0);
    
   }
   
   if(juego == 1 && mouseX > 668 && mouseY > 38 && mousePressed && mouseX < 748 && mouseY < 78 && mousePressed){
    juego = juego + 1; 
   }
  }
}
