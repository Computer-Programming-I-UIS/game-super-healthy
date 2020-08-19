class Inicio {
  
  
 Inicio(){
   
 }
  
  void display(){
    
   if(juego == 0){
    image(fondo1, 0, 0);
   }
  }
  
  void comenzar(){
   if(juego == 0 && mousePressed){
     juego = juego + 1;
   }
   
   if(juego == 1){
    image(fondo2, 0, 0);
    
   }
   
   if(juego == 1 && mouseX > 500 && mouseY > 500 && mousePressed){
    juego = juego + 1; 
   }
  }
}
