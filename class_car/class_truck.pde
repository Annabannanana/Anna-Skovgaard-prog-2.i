class truck{
color c = color(0);
float x = 0;
float y = 100;
float speed = 1;

truck(float y_in){
  y = y_in;
}

void move(float fast) {
  speed = fast;
  x = x + speed;
  if (x>width+30) {
    x = 0;
  }
   if (x == -30) {
    x = 0;
  }
  }
 void display(){
 rect(x,y,40,10);
 fill(220,20,60);
 rect(x+40,y,8,10);
 fill(139,0,0);
 rect(x+48,y,2,10);
 
   rect(x+40,y-1,5,1);
   rect(x+20,y-1,5,1);
   rect(x+1,y-1,5,1);
   rect(x+40,y+10,5,1);
   rect(x+20,y+10,5,1);
   rect(x+1,y+10,5,1);
 }
}
