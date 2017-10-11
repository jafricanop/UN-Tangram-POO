Shape[] shapes;
Shape[] shapes1;
Nivel nivel1;
int area=0;
boolean nivel2=false;
int k;
float R1=0, R2=90, R3=-90, R4=90, R5=-90, R6=-45, R7=0;
PFont f, i, p;

void setup() {
  size(1200, 700);
  background(0);
  f = createFont("Arial", 60, true);
  i = createFont("Arial", 60, true);
  textSize(20);
  shapes = new Shape[7];
  shapes1 = new Shape[7];
  nivel1  = new Nivel();

  shapes[0] = new Rect(width/7-100, height-100, 0, -256, 0);
  shapes[1] = new Triangle(2*(width/7)-100, height-100, 0, 1, -65536, 0);
  shapes[2] = new Triangle(3*(width/7)-100, height-100, 0, 1, -16711936, 0);
  shapes[3] = new Triangle(4*(width/7)-100, height-100, 0, 0.5, -16776961, 0);
  shapes[4] = new Triangle(5*(width/7)-100, height-100, 0, 0.5, -27136, 0);
  shapes[5] = new Triangle(6*(width/7)-100, height-100, 0, 0.7, -16711681, 0);
  shapes[6] = new Quad(7*(width/7)-100, height-100, 0, -65281, 0);
}
void draw() {    
  background(0);
  
  if(nivel1.complete==false){
    area=0;
    f = createFont("Arial", 5, true);
    f = loadFont("AGaramondPro-BoldItalic-48.vlw"); 
    textFont(f);       
    fill(200);
    textSize(60);
    textAlign(CENTER);
    text("Nivel 1", width/2, 60 );
    nivel1.draw();
    for (int i=0; i<shapes.length; i++)    
      shapes[i].draw();
    shapes[0].rot=R1;  
    shapes[1].rot=R2;
    shapes[2].rot=R3;
    shapes[3].rot=R4;
    shapes[4].rot=R5;
    shapes[5].rot=R6;
    shapes[6].rot=R7;
    k=get(mouseX, mouseY);
    comprobar();
    if (area<100) {
      nivel1.complete=true;
    }
    }else{
      if(!nivel2){
      f = createFont("Arial", 5, true);
    f = loadFont("AGaramondPro-BoldItalic-48.vlw"); 
    textFont(f);       
    fill(200);
    textSize(60);
    textAlign(CENTER);
    text("Nivel 1 -- Completado", width/2, height/2 );
    
    f = createFont("Arial", 5, true);
    f = loadFont("AGaramondPro-BoldItalic-48.vlw"); 
    textFont(f);       
    fill(200);
    textSize(60);
    textAlign(CENTER);
    text("Siguiente", width/2, 600 );
  }
  if(nivel2){
    f = createFont("Arial", 5, true);
    f = loadFont("AGaramondPro-BoldItalic-48.vlw"); 
    textFont(f);       
    fill(200);
    textSize(60);
    textAlign(CENTER);
    text("Nivel 2 -- Proximamente :D", width/2, height/2 );
  }
}
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
void comprobar() {
  loadPixels();
  for (int i=0; i<(width*height); i++) {
    if (pixels[i]==color(255)) {
      area+=1;
    }
  }
  updatePixels();
}
void mouseClicked(){
  if(nivel1.complete==true){
  if ((mouseX<755&&mouseX>425)&&(mouseY<600&&mouseY>550)) {
     nivel2=true;
    }
}
}