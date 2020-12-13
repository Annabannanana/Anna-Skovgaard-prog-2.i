truck lastbil1;
car bil1;
car bil2;
car bil3;
car bil4;
wheel hjul1;
wheel hjul2;
wheel hjul3;
wheel hjul4;

public void settings() {
  size (500,500);
}
void setup() {
  lastbil1 = new truck(200);
  bil1 = new car(110);
  bil2 = new car(150);
  bil3 = new car(180);
  bil4 = new car(50);
  hjul1 = new wheel(110,70,5,1);
  hjul2 = new wheel(150,70,5,1);  
  hjul3 = new wheel(180,70,5,1);
  hjul4 = new wheel(50,70,5,1);
 
  
}

void draw() {
  background(255);
  fill(195,178,153);
  rect(0,0,500,250);
  fill(200);
  rect(0,125,500,5);
  
  lastbil1.move(1.5);
  fill (247,23,53);
  lastbil1.display();
  
  bil1.move(3);
  fill(255,159,28);
  bil1.display();
  
  bil2.move(1);
  fill(17,29,74);
  bil2.display();
  
  bil3.move(4);
  fill(122,92,88);
  bil3.display();
  
  bil4.move(2.5);
  fill(100,245,141);
  bil4.display();
  
  hjul1.moveWheel(3);
  hjul1.showWheels();
  
  hjul2.moveWheel(1);
  hjul2.showWheels();
  
  hjul3.moveWheel(4);
  hjul3.showWheels();
  
  hjul4.moveWheel(2.5);
  hjul4.showWheels();
  
  
}
