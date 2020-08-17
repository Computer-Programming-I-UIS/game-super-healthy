class Proteina {
  
  float poshx = int(random(0, 8))*100;
  float poshy = int(random(-8, 0))*100;
  float pospezx = int(random(0, 8))*100;
  float pospezy = int(random(-8, 0))*100;
  float pospollox = int(random(0, 8))*100;
  float pospolloy = int(random(-8, 0))*100;
  float posfx = int(random(0, 8))*100;
  float posfy = int(random(-8, 0))*100;
  float velh = 2;
  
  Proteina(){
  }
  
  void display(){
   
    image(huevo, poshx, poshy);
    image(pescado, pospezx, pospezy);
    image(pollo, pospollox, pospolloy);
    image(filete, posfx, posfy);
    
  }
  
  void move(){
   
    poshy += velh;
    pospezy += velh;
    pospolloy += velh;
    posfy += velh;
    
  }
}
  
