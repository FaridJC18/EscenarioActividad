PImage imgEstatica;
int posX;
Personaje donkey;
Banana b1;
Banana b2;
Banana b3;
void setup (){
  size (1000,800);

  imgEstatica = loadImage ("donkeykong.png"); // imagen LETRAS estatica
  
  donkey = new Personaje ();
  donkey.setPosicion(new PVector(width - 100,height-200));
  donkey.setMovimiento(new PVector(30,10));
  
  b1 = new Banana(new PVector(width/2,100),new PVector(1,5));
  b2 = new Banana(new PVector(200,100),new PVector(1,7));
  b3= new Banana(new PVector(width-200,100),new PVector(1,9));

  
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
  b1.dibujar();
  b1.movimiento();
   b1.verificarColision();
  b2.dibujar();
  b2.movimiento();
   b2.verificarColision();
  b3.dibujar()  ;
  b3.movimiento();
  b3.verificarColision();
  
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
