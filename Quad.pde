class Quad extends Shape { 
  color b = -65281;
  public Quad() {
    this.col = b;
  }
  protected void drawShape() {
    this.rot=R7;
    rectMode(RADIUS);
    quad(-75, -25, -25, 25, 75, 25, 25, -25);
  }
}