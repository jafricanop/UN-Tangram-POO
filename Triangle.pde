class Triangle extends Shape {

  public Triangle(int a, float b) {
    this.col=a;
    this.scl=b;
  }

  protected void drawShape() {
    triangle(-50, -100, 50, 0, -50, 100);
  }
}