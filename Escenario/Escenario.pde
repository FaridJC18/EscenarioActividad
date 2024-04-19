PImage imgEstatica;
PImage sup;
int altoSup = 140;
int anchoSup = 100;
int posX = 0;
Personaje donkey;
void setup (){
  size (1000,800);
  background (0);
  imgEstatica = loadImage ("donkeykong.png"); // imagen estatica
  sup = loadImage ("terreno.png");
  donkey = new Personaje ();
  donkey.setPosicion(new PVector(width - anchoSup,height-altoSup));
 
}


void draw (){
  imageMode (CENTER);
  image (imgEstatica, width/2,height/3,600,400); // parametros de la imagen estatica
  while (posX < width){
    image (sup, posX ,height - 45,anchoSup,altoSup); // superficie con estructuras iterativas
    posX += 30;
   
  }
  donkey.dibujar();
}
