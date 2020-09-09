class PantallaJuego{                    //clase fondo de la pantalla de juego
  
 PantallaJuego(){
   
 }
  void display(){
      image(fondo3, 0, 0); 
    
  }
  
  void puntos(){
    puntaje = puntaje + 0.01;
  }
  
  void puntosmostrar(){
    textFont(fuente);           //el texto se muestra con la fuente especificada
    textAlign(CENTER, TOP);     //modo de mostrar el texto
    fill(0);
   text(int(puntaje), 400, 10); 
  }
}
