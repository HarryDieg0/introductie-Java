void setup(){
  size(500,500);
  
}

void draw(){
  background(0,0,0);
  stroke (255,255,255);
  vierkant(25,25,250,250);
}

void vierkant( int x, int y, int w, int h){
  
  //upper line
 line(x,y,x+w,y);
 //bottom line
 line(x,y+h,x+w,y+h);
 //left line
 line(x,y,x,y+h);
 //right line
 line(x+w,y,x+w,y+h);
}
