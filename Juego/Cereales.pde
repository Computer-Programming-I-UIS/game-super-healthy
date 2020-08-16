class Cereales {
  
  float posax = int(random(0, 10))*100;
  float posay = int(random(-40, 0))*100;
  float pospastax = int(random(0, 10))*100;
  float pospastay = int(random(-40, 0))*100;
  float pospapax = int(random(0, 10))*100;
  float pospapay = int(random(-40, 0))*100;
  float pospanx = int(random(0, 10))*100;
  float pospany = int(random(-40, 0))*100;
  float vela = 2;
  
  Cereales(){
  }
  
  void display(){
   
    image(arroz, posax, posay);
    image(pasta, pospastax, pospastay);
    image(papa, pospapax, pospapay);
    image(pan, pospanx, pospany);
  }
  
  void move(){
   
    posay += vela;
    pospastay += vela;
    pospapay += vela;
    pospany += vela;
    
  }
}
