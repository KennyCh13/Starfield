Particle[] bob = new Particle [100];
void setup()
{
  size(500, 500);
  background(255);
  for (int i = 0; i < bob.length; i++) {
    bob[i] = new Particle();
    bob[0] = new OddballParticle();
  }
}
void draw()
{
  for (int i = 0; i < bob.length; i++) {
    bob[i].show();
    bob[i].move();
    bob[0].show();
  }
}
class Particle
{
  float myX, myY, mySpeed, myAngle;
  int myColor;
  Particle() {
    myAngle = (float)(Math.random()*2*Math.PI);
    mySpeed = (float)Math.random()*10;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    myX = myY = 250;
  }
  void move() {
    myX = myX + (float)(Math.cos(myAngle)*mySpeed);
    myY = myY + (float)(Math.sin(myAngle)*mySpeed);
    if (myY > 500 || myX > 500) {
      myX = 250;
      myY = 250;
    }
  }
  void show() {
    noFill();
    stroke(myColor);
    ellipse(myX, myY, 10, 10);
  }
}

class OddballParticle extends Particle {
  int myX, myY;
  OddballParticle() {
    myX = myY = 0;
  }
  void move() {
    myX = (int)(Math.random()*10);
    myY = (int)(Math.random()*10);
  }
  void show() {
    fill(#87CEEB);
    ellipse(250+myX, 250 + myY, 125, 125);
    rect(200+myX, 235+myY, 100, 30);
    fill(0);
    text("OK", 243+myX,255+myY);
  }
}



