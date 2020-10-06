//NY NØDVENDIG VIDEN:
//1.) random
//2.) array's
//3.) funktioner med og uden returtype
//4.) funktioner med og uden input

//OPGAVE: lav arrays, variabler til at gemme terningkast og fordeling af terningekast
int[] terningKast = new int [50];

int counter =0;

int numberOfOnes =0;

int numberOfTwos =0;

int numberOfThrees =0;

int numberOfFours =0;

int numberOfFives =0;

int numberOfSixes =0;

void setup() {
  size(800, 800);
  clear();
  textSize(20);
  text("Tryk på 'k' for at kaste", 50, 50);
}

void draw() {
}

void keyPressed() {
  clear();
  text("Tryk på 'k' for at kaste / og 's' for at slette", 50, 50);

  if (key=='k' && counter < 49) {
    counter = counter + 1;
    int kast = lavTerningKast (1,6);
   terningKast[counter] = kast;
    text("Dit kast blev : " + kast, 50, 75);
    
 
 
  }

  if (key == 's') {
    clear();
    fjernSidsteKast();
    
  }
  
  tegnFordeling();
 udskrivKast();
 println(numberOfOnes);
}

int lavTerningKast (int min, int max){
  int nyesteKast = int (random(min, max + 1));
  
  if (nyesteKast == 1){
    numberOfOnes++;
  }
  if (nyesteKast == 2){
    numberOfTwos++;
  }
  if (nyesteKast == 3){
    numberOfThrees++;
  }
  if (nyesteKast == 4){
    numberOfFours++;
  }
  if (nyesteKast == 5){
    numberOfFives++;
  }
  if (nyesteKast == 6){
    numberOfSixes++;
  }
  
  return nyesteKast;
}

void udskrivKast(){
  
  for(int b = 0; b < counter; b++){
    if (terningKast[b] != 0);
  
      text("kast" + b + ":" + terningKast[b], 600,50 + 20*b);
   
      }
}

void tegnFordeling(){
  if(counter > 0){
    if(numberOfOnes > 0){
      rect(100,(700-(numberOfOnes*20)),40,(numberOfOnes * 20));
    }
   if(numberOfTwos > 0){
      rect(170,(700-(numberOfTwos*20)),40,(numberOfTwos * 20));
    }
    if(numberOfThrees > 0){
      rect(240,(700-(numberOfThrees*20)),40,(numberOfThrees * 20));
    }
    if(numberOfFours > 0){
      rect(310,(700-(numberOfFours*20)),40,(numberOfFours * 20));
    }
    if(numberOfFives > 0){
      rect(380,(700-(numberOfFives*20)),40,(numberOfFives * 20));
    }
    if(numberOfSixes > 0){
      rect(450,(700-(numberOfSixes*20)),40,(numberOfSixes * 20));
    }
  }
  
}

void fjernSidsteKast(){
      terningKast[counter - 1] = int (random(1,7));
      
   if (terningKast[counter - 1] == 1){
    numberOfOnes--;
  }
  if (terningKast[counter - 1] == 2){
    numberOfTwos--;
  }
  if (terningKast[counter - 1] == 3){
    numberOfThrees--;
  }
  if (terningKast[counter - 1] == 4){
    numberOfFours--;
  }
  if (terningKast[counter - 1] == 5){
    numberOfFives--;
  }
  if (terningKast[counter - 1] == 6){
    numberOfSixes--;
  }
      counter --;
    text("Sidste kast blev slettet", 50, 75);
    
}
