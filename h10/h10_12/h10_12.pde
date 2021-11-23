import controlP5.*;

ControlP5 cp;

Textfield TF1;
Button knop1;

void setup(){
  size(500,500);
  
  cp = new ControlP5(this);
  
  TF1 = cp.addTextfield("TetField1").setText("type een naam").setSize(200,200).setPosition(200,200).setCaptionLabel("Chiau");
  TF1.setAutoClear(false);
  knop1 = cp.addButton("knop1").setCaptionLabel("Good day");
 
  
}

void draw(){
  background(255,255,255);
}

void Knop1(){
  println("Hoid dit is mijn naam" + TF1.getText());
  
}
