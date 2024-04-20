class Banana {
 private PVector posicion ;
 private PImage banana;
 private PVector movimiento;

  public Banana () {
    banana = loadImage ("banana.png");
  }
  public Banana(PVector posicion, PVector movimiento) {
    this.posicion=posicion;
    this.movimiento=movimiento;
    this.banana = loadImage("banana.png");
  }


  public void dibujar () {
    image (banana, posicion.x, posicion.y, 100, 100);
  }

  public void movimiento() {
    if (this.posicion.y<=height) {
      this.posicion.y+=this.movimiento.y;
    } else {
      this.posicion.y=0;
    }
  }

  void verificarColision() {
  
    if (this.posicion.y < 0 || this.posicion.y + 100 > height) {  // Si la banana choca con el margen superior o inferior, cambiar la dirección vertical
    
      this.movimiento.y *= -1;
    }
    
    for (int posX = 0; posX < width; posX += 30) {   // Verificar colisión con los rectángulos de la superficie
      for (int posY = 660; posY < height; posY += 30) {
                                                             // Verificar si la banana colisiona con el rectángulo actual
        if (this.posicion.x + 100 > posX && this.posicion.x < posX + 30 &&
          this.posicion.y + 100 > posY && this.posicion.y < posY + 30) {
          this.movimiento.y *= -1;                                        // Si colisiona, cambiar la dirección vertical
          return;
        }
      }
    }
  }
}
