size(500,500);
background(255,255,255);

int xValue = 50;
int yValue = 50;

for(int i = 0; i < 10; i++){
  for(int j = 0; j < 10; j++){
  rect(xValue, yValue,15,15);
  yValue += 15;
  }
  yValue = 50;
  xValue += 15;
}
