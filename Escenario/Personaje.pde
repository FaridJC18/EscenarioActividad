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
    public PVector getMovimiento(){
    return this.movimiento;
  }
  
  public void setMovimiento(PVector movimiento){
    this.movimiento = movimiento;
  }
  public void mover(int direccion){
    if(direccion==0){
      this.posicion.x-=this.movimiento.x;
    }
    if(direccion==1){
      this.posicion.x+=this.movimiento.x;
    }
    
  }
}
