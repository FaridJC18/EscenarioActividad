class Personaje {
  PVector posicion ;
  PVector movimiento;
  PImage donkey;
  
  public Personaje (){
   donkey= loadImage ("personaje.png");
  }
  
  void dibujar (){
  image (donkey, posicion.x,posicion.y,150,150);
}
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  
}
