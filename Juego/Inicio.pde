class Inicio {                    //clase para determinar las pantallas(los fondos)
  
  
 Inicio(){
   
 }
  
  void display(){                           //mostrar
    
     if(juego == 0){                                    //si está en 0, es inicio
        frameRate(6);
        image(images[ImageIndex], 0, 0);                        //muetra la animación, los botones
        ImageIndex = (ImageIndex+1) % images.length;
        if(sonido == true){                                   //muestra el boton correspondiente de audio dependiendo de la boolean, sonido
           image(mute, 371, 495); 
            player3.play();
        }
        if(sonido == false){
            player3.pause();
            image(muteno, 371, 495); 
        }
     }
  }
  
  void comenzar(){ 
   if(juego == 0 && mousePressed && mouseX > 338 && mouseY < 484 && mouseY > 365 && mouseY < 410){       //al dar click en play
     juego = 5;                               //va a 5 que representa la guia de dieta balanceada
   }
    
   if(juego == 5){                 //guia
      frameRate(6);
      image(images4[ImageIndex4], 0, 0);      //muestra las animaciones correspondientes
      if(ImageIndex4 < maxImages4 -1 ){
        ImageIndex4 = (ImageIndex4+1);
      }
      image(images5[ImageIndex5], 0, 0);                            
      ImageIndex5 = (ImageIndex5+1) % images5.length;
   }
   
    if(juego == 5 && mouseX > 670 && mouseY > 509 && mousePressed && mouseX < 750 && mouseY < 549){            //si se da click en siguinte
       siguiente = true;
      
      if(siguiente == true){
        juego = 1;                     //va a uno que es la primera parte de las instrucciones
        siguiente = false;
      }
   }
   
   if(juego == 0 && mousePressed && mouseX > 345 && mouseY > 446  && mouseX < 478 && mouseY < 466){                //si da click en creditos muestra los creditos
     juego = 6;
   }
   
   if(juego == 6){                 //creditos
     frameRate(6);
    image(creditos, 0, 0);
   }
   
    if(juego == 6 && mouseX > 51 && mouseY > 547 && mousePressed && mouseX < 131 && mouseY < 586){             //boton para ir atrás
        siguiente = true;
        delay(50);
        if(siguiente == true){
          juego = 0;
          siguiente = false;
        }
   }
   
   if(juego == 1){                                                                                               //1 que es la primera parte de las instrucciones
     frameRate(6);
     image(images2[ImageIndex2], 0, 0);                                   //animación
     ImageIndex2 = (ImageIndex2+1) % images2.length;
   }
   
    if(juego == 1 && mouseX > 668 && mouseY > 38 && mousePressed && mouseX < 748 && mouseY < 78){         //boton para ir a la siguiente parte
      siguiente = true;
      if(siguiente == true){
        juego = 2;
        siguiente = false;
      }
   }
   
   if(juego == 2){                           //si es dos, segunda parte de la animación
    image(fondo2_1, 0, 0);       //se muestra la imagen
   }
   
  if(juego == 2 && mouseX > 668 && mouseY > 510 && mousePressed && mouseX < 748 && mouseY < 550){                                //boton siguiente para comenzar a jugar 
    siguiente = true;
    delay(50);
    if(siguiente == true){
      juego = 3;                     //juego es tres que es la pantalla de juego
      siguiente = false;
    }
   } 
   
   if(juego == 4){                           //4 que es perder, pantalla de game over
    frameRate(6);
    image(images3[ImageIndex3], 0, 0);
    ImageIndex3 = (ImageIndex3+1) % images3.length;
    player.pause();
    if(sonido == true){
     player2.play(); 
    }
   
   
   if(mouseX > 264 && mouseY > 204 && mouseX < 536 && mouseY < 233 && mousePressed){                        //boton para volver a intentarlo
    
    volver = true;
    delay(50);
    if(volver == true){
    vida = 100;
    posx = 350;
    juego = 3;
    volver = false;
   
    }
   }
    
       if(mouseX > 677 && mouseY > 544 && mouseX < 764 && mouseY < 571 && mousePressed){      //boton para salir, volver a inicio
    
    volver = true;
    delay(50);
    if(volver == true){
      frameCount = -1;
      juego = 0;
      vida = 100;
      volver = false;
    }
       }
  }
  }
}
