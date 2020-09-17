int rectSize=60;
int space=10;

void setup() {
  size(450, 450);
  background(20);
  frameRate(60);
  noStroke();
  fill(87,90,40);
}
void draw(){
  clear();
  rectMode(CENTER);

  for (int x = 60; x < 400; x+=65) {
    for (int y = 60; y < 400; y+=65) {
      float s = random(49,59);
      rect(x,y,s,s);
       
    }
  }
}
