class Rect extends Shape {
  
    public Rect(float x, float y, float r, color a, color c) {
    this.trans= new PVector(x, y);
    this.rot = r;
    this.col = a;
    this.stroke = c;
  }
  
  
  
  protected void drawShape() {
    //this.rot=R1;
    rectMode(RADIUS);
    rect(0, 0, 70.7/2, 70.7/2);
  }


}