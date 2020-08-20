class Barras {
  
 Barras(){
   
 }
  
  
  void display(){
   
    noStroke();
    fill(#CBC5C5);
    rect(0, 0, 800, 50);
    
    image(pausa, 700, 10);
    
    textAlign(CENTER, BOTTOM);
    textSize(25);
    fill(0);
    text(vida, width/2, 35);
    vida = vida - 0.02;
  }
  
  void vidasuma(float poshuevox, float poshuevoy, float pospezx, float pospezy){
    println(suma);
    if(poshuevox > posx - 10 && poshuevox < posx + 70 && poshuevoy + 70 > posy + 10 && poshuevoy + 70 < posy + 70 ){
    
      suma =!suma;
      
    } 
      
    if(suma == true){
      
         vida = vida + 0.2; 
     suma = false; 
    }
    
    
    
    if(suma == true){
     vida = vida + 0.2; 
    }

}
}
