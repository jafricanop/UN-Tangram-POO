public class Nivel {
  int n;
  PShape s;
  boolean complete=false ;

  public Nivel () {  
    s = createShape();
    s.beginShape();
    s.fill(0);
    s.noStroke();
    s.vertex(830+0, 20);
    s.vertex(830+20, 0);
    s.vertex(830+30, 10);
    s.vertex(830+110, 10);
    s.vertex(830+120, 20);
    s.vertex(830+100, 20);
    s.vertex(830+90, 30);
    s.vertex(830+84, 24 );
    s.vertex(830+56, 24 );
    s.vertex(830+50, 30);
    s.vertex(830+30, 30);
    s.vertex(830+40, 20);
    s.vertex(830+0, 20);
    s.endShape(CLOSE);
    this.n=1;
    this.complete =false;
  }
  public void draw() {
    pushStyle();
    fill(123);
    shape(s, 25, 25);
    popStyle();
  }
}