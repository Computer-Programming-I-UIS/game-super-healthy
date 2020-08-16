class Arroz {
  
  float poshx;
  float poshy;
  float velh = 2;
  
  Huevo(float phx, float phy){
    poshx = phx;
    poshy = phy;
  }
  
  void display(){
   
    image(huevo, poshx, poshy);
    
  }
  
  void move(){
   
    poshy += velh;
    
  }
}
