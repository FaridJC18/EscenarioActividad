PImage imgEstatica;
PImage sup;
int altoSup = 100;
int anchoSup = 100;
int posX;
Personaje donkey;
void setup (){
   
  
  size (1000,800);

  imgEstatica = loadImage ("donkeykong.png"); // imagen LETRAS estatica
  sup = loadImage ("terreno.png");
  donkey = new Personaje ();
  donkey.setPosicion(new PVector(width - anchoSup,height-200));
  donkey.setMovimiento(new PVector(30,10));
  
  
  
}


void draw (){
  background (0);
  imageMode (CENTER);
 
  image (imgEstatica, width/2,height/3,600,400); // parametros de la imagen estatica

  
 for (int posX = 0; posX< width; posX+= 30){     // Superficie con estructura iterativa 
   for (int posY = 660; posY< height; posY +=30 ){
     fill (#D88909);
     strokeWeight (3);
   rect (posX, posY,30,30);
 }
 }
  
  
  actualizarMovimiento();
  donkey.dibujar(); // dibuja al personaje

  
}


public void keyPressed(){
  if(key=='d'){
    donkey.mover(1);
  }
  if(key=='a'){
    donkey.mover(0);
  }
  
}
public void actualizarMovimiento(){
  if(donkey.getPosicion().x>(width/2)){
    donkey.setMovimiento(new PVector(30, 10)); 
  }else{
     donkey.setMovimiento(new PVector(10, 10));
  }
}
