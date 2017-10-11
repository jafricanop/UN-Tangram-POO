class Triangle extends Shape {

 public Triangle(float x, float y, float r, float s, color a, color c) {
    this.trans= new PVector(x, y);
    this.rot = r;
    this.scl = s;
    this.col = a;
    this.stroke = c;
  }
  protected void drawShape() {
    triangle(-50, -100, 50, 0, -50, 100);
  }
}