float seconden = 420694434;
float minuten = 0;
float uren = 0;
float dagen = 0;
float maanden = 0;
float jaren = 0;
float decennium = 0;
float eeuw = 0;
float millennium = 0;


minuten = seconden / 60;
println(minuten);

uren = minuten / 60;
println(uren);

dagen = uren / 24;
println(dagen);


maanden = dagen / 30.4375;
println(maanden);

jaren = maanden / 12;
println(jaren);

decennium = jaren / 10;
println(decennium);

eeuw = decennium  / 10;
println(eeuw);

millennium = eeuw  / 10;
println(millennium);
