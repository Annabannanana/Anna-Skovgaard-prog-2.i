
float rectWidth = 400;
float rectHeight = 400;

float x = 150;
float y = 170;
float xSpeed = 5;
float ySpeed = 4;

void setup ()
{
  size(500,500);
  noStroke();
  frameRate(60);
  rectMode(CENTER);

}

void draw ()
{
  background(110,1,98);
    if (x>(((width-rectWidth)/2)+rectWidth)-(15/2)) {
    xSpeed *= -1;
  }

  if (y>(((height-rectHeight)/2)+rectHeight)-(15/2)) {
    ySpeed *= -1;
  }
   if (x<((width-rectWidth)/2)-(15/2)) {
    xSpeed *= -1;
  }
    if (y<((height-rectHeight)/2)-(15/2)) {
    ySpeed *= -1;
  }
 
  x += xSpeed;
  y += ySpeed;
 
   noFill();
   stroke(255);
 rect(250,250,rectWidth,rectHeight);

  if (rectWidth == 20 && rectHeight == 20){
    rectWidth = 20;
    rectHeight = 20;
  } else {
    rectWidth --;
    rectHeight --;}

  noStroke();
  fill(255);
  ellipse(x, y, 20, 20);
 
}
