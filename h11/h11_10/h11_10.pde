int zoekNummer = 9;
boolean gevonden = false;
int index = 0;
int positie = 0;
int[] Getallen = {324,3,4,5,6,76,75,34,876,9,45,3867,75};

void setup(){
  for(int i = 0; i < Getallen.lenght; i++){
    if(Getallen[i] ==zoekNummer){
      gevonden = true;
      index = i;
      positie = i + 1;
    }
  }
  
  if(gevonden){
    println("het getal is gevonden op index " + index + " en dit is de positie "+ positie);  
  }else{
    println("niet gevonden");
  }
