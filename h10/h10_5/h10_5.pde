import controlP5.*;

ControlP5 cp;

Button knop1;

void setup(){
  size(400,400);
  
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("Knop 1")
                  .setPosition(200,200)
                  .setSize(200,200)
                  .setCaptionLabel("hey");
}

void draw(){
background(255,255,255);
}

void Knop1(){
  println("dit werkt");
  background(0,0,0);
}
