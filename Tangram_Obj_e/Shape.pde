abstract class Shape {
  protected float rot;
  protected float scl;
  protected PVector trans;
  protected color col;
  protected boolean above=false;
  protected PShape figura;
  protected color stroke;

  // TODO: estilo
  // implemente el estilo del shape (i.e., stroke weight, color, etc)
  // como se hace con los demás atributos de la clase

  // TODO: modifique o defina los constructores que necesite

  public Shape(float x, float y, float r, float s, color a, boolean b, color c) {
    this.trans= new PVector(x, y);
    this.rot = r;
    this.scl = s;
    this.col = a;
    this.above = b;
    this.stroke = c;
  }

  public Shape() {
    this(random(100, width-100), random(100, height-100), 0, 1, 0, false,0);
  }

  public void draw() {
    pushStyle();
    pushMatrix();
    stroke(edge());
    mouseDragged();
    translate(translation().x, translation().y);
    rotate(radians(rotation()));
    scale(scaling());
    fill(pintar());
    //println(D);
    setAbove(k);

    // TODO aplique el estilo aca
    drawShape();
    popMatrix();
    popStyle();
  }

  // TODO: para la seleccion de la pieza escoja uno de los siguientes prototipos
  // public abstract boolean grabsInput(float x, float y);
  // public boolean grabsInput(float x, float y) {}

  public boolean above() {
    return this.above;
  }

  public void setAbove(int c) {
    if (c==this.col) {
      above=true;
      //this.stroke=255;
    } else {
      above=false;
      //this.stroke=0;
    }
  }

  protected abstract void drawShape();

  public PVector translation() {
    return this.trans;
  }

  public void setTranslation(float x, float y) {
    trans.x = x;
    trans.y = y;
  }

  public float rotation() {
    return this.rot;
  }

  public void setRotation(float r) {
    this.rot = r;
  }  

  public float scaling() {
    return this.scl;
  }

  public void setScaling(float s) {
    this.scl = s;
  }

  public color pintar() {
    return this.col;
  }

  public void setPintar(color a) {
    this.col = a;
  }
  
  public color edge (){
    return this.stroke;
  }
  
  public void setEdge(color e){
    this.stroke=e;
  }

  public void mouseDragged() {
    if (above==true) {
      if (mouseButton==LEFT) {
        this.trans.x = mouseX;
        this.trans.y = mouseY;
      }
    }
  }
}