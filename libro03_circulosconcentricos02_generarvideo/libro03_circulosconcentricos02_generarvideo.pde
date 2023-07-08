import processing.video.*;
import com.hamoid.*;

VideoExport videoExport;

int diam = 10;
float centX, centY;
void setup() {
  size(500, 300);
  frameRate(24);
  smooth();
  background(180);
  centX = width/2;
  centY = height/2;
  stroke(0);
  strokeWeight(1);
  noFill();
  //video=new Capture(this,500,300);
  //video.start();
  videoExport = new VideoExport(this, "hello.mp4");
  videoExport.startMovie();
}
void draw() {
  if (diam <= 400) {
    // background(180); comment out this line
    ellipse(centX, centY, diam, diam);
    diam += 10;
    //saveFrame("fotogramas/####.png"); para exportar fotogramas sueltos
    videoExport.saveFrame();
  }
}

void keyPressed(){
  if (key == 'q'){
    videoExport.endMovie();
    exit();
  }
}
