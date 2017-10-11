public class Nivel {

  protected boolean complete=false;

  public Nivel () {  
    shapes1[0] = new Rect(width/2+99, height/2-50, 45, 255, 255);
    shapes1[1] = new Triangle(width/2-249, height/2-100, 270, 1, 255, 255);
    shapes1[2] = new Triangle(width/2-99, height/2-50, 90, 1, 255, 255);
    shapes1[3] = new Triangle(width/2-149, height/2-25, 270, 0.5, 255, 255);
    shapes1[4] = new Triangle(width/2+50, height/2-75, 90, 0.5, 255, 255);
    shapes1[5] = new Triangle(width/2, height/2-65, 270, 0.7, 255, 255);
    shapes1[6] = new Quad(width/2+174, height/2-75, 0, 255, 255);
  }
  public void draw() {
    pushStyle();
    for (int i=0; i<shapes.length; i++)    
      shapes1[i].draw();
    popStyle();
  }
}