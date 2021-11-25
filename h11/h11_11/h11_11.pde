String zoekNaam = "Jacob";
Boolean gevonden = false;
String[] namen = {"Jordi", "Jeroen", "Patricia", "Cindy", "Nala", "James"};

void setup(){
  for(int i = 0; i < namen.length; i++){
    if(zoekNaam == namen[i]){
      gevonden = true;
    }
  }
  
  if (gevonden){
    println("Ja " + zoekNaam + " Is echt");
  }else{
    println("Nope " + zoekNaam + " Is nep");
  }
}
