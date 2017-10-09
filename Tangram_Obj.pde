Shape[] shapes;
Nivel nivel1, nivel2;

boolean drawGrid = true;
int k;
boolean above1;
float R1=0, R2=0, R3=0, R4=0, R5=0, R6=0, R7=0;
PFont f, i, p;

void setup() {
  size(1000, 800);
  background(255, 255, 255);
  f = createFont("Arial", 60, true);
  i = createFont("Arial", 60, true);
  textSize(20);
  shapes = new Shape[7];
  nivel1  = new Nivel();
  shapes[0] = new Rect();
  shapes[1] = new Triangle(-65536, 1);
  shapes[2] = new Triangle(-16711936, 1);
  shapes[3] = new Triangle(-16776961, 0.5);
  shapes[4] = new Triangle(-27136, 0.5);
  shapes[5] = new Triangle(-16711681, 0.7);
  shapes[6] = new Quad();
}
void draw() {    
  background(255);
  if (drawGrid)
    drawGrid(10);
  nivel1.draw();
  f = createFont("Arial", 5, true);
  f = loadFont("AGaramondPro-BoldItalic-48.vlw"); 
  textFont(f);       
  fill(0);
  textSize(20);
  textAlign(CENTER);
  text("Figura:", 800, 15 );
  for (int i=0; i<shapes.length; i++)    
    shapes[i].draw();
  shapes[1].rot=R2;
  shapes[2].rot=R3;
  shapes[3].rot=R4;
  shapes[4].rot=R5;
  shapes[5].rot=R6;

  k=get(mouseX, mouseY);
  println(k);
}
void mousePressed() {
  if (mouseButton==RIGHT) {
    for (int i=0; i<7; i++) {
      if (k==-256) {
        R1+=45;
      } 
      if (k==-65536) {
        R2+=45;
      } 
      if (k==-16711936) {
        R3+=45;
      } 
      if (k==-16776961) {
        R4+=45;
      }
      if (k==-27136) {
        R5+=45;
      } 
      if (k==-16711681) {
        R6+=45;
      } 
      if (k==-65281) {
        R7+=45;
      }
    }
  }
}
void drawGrid(float scale) {
    pushStyle();
    strokeWeight(1);
    int i;
    for (i=0; i<=width/scale; i++) {
      stroke(0, 0, 0, 20);
      line(i*scale, 0, i*scale, height);
    }
    for (i=0; i<=height/scale; i++) {
      stroke(0, 0, 0, 20);
      line(0, i*scale, width, i*scale);
    }
    popStyle();
  }
  void keyPressed() {
  if (key == 'g' || key == 'G')
    drawGrid = !drawGrid;
}