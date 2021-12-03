int x, y, cy, cx, xx, xy, e;
boolean play, reset;
String[] pos;

void setup() {
  size(500, 500);
  background(255, 255, 255);
  e=0;
  play=true;

  pos = new String[9];

  for (int i=0; i<9; i++) {
    pos[i]="";
  }

  cx=600;
  cy=600;
  xx=600;
  xy=600;
}

void draw() {
  x=mouseX;
  y=mouseY;

  fill(255, 255, 255);
  noStroke();
  rect(0, 0, 500, 100);
  stroke(20);

  noFill();
  if (play) {
    line(120, 10, 170, 60);
    line(120, 60, 170, 10);
  } else {
    ellipse(150, 35, 50, 50);
  }

  //x
  line(xx, xy, 50+xx, 50+xy);
  line(xx, 50+xy, 50+xx, 0+xy);
  
  //o
  ellipse(cy, cx, 50, 50 );

  fill(0, 0, 0);
  text("Currently playing:", 20, 40);

  line(100, 300, 400, 300);
  line(100, 200, 400, 200);
  line(200, 100, 200, 400);
  line(300, 100, 300, 400);

  //mouse x y tracking voor het debuggen
  //text(x+" , "+y, 400, 40);


  if (reset) {

    fill(255, 255, 255);
    rect(150, 150, 200, 100);
    fill(0, 0, 0);
    text("Press [Spacebar] to reset", 200, 240);
  }

  //x win conditie
  if (((pos[0]+pos[1]+pos[2])+"|"+(pos[3]+pos[4]+pos[5])+"|"+(pos[6]+pos[7]+pos[8])+"|"+(pos[0]+pos[3]+pos[6])+"|"+(pos[1]+pos[4]+pos[7])+"|"+(pos[2]+pos[5]+pos[8])+"|"+(pos[0]+pos[4]+pos[8])+"|"+(pos[2]+pos[4]+pos[6])).contains("xxx")) {
    for (int i=0; i<9; i++) {
      pos[i]="x";
    }
    line(175, 175, 220, 220);
    line(175, 220, 220, 175);
    fill(0, 0, 0);
    text("has won!", 245, 203);

    reset=true;
  }
  //o win condities
  else if (((pos[0]+pos[1]+pos[2])+"|"+(pos[3]+pos[4]+pos[5])+"|"+(pos[6]+pos[7]+pos[8])+"|"+(pos[0]+pos[3]+pos[6])+"|"+(pos[1]+pos[4]+pos[7])+"|"+(pos[2]+pos[5]+pos[8])+"|"+(pos[0]+pos[4]+pos[8])+"|"+(pos[2]+pos[4]+pos[6])).contains("ooo")) {
    for (int i=0; i<9; i++) {
      pos[i]="o";
    }
    fill(255, 255, 255);
    ellipse(200, 200, 50, 50);
    fill(0, 0, 0);
    text("has won!", 245, 203);
    reset=true;
  }
  //gelijkspel
  else if (e==9) {
    fill(0, 0, 0);
    text("Draw", 220, 203);
    reset=true;
  }
}

void keyPressed() {
  if (key==' '&&reset) {
    e=0;
    cx=600;
    cy=600;
    xx=600;
    xy=600;

    background(255, 255, 255);
    for (int i=0; i<9; i++) {
      pos[i]="";
    }
    reset= false;
  }
}

void mousePressed() {
  if (x>=100 && x<200) {
    if (y>=100 && y<200) {
      if (play&&pos[0]=="") {
        xx=125;
        xy=125;
        play=false;
        pos[0]="x";
        e++;
      } else if (pos[0]=="") {
        cy=150;
        cx=150;
        play=true;
        pos[0]="o";
        e++;
      }
    } else if (y>=200 && y<300) {
      if (play&&pos[1]=="") {
        xx=125;
        xy=225;
        play=false;
        pos[1]="x";
        e++;
      } else if (pos[1]=="") {
        cy=150;
        cx=250;
        play=true;
        pos[1]="o";
        e++;
      }
    } else if (y<=400) {
      if (play&&pos[2]=="") {
        xx=125;
        xy=325;
        play=false;
        pos[2]="x";
        e++;
      } else if (pos[2]=="") {
        cy=150;
        cx=350;
        play=true;
        pos[2]="o";
        e++;
      }
    }
  } else if (x>=200 && x<300) {
    if (y>=100 && y<200) {
      if (play&&pos[3]=="") {
        xx=225;
        xy=125;
        play=false;
        pos[3]="x";
        e++;
      } else if (pos[3]=="") {
        cy=250;
        cx=150;
        play=true;
        pos[3]="o";
        e++;
      }
    } else if (y>=200 && y<300) {
      if (play&&pos[4]=="") {
        xx=225;
        xy=225;
        play=false;
        pos[4]="x";
        e++;
      } else if (pos[4]=="") {
        cy=250;
        cx=250;
        play=true;
        pos[4]="o";
        e++;
      }
    } else if (y<=400) {
      if (play&&pos[5]=="") {
        xx=225;
        xy=325;
        play=false;
        pos[5]="x";
        e++;
      } else if (pos[5]=="") {
        cy=250;
        cx=350;
        play=true;
        pos[5]="o";
        e++;
      }
    }
  } else if (x<=400) {
    if (y>=100 && y<200) {
      if (play&&pos[6]=="") {
        xx=325;
        xy=125;
        play=false;
        pos[6]="x";
        e++;
      } else if (pos[6]=="") {
        cy=350;
        cx=150;
        play=true;
        pos[6]="o";
        e++;
      }
    } else if (y>=200 && y<300) {
      if (play&&pos[7]=="") {
        xx=325;
        xy=225;
        play=false;
        pos[7]="x";
        e++;
      } else if (pos[7]=="") {
        cy=350;
        cx=250;
        play=true;
        pos[7]="o";
        e++;
      }
    } else if (y<=400) {
      if (play&&pos[8]=="") {
        xx=325;
        xy=325;
        play=false;
        pos[8]="x";
        e++;
      } else if (pos[8]=="") {
        cy=350;
        cx=350;
        play=true;
        pos[8]="o";
        e++;
      }
    }
  }
}
