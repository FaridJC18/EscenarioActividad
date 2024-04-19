class Banana{
  PVector posicion ;
  PImage banana;
  PVector movimiento;
 
  public Banana (){
    banana = loadImage ("banana.png");
    
  }
  public Banana(PVector posicion, PVector movimiento){
    this.posicion=posicion;
    this.movimiento=movimiento;
    this.banana = loadImage("banana.png");
  }


public void dibujar (){
  image (banana , posicion.x, posicion.y, 100,100);
}

public void movimiento(){
    if(this.posicion.y<=height){
      this.posicion.y+=this.movimiento.y;
    }else{
      this.posicion.y=0;
    }
}

void verificarColision() {
    // Verificar colisión con los márgenes superiores e inferiores
    if (this.posicion.y < 0 || this.posicion.y + 100 > height) {
      // Si la banana choca con el margen superior o inferior, cambiar la dirección vertical
      this.movimiento.y *= -1;
    }
    // Verificar colisión con los rectángulos de la superficie
    for (int posX = 0; posX < width; posX += 30) {
      for (int posY = 660; posY < height; posY += 30) {
        // Verificar si la banana colisiona con el rectángulo actual
        if (this.posicion.x + 100 > posX && this.posicion.x < posX + 30 &&
            this.posicion.y + 100 > posY && this.posicion.y < posY + 30) {
          // Si colisiona, cambiar la dirección vertical
          this.movimiento.y *= -1;
          // Salir del bucle una vez que se detecta la colisión
          return;
        }
      }
    }
  }
}
