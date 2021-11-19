import controlP5.*;

ControlP5 cp;

Textfield TF1;

void setup(){
  size(500,500);
  
  cp = new ControlP5(this);
  
  TF1 = cp.addTextfield("TetField1").setText("Boodschappen").setSize(200,200).setPosition(200,200).setCaptionLabel("Chiau");
  
}

void draw(){
  background(255,255,255);
}
