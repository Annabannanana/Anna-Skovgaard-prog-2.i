class car{
color c = color(0);
float x = 70;
float y = 100;
float speed = 1;

car(float y_in){
  y = y_in;
}

void move(float fast) {
  speed = fast;
  x = x + speed;
  if (x>width) {
    x = 0;
  }
   if (x == -30) {
    x = 500;
  }
  }
 void display(){
 rect(x,y,30,10);
 rect(x+5,y,20,10);
 
 }
}
