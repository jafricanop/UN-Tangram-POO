class Quad extends Shape { 


  public Quad(float x, float y, float r, color a, color c) {
    this.trans= new PVector(x, y);
    this.rot = r;
    this.col = a;
    this.stroke = c;
  }
  protected void drawShape() {
    //this.rot=R7;
    rectMode(RADIUS);
    quad(-75, -25, -25, 25, 75, 25, 25, -25);
  }
}