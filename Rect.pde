class Rect extends Shape {
  protected float tam;
  color b = -256;

  public Rect() {
    setTam(70.7/2);
    this.col = b;
  }
  protected void drawShape() {
    this.rot=R1;
    rectMode(RADIUS);
    rect(0, 0, tam, tam);
  }

  public float tam() {
    return tam;
  }

  public void setTam(float e) {
    tam = e;
  }
}