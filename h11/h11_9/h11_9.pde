int jongste = 150;
int oudste = 0;
int[] leeftijden = {10,50,6,75,68,86,12,4,9,44,32, 90};

void setup(){
  for(int i = 0; i < leeftijden.length; i++){
    if(oudste < leeftijden[i]){
      oudste = leeftijden[i];
    }
    
    if (jongste > leeftijden[i]){
      jongste = leeftijden[i];
    }
  }
  
  println("De Jongste is " + jongste);
  println("De oudste is " + oudste);
}
