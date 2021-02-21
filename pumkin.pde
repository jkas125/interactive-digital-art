float angle;


void setup() {
  size(1000, 1080);//Background size

  noStroke();
  fill(0, 15, 30);//Dot color
}

void draw() {

  background(255, 255, 255);//Basic background color
  mousePressed(); 
  {
    if (mouseButton==LEFT) {
      background(252, 198, 48);//Yellow
    } else if (mouseButton==RIGHT) {
      background(230, 0, 0);//Red
    } else if (mouseButton==CENTER) {
      background(0, 153, 0);//Green
    }
  }
  float x = width;
  float y = height;
  float dia = 1100;
  int num = 100;
  

  translate(width/2, height/2);//center point of dots
  for (float a=0; a<360; a+=45) {
    rotate(radians(a));
    pushMatrix();
    for (int i=1; i<num; i++) {
      scale(.95);
      rotate(radians(angle));
      ellipse(x, -200, 10, 10);//Small dot
      ellipse(x, 0, 40, 40);//Medium dot
      ellipse(x, 200, 100, 100);//Large dot
      ellipse(x, 400, 40, 40);//Medium dot
      ellipse(x, 600, 10, 10);//Small dot
    }
    popMatrix();
  }
  angle+=0.01;//Rotating speed
}
 
